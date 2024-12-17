Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF7314E2DA
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734417954; cv=none; b=hVo8kdJenrk2jO2BrxII2eYhPo2b16Iw1psg1Ns68JBCYLfWIkCur+hhnicPd/zjsKSUq36vDj5zTM8tUgzY6dRJHKq0Fqd34RbShMlqR24MJIx8Rwk9qW21fOLf+lOE/Llt+KhzudcArw7B18USmAKXEcLeFnPLif9EiqGnt6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734417954; c=relaxed/simple;
	bh=0LEp2RHUTyiTACRDqal+X9bl+lcEy68+zhN2tbb7fZM=;
	h=To:Subject:From:Message-Id:Date; b=J778gXbmmRgvgl8aqQf5IbtT1pyxjiGxQf1qtjkup6CHmC/MoZFSrWg6VK00DAPVmvFxV63BstyueaW7VjpSUrMsAJLda9YqbSPQo9375m0wvqrqo4as0tQkrJEvL+jy2UHWxJ104IZ4lzzGJuooBSq1bOT7+55D9bfmPuOQhj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dslz6kjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dslz6kjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA2C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734417953;
	bh=0LEp2RHUTyiTACRDqal+X9bl+lcEy68+zhN2tbb7fZM=;
	h=To:Subject:From:Date:From;
	b=dslz6kjA9yNDpKkbvKoqfp3BeFTb466DHjeFvxcAvzLTi1ur5Dl2saE+1OZmwqP9q
	 lXHEvX2AZk2KBk238en3t4btKA4jrGzZT5XXhBUZSd/i1OjRzoJjTsPfLprH4UrzJG
	 vVKZ1LfI0RwesgnjbYH5xX57eHpdbcsw7SskVS9YvLunzeGc6c6VozB+z06PEMCzhk
	 n+/DJxaannN2J9WZp/pz22+p16B1SJ3RatvXu0l+GeUS6JNB1KozgmZaGRHT9NgA+m
	 rEzFIzcL1fB9ynnPO7mAk2LXGTwbgPdyWC5RS4W/heNMnVxU4/A6codAvBoVw6U1tn
	 iCav2EkCCUMdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946A4E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441795359.17751.4329682726207952847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871cb5a8608b83e51e9d2490dc9d656851fee529b14e851c1f0c43867124e65b
Date: Tue, 17 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734417953
