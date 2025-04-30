Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B331E990B
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746046794; cv=none; b=SlqrsYtty9PTEQSlipPqpWnamPHTmju3NsPI1R1ht3FaLdCf/XVtGkweiDNHnNZGhc2r5TnbNqhkLBEYHaRlWBdfMvAlOuH/jwteciXQ3Aym5ANOucuIGJWrft08rtlu5L3d+zsETYFz2NB7WSXMK7v8fl6JMrSwwuDSxTDG2EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746046794; c=relaxed/simple;
	bh=yF0iHa9w9yN07DpZGyfd/C6vN45ELDJXKXgxSJRoHqw=;
	h=To:Subject:From:Message-Id:Date; b=cHJ/dZSUf5CTqE4yhE+0ve2LqWqfOihDBJHxq5hyN7IxoEBMESpOqgtn29tizlPobjJX4ALTZlQjIyqaw3uO99gvu4cJmWgIEKEyzfNtY4WASuXjW+pavGBh18fEjSeO7r1nG/0hxg0WiWTkjqCQ9wjqx+xbbM6lSmYtRgqVPo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgF2gpdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgF2gpdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E84EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746046793;
	bh=yF0iHa9w9yN07DpZGyfd/C6vN45ELDJXKXgxSJRoHqw=;
	h=To:Subject:From:Date:From;
	b=SgF2gpdym1mXRzprNDRc11Dg3tKg+On/f74T4kfmhWNTUfMLCzUO8PYyfTiZAQVnJ
	 2WB6h57jTRpfjGYHNOIHUZmYj2CjdCXQW8wNRmGnpAW5Udw8e449TZemm0/G6qLoQL
	 H4XudZISvS3W6Jmj3zhq08aOKU3hffkljCR5cFdeg0zxMBBW9Qkgs3rQGIOwFgk3OG
	 kUIQurU+HE8klkeGQtwNJBMgS4bxyC4aZW4J0MXZo0wiUvHtcNRf+hss41WwPORk1t
	 5IAwkigIiJBREi0B/mmwSrP4bHdGypq8rMTj1dwXeAc0AToUWQKsalY/hL/GMKQy16
	 5e0ID8iemwOaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C4C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604679357.32208.15687293724418522055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493fe2751558f91868d1bc4f0f649e103a92f997db8c85b067fea4a5a7e78743
Date: Wed, 30 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746046793
