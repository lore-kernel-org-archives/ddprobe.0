Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAF83D76
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755745794; cv=none; b=KZUaNskRj4BXDIxaFlqbGMIrdyAFTxbG3PVLdU1fhadW7Pv2ohgmszaZ6AwWozjERwjrsY3CLtc1XQ5BardnSKqpTCSwXuCcv7XPQQ0rTKbJWUZBipvYvtQ0Djlz4CE9j4j4jsJosjrfzDet4FfZRHwXoJBPLufnYLm74LrUEyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755745794; c=relaxed/simple;
	bh=L7bb+64P17ndnJ767esSoR2wXaeIvu47z1ogjFdiG2o=;
	h=To:Subject:From:Message-Id:Date; b=N7sarf4UaQADImWSq+4mISPiskQvCujBBAX6A6qC/wg6cXN8QpVLYnVmRJ/mlzgtg3OZk71WuUZANELcjhrSXvqLYtRmQTKXpGriRYs1brWco2X/x1XCAz9kGGMUtz8UPYLKurm6NF7hf+OXsVmV53rpFlaMr77EoFSJTFj9nlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdvhR/+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdvhR/+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04CCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755745793;
	bh=L7bb+64P17ndnJ767esSoR2wXaeIvu47z1ogjFdiG2o=;
	h=To:Subject:From:Date:From;
	b=IdvhR/+s5KJH6fKawRAjB0S3gInIWMu/B7mjJrWfQMX+Lt2lWoYskSNlzMRaGwtc9
	 smW/+sijflqG+s+T+gym3r92ZK5knz/F1XDun3QD/sfuilN/RScTV7VUPbTLKjrBqx
	 yTjb65WcSuisVq/dE+depHhA0/zQA7tr6dE9myBNlVHHwns4peyPX9wCdAskS5fqWW
	 nNNwJ9H74CVLJ2m4ZoddytpVKpcPsj5fH/3oo8VkL/huexsBDlRd6Ry88S1sxhKDyO
	 0bq/SI0VR6swrjVPPPnWdYdt1r8hj2uIQfdXQL7RjzyXY250nS181kK9caNsOvsolj
	 Ua0eMQd9DmVsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E647CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574579357.4272.890354539366519683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf315908d20baeca0d367841d370d3f337bef1c07c3b34ebf46e78e57b77ce0
Date: Thu, 21 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755745793
