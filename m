Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA712857EE
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778356654; cv=none; b=m2zkeh9L5SogXkKyCpO0puBSMLoAPNf+vnU3RgWEATnv3fUiE13Vg/7hkCC0vVrj64GgWjBnyTN7RfosyrgIcI19LrY4cuDJDwI0yF2PPEZAri97JWRWln6bjEhp/y7RgyjYS0HNQcNqhcBx0Y6yfotp52HFgZ5JdpWd6acizvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778356654; c=relaxed/simple;
	bh=bExE61Pt195IDCXGfIgO2RkPc0iXYx/tGN2rAN4AAcw=;
	h=To:Subject:From:Message-Id:Date; b=AP0BTVUqnN0nI+J10LaZh+jVSVv6+VeI8/N0LN5ty4uFRckNQnE6kJj+ey2HB4PJV58X2pzqrmHlEIsVj87Lnat98C/ivuOVm0ieCV9brEf1RV8Vbvd57RBTTHgjRVIg80yu/fTBXOgqGOIFlsTnK0SbG6Z4U1tDMKZqsoKmfOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMUjApsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMUjApsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31113C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778356654;
	bh=bExE61Pt195IDCXGfIgO2RkPc0iXYx/tGN2rAN4AAcw=;
	h=To:Subject:From:Date:From;
	b=SMUjApsFJhp/L9ptoAAKzfaoVkTz848Ez8hQZxcH8bXrEb0s6kaSMy54BApE/gtQ1
	 Q+oX7/L/U5C+MhVCqs8k//QlyYMLsOxnDdHuk/lizCfJ3iV2M3KZCMZ2dMMtdMSlsv
	 nK3bo9o2WEtbRWz9whBMvA0LMOBr4bX0xuFl57xM+0DjN7FhIadnmEijdeZ8o4Ca11
	 Q15Sbq9VUpf8egX8MqrNtlNDAW0FrN+j5ESWkJkpmEg4s/xUYRu6S29nPWV+6JfTjS
	 Ta+pYQc7CG/gkWL1q7zzPkmqv2kuJIDK7W3BUn+9q0VDzlekXv0J+zJ6PQROYD6ZOK
	 s68S/HHW3XpDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9023CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835665389.22553.14692467887943580786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6441802fa60e61c1fdab67a568c8f4640968964b5fa008a719e8dd4062b9ef
Date: Sat, 09 May 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778356653
