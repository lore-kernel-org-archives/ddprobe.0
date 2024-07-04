Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B86317C73
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720060523; cv=none; b=bmx5UwBw1WrX6kBW9kJrenC9ka3NR7qka3ENueLWg0e35hlbQmjY+hIYOo92y/yZfIN3/GJYp1ZDI0mkEo2+EOGfN7Vn6gRe4eprbha7TEh8ncjvmCy7nhfzi4VpRURmtacwNiXcdX6jx751tbgI2hOEo1CX9KGZu1qKgZWpDpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720060523; c=relaxed/simple;
	bh=SWtpkzbspgRofy3DBKk6HBR8ktGYtWM/2Cvh2HR9Xss=;
	h=To:Subject:From:Message-Id:Date; b=RPMXItKopYHmFoKnQz80mFCtEY+eawlM4f9NQQMsHkXnoeSHE94XopNdyP4gZF9NluCLSFSXNea02IfCZha8E5JtOy0ztO/YxBUA9Rv/asAvdA3e6NYynlmjHSfz9hv+NTGIa7AFADpHSlcs4tYaNi8ahukkTlZJefQeGB3pgrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8oGBOZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8oGBOZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6706C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720060522;
	bh=SWtpkzbspgRofy3DBKk6HBR8ktGYtWM/2Cvh2HR9Xss=;
	h=To:Subject:From:Date:From;
	b=R8oGBOZiFpHi4X3HPpUoDpdqdfql+or0hwj70DSu0QVN2ga7PLzNVPtekoOPfVZ2D
	 FPT3G/xZA5P+Ms+fUzKybEbUck7bNw56uCBEj2BzvnH0LCq2AHf61i7HKB2nfUI3RE
	 Jx3LKY2N6mv5tYOT6OpD8o21xax/1w5t+lGFxumYDSfOZ85rVpl5NlQXgWIeNo76KG
	 CsABnHZZCljCw2aI2dELUZgzbkdlJO8C0g0HMIE3okyh5MqeeXZWnaaTD0+KrSnNaj
	 FVNWrEfhfLTmCITfeR0vkKtMLhCPCM0euj/y5R8ayfythHmhlqMCbnIcN2Lgo6bsqB
	 Q7iPXKNxx2knA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47A6C2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006052277.13004.12610056914834530868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718f43bc78c94fe515954d5e33b4f47c780400b4c18c32013f64ee609c582a12
Date: Thu, 04 Jul 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720060522
