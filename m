Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D89DF76
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784156314; cv=none; b=FB8O3KWryjQvUVajcZh8ApQjU/0AJU5rcXdKGhBgjX4y9LrbAw83KSyd9ZySg/e5hpFkycz80fdn7mNXJT4lvD521HFn7rrF/siwuEap+8RFcDWxYVlfg6SfI39xhUB8LlO/8yELwAlD6wZSY9M1A/Oo/MlsmKdn/qB+kp8Avhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784156314; c=relaxed/simple;
	bh=SHJnGhtHkGxVPtfc/d6B09TJCQTQvUlfTkMkEViZSwo=;
	h=To:Subject:From:Message-Id:Date; b=uT1d2KJmcKa4XN97ykgkmr2pc4CiZl9fKFyaDZEmweRhwN8tLVx4ONogGUpOd+a+R2HEG9yL74ItykcCCteZkCw1ipzq0l72wDSwvypLBtJMRQ951MNwVUqZlN2wZ9n9QCZeh1czAR/Hf/dCXiSAqlaUTSHZYj+QDeswkI9b49A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6DDGKV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6DDGKV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33EDC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784156313;
	bh=SHJnGhtHkGxVPtfc/d6B09TJCQTQvUlfTkMkEViZSwo=;
	h=To:Subject:From:Date:From;
	b=k6DDGKV6oeO03/PTuoFzI0KUachN7kN2Wl0M+D/VhsrSdaQhfNsb/cAcp/y0R0/YO
	 8nI/rRXQTFP3t73/Sd9Kj5G4k2wrKo3tBEL56jzt+PCN+OV4K3HJf98VYJ1GEbtiao
	 ntiyiLGlJkUhJ2GSnNI1LCRgikwt6KcUNg8BzVX6XYG7j4rq97naNCRtkDUpvwtPcU
	 oRq9xk/TW/UDafQpbcqj7EQLg5h5jK6Hp9WNiKklCSXL5g/AEc2a5+YlEUF9p0DWHj
	 dBdBf+5eGJIRDV7mwGpNLH3E8KkOEigHWwQNdDEwsbToHQLZmauIa1NplmGfNw1BST
	 8gW0VDBQNV0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B0BC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415631368.18171.7491148311614003143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939fb8019a43649c987a2dc92b6e91554cb9808cce36526f3e53108fab4a1cad
Date: Wed, 15 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784156313
