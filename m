Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B25118FDDB
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760829594; cv=none; b=EbBkHs1oMKMEtL72opvGJiDztPhZRkb/oyPE9dDV+jtucnQj6WCMcPyIQwkVBzYFbFhQxAt4f6hN12fmisskCrOsvNwrA1AqusTL7ax/RMXAsXa3vbfGvPF/45/uvlposAP8MVq/PBPWllFi1N53O4NGNQJExzKwUfs8CvDoGcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760829594; c=relaxed/simple;
	bh=pfqDkErlpUSiFyViTYADP9/SNmVp1pVnBt763IxMP+Y=;
	h=To:Subject:From:Message-Id:Date; b=CQ4p1n1LLfV1yxegXL2Ot9q6JMnoz9bA4TczU3blsGtI0dqafiNloV3HRnAyeUXM2gdv1rxNLP9oLdfdJZaLTkFGDv8jCxweG8SERx7eEPPy67f/FguRS8rCCIyvdKhBQ813dLrckWtEqkc88/UA27ebaKlMbQbun6QT9McJUAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gm3d3O3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gm3d3O3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29DFC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760829593;
	bh=pfqDkErlpUSiFyViTYADP9/SNmVp1pVnBt763IxMP+Y=;
	h=To:Subject:From:Date:From;
	b=gm3d3O3AC6abNR7XraRkmvFKBLhLEhu+kRi8FsdpCSmgEDEqswwRBTnCm/excfnvQ
	 VQHYqMhahzEgmgu34wE3mHp+xwLHwYbIvHn9fAuB7QIDUYl06QXrzfIGXSNJV4MG/k
	 49/B3cPlviqwDkPrasqLeewXufXwuLTi/hOiDXJvqewU5lZujbykPhorSmLalzCBp5
	 Ne/oLrOBTAfs9+JStZG9tYzDWTH6AOpnGl2wbeoXZ/96Avwho2KAIAxWvJ/PWEWhCn
	 etF4ck4Fievwm/ceNd26Djo0sDbZn2O+KXB+44VALFTQXJ7y2PKtmUTPwzIDtJpEYT
	 f9wNi6pN1qWrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ECACCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082959358.21867.9601985813478502156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a4f70a32ed094648369bb9ac2b91e8eea6106aca30104f200559dc3ad925a4
Date: Sat, 18 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760829593
