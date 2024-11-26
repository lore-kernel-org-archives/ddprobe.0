Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163D71BD9DF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732642554; cv=none; b=XHsGJu19k1cw4fMiq6RRIcILqIqa6JeCkqEVcngwkul1UGmUzaAYlcSBKagZqEEQsHk+sFl3/N6bZxrWYFDScnLdK/fo2QcVOqP8cEPLIaZGSTHjNscduc/p0apdrct5Wjl2+EOaLfx4/+UZQF2HcNh5lABxMBHXljRnpevCp0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732642554; c=relaxed/simple;
	bh=b/owowy70Cr3ISGGav8w2YADvCVWAobgXoEJwHrWWYk=;
	h=To:Subject:From:Message-Id:Date; b=eHfhrVGYbrIBH8N0vdPpGyRzUjcDEA3aZoDHUA8IdmkhKWvuw3+sXZjIyUJsskwf+Rkx6mIhaYvLio8WHFfSlRh3ZBgjoMbL264DE6xhR6JEYFlvHLmEwG7q7IMlk/FP9Vjg28Sa9ivmXRoooh5oskxk4RJkeRfHsqfcNFthXF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdvMn5Px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdvMn5Px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A948AC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732642553;
	bh=b/owowy70Cr3ISGGav8w2YADvCVWAobgXoEJwHrWWYk=;
	h=To:Subject:From:Date:From;
	b=AdvMn5Pxii+iXdtn95LT7TF9SXFM6dj07h+tBVdpKfAW30nBqcedTLDZ2PdE5tyDS
	 OBzWDJDOhypyjB2g0KKkx96UWchKfu1TX1S5moPh6ChhkL2Lhp2itOGv3AFyEn35fH
	 +K23OnksZjVbwr8F+pQ5E4+L3lTtPw9k8S0hVn9T6qNQVToTPyhHz33b/wd6akqSMC
	 qiX2a+Byj32cSR5EKQlip9ANhCUrESBnl1CizceQqqdJrvij+DtpkFNgfSoiMY0Yx6
	 kmzWMYw64J51LTNhDAFYMKkXSscZ5K3tLFEw0YuD85cjyV5btM5PiEZRDemVUoGP0z
	 jMMJqOYBGVqzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96390D65531
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264255360.8135.7758566462058033443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e28f45dc8df68c2cae9b93457f10dd5352c7ba16a07e77fb8567e364ff4f86
Date: Tue, 26 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732642553
