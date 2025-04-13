Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CE120EB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744518594; cv=none; b=EiCddyh33/Z80eSSYKPrfpr+EiYmKnir95T9Uu9Yth+c6OXjadEJbTWR7xr2wvc3qznjmvVvOwpq5gdtF7hmmOsM/7ExSHqKWa7wUQKjNYvxfscs1NKxGuGEFcBBgCpxBvGxNH1603vc6bcCAVfn2o0ayupmRe3j8NSMIhMNqkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744518594; c=relaxed/simple;
	bh=cCLV8ee6/n1cD6S8L1IwsoLzXmfKqgw643dIrSEhSi0=;
	h=To:Subject:From:Message-Id:Date; b=cgzuHOqr40Ve8H0T/AJak1ATdbOcdDdLYxbgswAfxIDa0XkWcJ4UIX8y8JZerX67aBrbS9cSHFqjZF1D+Eu2xxN1L8BdTotWSX3WfgmE4E+gSq7dw7yQwsOsQNdKv6rar6BRxZr5scQwuM+X6aHZ0+zOZQhAxU3jUlhl/Psf4Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sofALVta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sofALVta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B243EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744518593;
	bh=cCLV8ee6/n1cD6S8L1IwsoLzXmfKqgw643dIrSEhSi0=;
	h=To:Subject:From:Date:From;
	b=sofALVtacmabmnlinS+c5ox73i1lWJXy0RJZ/+Q/0WHSilJOr3/7azX4OLfDQsEwr
	 zwqpYJIcHuem63Ni1YEMsgEVy1c2gQ/iyNDEN/H1pFBrvHHslSPqxl2T9lm+v5MvJb
	 l9jEpEDzRR44rbUNchzjdqVPuZpu5C9ToebguLvko56SsPUkQ6yDMC9PuucgsCeG9h
	 /wHBTa5nzA4hL1i4jdToS1scXe9kVZG5Ply4C9wsn3w9B4w8pGkOwxkGPO1kbcVW9Y
	 lFj+w94hkFWjPWVuKHrrHKU9qDVICpPT/NZStmJM5yuEZ8xzdi8tztWt+XY/73/1JG
	 I0yLrJVJwyf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E1C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451859359.29492.5550918089861353696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d6c0cb28d202491c421bedf2b5362d5caf2aed71cae3d773bbdde64484ca01
Date: Sun, 13 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744518593
