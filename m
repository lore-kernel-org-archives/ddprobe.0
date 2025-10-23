Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27522184
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761259794; cv=none; b=HdLp0lBqzPLyY/udQ2rCjTXOq9zZUJXVFdSDtkIP2rJOmmtOLZUVZCrGkS0YWCVTSgjmnTSarTcu4Ko+afyOolAl4BoyqPB8H4k+Wi2MmbePogMK/Rpnw9Y25Q4q3Fw8qXtTblWheab0Iz3a0unrH9B3LrNUEk4IOuTjRRICsaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761259794; c=relaxed/simple;
	bh=M0oxpkV+89o4JupnZasYJEfuLtgCxk5CfnD73fyXSzg=;
	h=To:Subject:From:Message-Id:Date; b=lS7qAP9kPwCXYvpu6DZ74aGr9AOP6jspFxFpbDMetPAUu6+qNLF3Fm4lqKEdRDWwjUtA1z6MVyGpleDVlzQUge0ButTsJUbeF19YhtapNdbi8EootebTa4dZCCawyYoWy9V2NsX81LvtoSSPZxbxewXU6nxeD95IRfOkOxrLM9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6KbP0Nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6KbP0Nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4912C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761259793;
	bh=M0oxpkV+89o4JupnZasYJEfuLtgCxk5CfnD73fyXSzg=;
	h=To:Subject:From:Date:From;
	b=K6KbP0NmHNQsGSQXxBSfz5wpErTWD68t5IgAJHozGEzLYT71AycpUrQk9hjmpudMG
	 liQfjWm1UwBmBUf5fjfxHdhv5qfQemv4HGTQ9uOdd22RjEvStdiQ/eNHtWnHoOt+bu
	 +i66ylphyvbmHi6x9sPHP+WXV3wtcNoO+oY+iiEPbwQMDHzm6suoyk0xzXd74PF7SC
	 RDSpywfIqlxCm0a5+epJLhBleK+5qiA1CJv+fyiyBRVso8KY3LLgMPMGoQElb05MW1
	 R8FeLjo2aWdSNjYuW10Qpr5zTgLwmbnBWSg7zkYYGWLbgo+EG8Eqi1GlI/zN0Tq5v6
	 mi1p7Q62PW34w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094ECCD1BF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125979358.11129.3873772982224638331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67edde58231706a9c177c9a0851973b7995c3b3d9f711584ecc1914906aaac80
Date: Thu, 23 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761259793
