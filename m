Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6F254673
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749404394; cv=none; b=NjDW7tuLE5aY8nU30nTxKZNc5g6wi6POtGBzpQj7A2MYA81HDjzFyaGyIWHOVtI4xshV6+Cj+tpLa2a/39nrjMAD4IEUbMUNA85OsP02bUvkMUDwYoc0Qwm3YIACAkJuBIv6AVPBJ/wuyNqwWSpQ1svz6SnPI+v90SG8kuKtY9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749404394; c=relaxed/simple;
	bh=tqs/lJr9auFxnUq8tunowgWSl/ONk4FwMeV3rsyTREU=;
	h=To:Subject:From:Message-Id:Date; b=gndpXeksep4WZORcdJoI0oJg490qM3pv8MKVsekhxfkOIJxB4u1TafRQlB03bSgK9qwv2utOHpl7cwOQhcFb/CL7LNtkCWklu1DP35zg3d+Xk/CXwuDyTJjciG4F68ONy8Ondn8qjxwSHr3qP1seQoWQFQIms3wS/xeW16ZHYZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVP0SK6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVP0SK6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A9C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749404393;
	bh=tqs/lJr9auFxnUq8tunowgWSl/ONk4FwMeV3rsyTREU=;
	h=To:Subject:From:Date:From;
	b=cVP0SK6fcOdXpc2IjyajmOOCrwor5pcWB27YG1YNBB4gUBtBv8LqZIiN2Ps88+EFf
	 Bl0CjachnFfSjr1T7BDalT0QcJaD2klYRULBDIjky2w6J/l6mIec+ybGmcqefEvo0M
	 r/Ow9RfX8+7FsxyR+Dej9xxnsP1Kt1aXbfUApCNfnRmXiLnYjB4YoQPxN5zFbjuXbQ
	 ZNYvzdl7ytBHkz9xnrZFLJuxe2jqhnUSvsHEQRiumxwFatLEoxclwqqWID1jNNxqji
	 i5N/C9UGma7Y2WLZMmGPgKhgzkFObKWFprbHNe0e8iwYFVjTmCjDD1ep0QN7vnBK+J
	 K/7spXr2CXygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D7C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940439357.8628.12547100454070907326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37103ade0ead8b35d75d85ef1a2cdbec69b19cfbd8fd7e06395496336454619f
Date: Sun, 08 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749404393
