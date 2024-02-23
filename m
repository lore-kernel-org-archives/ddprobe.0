Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A662C2FE
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708654697; cv=none; b=LG072C8zF+Q8eikISfrVMjuWOkms0aROIN/Z+WhOyT5f+QkCfXpd3f3WLeefVHVMO335BdsIo3UczWIpcaO7nB+jPehjMw4OH1TjQjWlZpCEJ6SECIv8Zp18diwasFhP2uwhH+wp94XB1muQgdwbG+pLm2Rx7cTOD7h5J1pQQws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708654697; c=relaxed/simple;
	bh=Vz6GB6JARsIdKyT333VXmmaSfS1zFQvxUY21FqHohNA=;
	h=To:Subject:From:Message-Id:Date; b=qARJGBzRuu+4c5zB0MvOhh69I9izizepFLHth5GXQ5nEZ52LgNyYCeXfU3mG+pDuNWnQGSfO9YplKOJaEqZxCFoI7skWdZ3GDKL4W7wn5Kdc6fbNPyJsZfK0UdM913FV2Qcjsxry7/cGK3RTiaknH/32Gg706CpToDUSW9fAwh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyvDudsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyvDudsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89DE7C433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708654696;
	bh=Vz6GB6JARsIdKyT333VXmmaSfS1zFQvxUY21FqHohNA=;
	h=To:Subject:From:Date:From;
	b=EyvDudswqK1Xm0IGw+jRLHR0L+z3/xRIeEKOu/QVs6Hyd5Sywef2I1l25ISaPowBF
	 JwxZwF6H9NXu14Vp8p3HSH6H710JtcqXS3D6LG3hyk6KYi9L72wNn6iFoRORhBO+Bx
	 4QtkICRnT8IOcCIrmEReWr2eNSJqhvgZH4qO1YfEeclAISEF+57vd4AiePfgVkXXAr
	 xzReqRtC3hzpWzf+xC3W8ZdC/WRTY7sv4l87T+n/7nGwWyTiT2014T5os9rYtkL8Mc
	 AmmYdEyXhxwWJsQQkOVeZdDMye2BdTjt+02QwVBCHNfol7LUtG/7wS/V84LIv44F1c
	 S/8jTwk6hl4Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65763C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170865469640.17737.14837941145021321655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9863a22b692f1fb59695275b57029e477cdafa470dedbc76e5080fd790f209
Date: Fri, 23 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708654696
