Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA6A5CDF1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754440193; cv=none; b=XCDrdMxbo6F4xwCKH/EwvoH7RTzsKFzJkU0+ONJcFnFmWhoF0KuI6vAkJtCcx2sMBAS7Yyk/8JaPDk9Zxkdf6VYJjY37sDuQWtdokLgnIW+nDOmbtmi1RkWoB92Wjk34XLgDPBgOz91B6gv/ciKkJu23b+hBE+eWqgEp1XwjoGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754440193; c=relaxed/simple;
	bh=vJa/duUUrsaCLFHhHk2K0ClD6Bvj2WFIIWlAsgCvZ7o=;
	h=To:Subject:From:Message-Id:Date; b=a6XGSpGD/VGllZosVp1jCUVnpjanjYRvw/aladtTAD5GieHimES78Zj11CapoBd/iNdTft2/EJYukzUOBkJ8KsG2OJ8vZuSQ5e/IP0qHX2lp5h+OiKus2iaYjbLQOlQuU+4OcnoIa7Od2vDX1IkLVIbUJegn4j7gvvu8LU+uz8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lzx4gVqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lzx4gVqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40D9C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754440193;
	bh=vJa/duUUrsaCLFHhHk2K0ClD6Bvj2WFIIWlAsgCvZ7o=;
	h=To:Subject:From:Date:From;
	b=Lzx4gVqsGiL9HwzcovDSzLHcVrnLdLGGZqryms71/oR6bpioysmj277tXR1KtZIIM
	 dOFqlAzMDKOmumKAycdjqza5EHGDD+q+W3DQTnLhzqYHRQ/9poNbZETDGy/6Fy4UFt
	 lDzItWtTnJ2D25k7CQzgJERFgb+8APaIY2BUaV4RWKsqLaGLMuQUCUrF/C7K+kFkuT
	 1y2367/V/SU063VMNaEd/64GUW5uwkK/GBZ9RlLFT7SwvmuYItxQ4w3YM/vDz0VGU6
	 RDzIWAMBVFUHgfgDNVAODthwWfiHIvKjLIlMdVZ3bzR36mlv7ztU4usKrw82sHblqK
	 TPCNs141llAkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A51C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444019357.32489.4508012247081697241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf1169438f90483dc6454f94bfedd998a2e41969a0e79f42f62c3a96f4768c1
Date: Wed, 06 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754440193
