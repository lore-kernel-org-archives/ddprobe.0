Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5206E622
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 00:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715040743; cv=none; b=hmiIXm4yCxLZQ76Sk0o+Maxt/3OskAfdk9X2wQSci8CGXOY7qptwjuqNndthrFsf3PGc6kEZZDYKq+cztVv72qwnBPyOlm6kI83Fiz5qSto4HnpGXRzfB2Qm+HkDJmdtHGYzswfjG/CxmWSM4oOl+Xs2bbdbmF6zQ/DwOxs27As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715040743; c=relaxed/simple;
	bh=QUQhG5rmxCdiRdkggP0Nh1flJbCDKYvuQz/wMvBdqYo=;
	h=To:Subject:From:Message-Id:Date; b=VSv6YocdunkxekQA/n/zIV8G1/KHFXL7mNvj7/2ShFYsYAM3b71TI4PdngfogRkYvqHL0INQsmnvoxmKf/MgDlg3QXyIMLIkrNtm/o3P1Z9UJLRUEzQAgzPVTLJ5lDCQYqhwrra0UYugjmZqMuzUzpcH+aa8VfBJFwm2qZWLg0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDE/R0QW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDE/R0QW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D365AC116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715040742;
	bh=QUQhG5rmxCdiRdkggP0Nh1flJbCDKYvuQz/wMvBdqYo=;
	h=To:Subject:From:Date:From;
	b=IDE/R0QWJ8nW1QI92F7QomDzHrw39eVsmi7GmQKuJwi2bjTAC3qZel7tj4z1QkVCw
	 nj+WwjqQiVsZNx9S8UMMcK0Np3R9DZfmzhkilJbZHTxClVMjan/AkTtaIRIVuXx2x4
	 BzGsgWxQ+G+f+nV9cwcL4pvZfbQg88SjfaplFet/P+91srSo6P4P1jMM0czbBS2RHn
	 OgutzFlxsazgleaR2ejhms8ns/4m4OjfgGusjlIGJAbkBLumz3QBpj9kkkEpvx1Q+g
	 hmVLCMHhI9lGVUeBODBIoy/fjB9QlM3LitkQ1nuoS0bEIDTJlls3swTY3e4Ax+qR0Y
	 qTCNN+4jc9L7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2C8C25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504074276.28907.9490553311797275384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928b62df67a5d9a66e23d409a4bea5e29e6088ee63d33ea3f288e7ceb387aeba
Date: Tue, 07 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715040742
