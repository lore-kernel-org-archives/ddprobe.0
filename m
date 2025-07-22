Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4BB5234
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753208994; cv=none; b=cj7poA0gEwsKtpEfS1BsVn4j8Rtixcto12H5BqcEAdkLo5qOlqoUIZRZp13uFqsONIlnkGtXhDA3Rlc2fJsdOytD/O/S8SVJ2wAp3bVCLINiLKjS8jh14TNNBAVi3Kp4qnYLPIYvvGMz+YUkV93BtpMVzpFTDl1D6fLkhLZ6ETA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753208994; c=relaxed/simple;
	bh=K22gAC4Mud7u+EyRln+Vz6xchulLd22zflhd0kfUzR8=;
	h=To:Subject:From:Message-Id:Date; b=Z6MsClSHl65fIqvIIBMD++dG2r+9b15t1eyPbaGmBiXE13gW9XlPAchMdGhNYwOu8IVM87Gb+qTSMKUYzUEqwE5SMeBEk5jc3exkkA44aJzHwpbrl83BxLVQYkvoDlcwCVxsUNX0oxmmu4tvPWhlk5T0zYQxFqAT5SjcDdsyehA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+JnDuAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+JnDuAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C18C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753208993;
	bh=K22gAC4Mud7u+EyRln+Vz6xchulLd22zflhd0kfUzR8=;
	h=To:Subject:From:Date:From;
	b=b+JnDuADad7Jb8oAon7DH+po9GnblzHrssBp2CRAnd2HJPb2NJAS88L89PCq/6yD2
	 F/IpIHd9fSXwM2SE+ETLfvlEnS8UGUA8O0X87vc7Zm8bXFZfCuF9vY0J395k9Y+NQ1
	 dwCawUP4NNvxuwzcIpy37AI4VYrn4QxZkpaaeLNutFwYLcZDoLwXS980y79OaAC8Cu
	 JBpoV4R42KbcjLLPfFqGquKe7Qv+CAdRUUzDBKZVsCsrsXw6fVZxl4Jn+vTJUI5vmv
	 XTkZt60j2rtctB2UPtsrrNkWGPn89DfDKK5kMmoUCd/Ky8gByzBSbdt94a3yb2KfDB
	 eqjYBmPpzQjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B0C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320899358.1251.1671663990815139494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff372e76c6ea49cbbf6075f5e954089ab88bd0d71153fc79a0a99a60b79897f6
Date: Tue, 22 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753208993
