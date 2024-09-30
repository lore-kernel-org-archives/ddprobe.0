Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB54194C95
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727710554; cv=none; b=p8dyoFsP0Yfu8ICdN7k+L791pObDKWmTLPDfPTGyjPwXMBLCuqZJyGXr7g4Qc16mUqy93pr4AitO7Ugqf6HjUnYLkQi383bJ/7UCmTjs3dspWfOZIy+F8iHrufbZw59FcNqh2tJzW8XUQxSuHM7QZn/IsbXEZZ/XRYaMfWTMie4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727710554; c=relaxed/simple;
	bh=nA6nKJL8JCMMSWbdoVmwkuxiHBB74nk41JeslKZAtI4=;
	h=To:Subject:From:Message-Id:Date; b=bsfpMh9a/SKwY64n/VmiZzdWlHjQO1xLA/KuAx6XdP1z8yddJi6wUR/LrvtBhxU6ixiMtO0HPn7ksJWrgqem+HRoPtw3UfcLChhlUu4L+OC+KBeqDWXgDxV07Bs84lPyXqS0ThIxYVLeizOJkffDKaT3t37UU4hCsDPJqOYKfQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FExjiX4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FExjiX4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA82FC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727710553;
	bh=nA6nKJL8JCMMSWbdoVmwkuxiHBB74nk41JeslKZAtI4=;
	h=To:Subject:From:Date:From;
	b=FExjiX4Xize+uV0RrbwQVHVZCZV164Px6j49K0vmMBPE5fGNWUDcAWoYBIOtsYJiR
	 Mr2E1k44YDG41NkUZ0kylMYEeAdYG3b7JLpUPl4LGVZbqdX6mn9E1/mlt+7IleZxap
	 TdwzecKFx3pVHfnPbXwbmd+ygBLPkHMoS8UW+9eUL2MRHj+OHGDafgwDAbYm5R6Ksi
	 tiyp3NXqvcbmL1gExa9BJtbj0Jbi4PlgDi1GvP+BqC8VNgGNVQvLKgeQTRpYpc+oqi
	 /DxAnqNKlzilp5rXuomCI3znhfnX2WIhZnnW3gSKBZfSukVUYkRZjYyiwciYSD9/Pv
	 Dl2nroxm7ewvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BD3CE835C
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172771055365.8187.11930461811896265576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e447bc2fddab7f28859cfd85595625a86285977a1118a2c0bf4c76cef9a79df9
Date: Mon, 30 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727710553
