Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053FB1E866
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710733697; cv=none; b=DDZPlWxxf1SDhSfBo6Hux886BIoXR38/C1wKYsjkuzWjv5+ZvTnMnfNX5KeIAHB9AZeJp3EDUWrl65tXXJeUw5odbsi8Q/6yhOCHMhujfiN1fZc3gLV1gpbpCBT4xiYURJReSFXHHYI6r4g6OeBjTMKN/Nk4BDistSgHT13XLJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710733697; c=relaxed/simple;
	bh=257WArtGKLt1zL6vHsTl+zK/95yi4yRzXv7R7E9ljUo=;
	h=To:Subject:From:Message-Id:Date; b=SjIuhyCSclcQmirE6FyfnB2tFUHlttsLBCUJNUIZT7ehBHnGFS6Ypq6MiaMauwih+M7RjWgjudenJ4aHDLkHdTS1izAI81yLUf6biPZpNn2ECFQDGp93YaqLUR4lzDfbuKRnjDT5yxtYvTE3LEgl2zi1eMLMZaGh20L30htzMqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4tlgZW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4tlgZW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E34C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710733696;
	bh=257WArtGKLt1zL6vHsTl+zK/95yi4yRzXv7R7E9ljUo=;
	h=To:Subject:From:Date:From;
	b=c4tlgZW1kgPYd1mkAK1PtwyxrG53ZBApRjZXWcbrRWAVwNfbYIbCFhmXCyfqp3jf8
	 GHXfaWZCorUI7e7X2QI5+90jnpHi9cBFh7Iw7cdb8lQr7bWvTdIntTuZ6uWXICYrzv
	 nQ/S9537eHK4/chHA72RFTkSXCfndUsSMUGWZo7KBtaHrAvYtiVasOfEcWkxqmuXMS
	 4ZvGiYHQSQiPkL1OZgF1yLUQMvgfnqXRLuu5zb7t5h1Cl8WoZ7BpxZySOhFz/57gOJ
	 4YHvAsxYy7akYPZAw3aDkzrsKJM9/h5haJVWrSwB1zDvJj5XyXIIioSg4cPqqMGGpA
	 JFc/4+1ariGyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B34C54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171073369637.28258.15016980864357995793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb41198af439740069369f7b8e79aef4a3eab19dcfe105daaf35dbb9016b629a
Date: Mon, 18 Mar 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710733696
