Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F121C5D59
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778332054; cv=none; b=oi38jxUysOJv1TabcC3MjWj2ipYhns6G0YFgPWO9s/jNcqCi5YF1aQM0EkXykJRGENaj2TrnzVkAU168QWlbJHigigkAyEW2NziH4cFF0pfLMyafybybiPYdOm+Ux+X5fMQA9aQ47C9FiWX9TLZtq7PS9OFLkvHG8MTEwU+phGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778332054; c=relaxed/simple;
	bh=DYMGunpUQjdZypv4zZgkl6CKH22QXlKlEYOc9AQt9YY=;
	h=To:Subject:From:Message-Id:Date; b=MBmooy8Srx7luccD4nE8iXQBDmxO8WSGrOUcvJLN/H596wLLIGTQScH0n7URTTUJ4KfWV+DuxIVZo+ezl9A98/1imSi7At0Ss9kELBFbl7aCS85ujhPH111TC147IeBBFXsf1+P7t9eiuq7RFuTrbovb1qf9EJFbg4bYDFQATyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFoyHXB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFoyHXB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 182DEC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778332054;
	bh=DYMGunpUQjdZypv4zZgkl6CKH22QXlKlEYOc9AQt9YY=;
	h=To:Subject:From:Date:From;
	b=JFoyHXB/ZFA6MKh4B3cquITClRFrOFamI1pAjoRwT63cs5fzHUnHTHByLDj8Dkm6Z
	 D0CnDG4uU9q2pierfGHRxNzWVMX1uQx5473dBrW6+64LPa+Oy8xsonh8E7KO4H7mh3
	 6im4XNm03vQuNwTwmhtJWGby+3yc5iUIhGSwrO7LhV/Z1420tSeie+YeeDgci9JnE4
	 idYCJNG+nbS4MHm/R2x+x3893Yu7VuNIjYt3d9by4Qo2riAi4W+zGp6wEydUrnAI+k
	 odTNuvn1Ekm8knoetKoIQfbSl6AKywmRNYP8lkH5ezKZ2dZQenob35OkSWMvsT84FX
	 gTgIuxu8c+e3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D51D7CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833205381.7001.8467661692809269988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d910b55f8890207282b5277bcb564445c72af88ba370c544ca89be05bf7d4f
Date: Sat, 09 May 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778332053
