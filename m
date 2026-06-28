Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC301A6824
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782659314; cv=none; b=jR2mXdpcYPszGPcr19TW03TVHEtTsRNiyc6cwyPBmH3XEmVFVylOq+hQs5ZJ1SYIQw2ao9ZIPhvodONeGUxQolCRbeqCrAPlKO7p/vY4TOixieghI9FSxx1xYqxa8h/S3ltrmpi2OlfkbnrWPTiSytddfUKdedSSfmNMFGO0KgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782659314; c=relaxed/simple;
	bh=NEFZdehm4Ggi9SieyQWmBIWHtTsTMMsUqDwDl52VsNY=;
	h=To:Subject:From:Message-Id:Date; b=ITIQSjzPmRHAu29AngadeDnaycuBAMhIP9/DB6sc6CxYNvsKtGXH3u1DABZyARrjIKYT42O9kdHWWvpWROacDDmkctL9zqxusP7eTBfue8ZFQjhsOcm2a2P4j9G1L9z6Za3WySlB/NLoaeq2/weGPvgFszu3v1YulxlTOYEJLTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pusXH7i8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pusXH7i8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9B3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782659313;
	bh=NEFZdehm4Ggi9SieyQWmBIWHtTsTMMsUqDwDl52VsNY=;
	h=To:Subject:From:Date:From;
	b=pusXH7i8oxq2gQnZVaKiC7c+rY5kfS7/T2AfIGGsX3eqi8z+JZ3bpm+tndWZvqqxR
	 ZSfKFRCQdUEcBymxquSLgfJufxvWl1b4Fe5zFQKYXD+h4zDFO6sAwPPtj4aQzq3Zyk
	 9Gvx5CRkCJEudFlS4gzBDzbe7QukWAF4hi/yDFLcp+VRsrUEEyBzmpmiXqzaRqfOEk
	 gayVY88NVh88Iyf5R0bPJ/ypP0w1G+3Rx8O+fKGWkrsuqsvpzl42QU0b4G2l+tCMpZ
	 y3U4ThUm2UYyGwWfh0ZeMZOs/Ait8OXiHgC/msfWJvyXL7iUf6C2bwAHMbQek0YlT8
	 gZiuY9Vf5bf3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8B2C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265931368.12854.7750157073385636116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d503d187f5b7fd2e42c9b5ded7f6b6613361874c04d819cb2e2a8ac48c517c5
Date: Sun, 28 Jun 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782659313
