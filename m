Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C61340F727
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784732314; cv=none; b=KsPjP/OPIn7eYfCBApH1FqUDiJ5K5K7jgXnmi8IkLY7RWdnhqnVPKw+C0DFcESTZTjc+jDPCDTDs3Lsb5C8TfDB3JjLmsCvcOk4jklbsXeAseXKfyPUrpRcaF4cbh26BiE96F6mtRLshVllc9z6S3m5ijI9dsKSiHFvsZo7z/0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784732314; c=relaxed/simple;
	bh=F9hFb6a33f65gFAr0IR87cqRqGTFLazPg5RW7dmeuGk=;
	h=To:Subject:From:Message-Id:Date; b=Nh+RnHULHj8bm3L4Ldu44YLvjCDSBTDmbJ/3fqsScZNLiyPLTvl3cpa7BjVTkq198Thc2C7/zWfT/Rcy9n4zQK/VIUhd4M2gn+R5QVuKmp6Np7yMVkTMfeGXK+ejiP03E4WlYUJadqae5r1QjULHrONOx0MLVUOgZlGgrjLnc4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiYe7wZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiYe7wZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A59C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784732313;
	bh=F9hFb6a33f65gFAr0IR87cqRqGTFLazPg5RW7dmeuGk=;
	h=To:Subject:From:Date:From;
	b=LiYe7wZSvQacCFUc4MPzNgjbLAdCRuhWTtHY2T0Sg6OHNeOhmILzh9YbAj1n2cJcJ
	 atsh9Q8GosBO3ucIO9xkQ/IQfWCQQYhWCwAHoMa1fXS1lE51gqz5O2K/CUzoBJBuYm
	 eXwKM2U6oYhlHQcBxb2zAxU/sDGpDE20ZKS73pbSIuilyQucyXVH5/Gl3JiilkfQz3
	 QxtwTa8lFUqXXfjr++VQIfbjRaRLkgI9lhoobUf4q4fyvpew5M5yWPNwPfNqaUve2X
	 xr3ONQmGCmGX4qj7ttTR84w/MjPQMh+V4BGCJoU+26O0I9Ja15ob8I4qlYAQtNecG9
	 MNcXG4Th6fpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB63BC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473231375.11774.818413217947528449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8dccb85ad7b72278c22015e4dde7bbc08407b9f15d5e8945c4a16233f5d570
Date: Wed, 22 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784732313
