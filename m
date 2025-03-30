Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9348F6B
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743296994; cv=none; b=URLli4OiqX1BPqkikyH2ss2FDvsfiJ/fDFycTVYx54plWgbE1yLWLcg7WNKGCiYWa6fMsxn2jkF4uiDI+2CCqnkVwRjZFWRUZphIerLfILN26IkSLVU8MIKiPg7ju8RqQmpNBN7An93JfoYtKnjtE5xaX1LzbiPUWnhHDlEP9h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743296994; c=relaxed/simple;
	bh=RiOnGXnkWTppJzLoBx59er/Jd6iiIPhi+OYTz/alN68=;
	h=To:Subject:From:Message-Id:Date; b=P8MY3iw93IK7AZHKbpT1443yJZGGSQlKcR4VTC6badWaAQpQWUVHeT/Nt2nIJaCXMZ5ThHgMa/VtVuXcTIZ6aTIy02hpfqa1iehOhszmJ6ZHu3inbo8xfPdjMoUHbfIrZ5JV5Wb0jG9iZ6wjlbV2KF/cC8Yy84AjXKRMdbBSgBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqXgShkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqXgShkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B325DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743296993;
	bh=RiOnGXnkWTppJzLoBx59er/Jd6iiIPhi+OYTz/alN68=;
	h=To:Subject:From:Date:From;
	b=lqXgShkJIDHHtth8rAFq7TqH7wlZfleE/F02c/flGyhRIl9efHMG2VUB7bv/OsKV2
	 1k9iU3omWZKHHyGAk2idNR/7PEkxPmvRlXx5Emdgk/hVkx1D2uF0F2emK4p/VCl9lr
	 VpXNp1j+8PF0jZvlQrVRPYo6kDvXukrXnaisuAeaoHLrVmqZUp81mkxOWtnulyGMYy
	 TQTs0fAsJFoca3GFDe/infiC/AdQePad9SOrCkX91bo/Hv0E2uTswOaRIW7F1PBVZy
	 YThx/J++qOMfpb5LU5KGjEL67ZXHooFWKLPCMtZGEPXklJSMxEwuy3ejPskkSBz3ea
	 ynFpkEhNmw/QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA81C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329699359.18026.15283251478745383362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dbf07c308793fe589641d12e37929ce46c6b3e58b2d84d4580d8e2c769027ca
Date: Sun, 30 Mar 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743296993
