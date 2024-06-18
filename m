Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185BA1ACE98
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718716763; cv=none; b=aw/TZ99FvQhojATypE0kNrTjm+jPdkJyHBhV0yQTZQHfRTUS8ZWpaOvFT4pC1xx18tXNjYdPRmy462o73KqQk38sAQK1jePIHsFmq0YwJLjd1moZ4pFa/k11RvbT7w+pvkw0SCShBwk6uPNpILDhEJavf4rPSnlPhcjJhbxhAs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718716763; c=relaxed/simple;
	bh=c8Y+g7Hx0J/FQ/QnxzYN+fvh1lDmdICbxrATmjrOilY=;
	h=To:Subject:From:Message-Id:Date; b=Ra5GtGh+PiaM6FgfFlW5vQETNWugQs921nMj4kkL9Oerrko/13oQvqLewQe+6RQ32IPJiKTOhmIsEMhEfTFDt6F/6V5MFHk6CdfGrSLSQy/QcLNJiS5zP9dqoAPejfEIgfE3KHwMyXFPC+w7CcElpoFQSxRV/NqodWatCtTsvQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga744kmm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ga744kmm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA1AC4AF48
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718716762;
	bh=c8Y+g7Hx0J/FQ/QnxzYN+fvh1lDmdICbxrATmjrOilY=;
	h=To:Subject:From:Date:From;
	b=Ga744kmm0QXxi5BDyYNtGnH7FrJ8J7b3Ms2qWoMcva7vj4w5CQtjRXbED9+XAgSwe
	 8xZWALHYlhWqudY9TLUcVMffg1svYx0hpO5/4EZAmh+nsbifxd5SYeP//vmWnabs/R
	 VAqRxRKGnNNr9dQ7upVQtIaK8rbOqBrYyzYLSNP3V33N9fW9PYtul3YBBJ3qCtFPBy
	 czdxUh2DzAbLLUoHXLQiSrf8IpBGXLMLZno2mhL6mQSSIj5yH3RIxTebxOVk/q+YTv
	 HQVenVeUKkSqw778FuBUtzBT8QU4BEF41q6VOyJr1jXw1C/vZy/1jG/sHLBHalgxfq
	 LNMWhNf0x/yNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E29C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 13:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871676279.8727.11310426515002341474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50924937f9592614e4f6469d06564a9edffa32912e97564b8ce6484c95265a6b
Date: Tue, 18 Jun 2024 13:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718716762
