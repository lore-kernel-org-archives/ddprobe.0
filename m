Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8492609C5
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760522394; cv=none; b=NYrEbMW0xiMKGKsag7SX7SztaGT6pdv9ia9i5WxiiUligfWZxdySOzeCtTwlqjrblHuoUBnw9I6yRiC63jeqeSQCv+hDyzhw/oxh19WztEEdcsWvmV+qKU5j28Eh3PSTfqyab6l2gMVEVmBxmEgK/zbuCNRs2vYlbFFBQkn0rqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760522394; c=relaxed/simple;
	bh=RYaomF1KEyhn/TNZJTphGXOGrF7nqdAHLi1axFpuSLo=;
	h=To:Subject:From:Message-Id:Date; b=sjHGc2/Bw8/uG+EkD2f+d7pUaQXwghl8jzTHdJkgcemoGenQVEruFUvVCivny5gUa78AsVO/8dZ4rtHXXfEqQiqbxPUnOm5TxiljAFAWLfOs+KBZBSKRr2UQf1JTb8keQyZjm5T9D4NA7oz0VvoF07NMErolgn1dGFi0eOs2Kjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbrU0z5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbrU0z5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F543C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760522393;
	bh=RYaomF1KEyhn/TNZJTphGXOGrF7nqdAHLi1axFpuSLo=;
	h=To:Subject:From:Date:From;
	b=nbrU0z5diJapjF438Y73K95H5ZYpVE8569r/tKJO9bYr25QKQ8jeq7JmspbZMlRs/
	 EdBg1fJs1s3kkgeuEhP4L0t+FCpUP2uRsaEWl0470kGXekAkFIPHFj7yhwQuiqNznB
	 4nHtgaE0NRONC1m3RQV91PpcI+j9NRQHQ+hwRFHfezgXR6zTb+InTKZ1ISQW4r6WzH
	 J2l9cR7NemlX3zlRYhSJYAn2+1t8q3f4BhSL7yZJHhPk6e4/trISEB70+hEEkZgzge
	 lBcQjO/0AW1Dj1AjSvDInyDOSIPqmKIZoDwXzP9RCLc+02z7uY5xv4fmzJ/ir5LrhM
	 Hf87Buuv38dqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF13CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052239357.32315.12621315502242881156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0c778dc67f08cfcd102ba66adbbe2ebb4a3185052663b6a64727178f108965
Date: Wed, 15 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760522393
