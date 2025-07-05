Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B491E531
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751741994; cv=none; b=hw8SB0tvjRx3IW+wJ8G37WnnhPByRi5+EY/pBxfW6/0OR6R/CXP7bX4VjhPcsj3yZd8pApybaR9gbZ2J+tT6/IGMsKMDDdn8v9xw8N0nTu2I2Xdj5/1oh5RBK74rVTQzxGuTJ4C8JPS7FAf6ag7T4Yi1ziFBQdUZ7EOuU0Sy3zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751741994; c=relaxed/simple;
	bh=Ecqan6Z8oYi5WHZ8Go8+ilSbyvkYUuLqYz6mrkHcGao=;
	h=To:Subject:From:Message-Id:Date; b=pqGyHTqafz7jiQpGGmn4yoUiCE/gHfBa0gNoCB/RZKM8f46JXsSU59+OfvgEVStZuyKhm8yYP+dkJhLmcXxSC89xEq+fXizA03KqsPHeEvtPl2TzkbyRge7SKjXr30ahhA4aM5nlhUJy6bjef86wkDTf37uZ4Ko2O2XPz9c07q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kU0Pnb+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kU0Pnb+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBBFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751741993;
	bh=Ecqan6Z8oYi5WHZ8Go8+ilSbyvkYUuLqYz6mrkHcGao=;
	h=To:Subject:From:Date:From;
	b=kU0Pnb+hBUyYmGgk3EON/Br/0HIiSVomlPcze0jExTqlJEshOOuD80qQSnj6oK8oA
	 QNTyIoVcEoxp47Qx4cdyVi5xSRP90vo/MNsOdPxDwkUgj149z5coOQN53B17T7SBpf
	 DQB7j1v6Ie7OAuz6f+V/rKGNWJEbUylmEGiBn8QsFm3n9yRpkfKQcD7JnoU9bnADxY
	 habqvgBRc977aLQVx6jS8KpVCh0noguMiStMX1NK8a9CuKA3YWWRosGMv0wnNecUC4
	 r/SyhXcGkpBqs8XU6kKPxMnT6aDGVcznuef9Jme9HjE1UnYrmDexr+6hL3x/JbQMyO
	 hmN+J+A5CiB+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BBC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174199357.5392.1829504972442112570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a09690e4c5559221b3f02adc15c3732348642f8c03572b266b95b1c1e92362e
Date: Sat, 05 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751741993
