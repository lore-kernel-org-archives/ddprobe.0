Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4278E7DA82
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738215954; cv=none; b=cYnpQhYfHZNvY86IQPBtFKFwaX/Fiwa6MonTbAM9CQRi7643KjWSxopOjphymRtFbDTr2tjHy4DyNAK1GevEdK3U7ozhZ+WhZgIvk32OiI6AB1BDBmWup0gxwjNTJeyENdRZmgjTNQ7fRnVbSSCvdhgx+b3LyzxptPdkBQwYAas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738215954; c=relaxed/simple;
	bh=F881y2lvmw1muA0h06zv+WLdRapp/T6IA+a1SohJCCU=;
	h=To:Subject:From:Message-Id:Date; b=poIA7CbF7MJPwCwsJMckcFmnSkH1HlTF0t9YnvtR0voblNkAGXAhGj941pySnaw4SOWJAO2zY2HiPbyScJiUshVzXMtgNKnl5TMw0TWNuyEsfy29dJfew/H3k23UMgq+NilLxupHtW5zUt6K7T0iQzUWQWJGVLvBsdCItGrtG5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ES0/j5I0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ES0/j5I0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE126C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738215953;
	bh=F881y2lvmw1muA0h06zv+WLdRapp/T6IA+a1SohJCCU=;
	h=To:Subject:From:Date:From;
	b=ES0/j5I0KVfMOfeVedzLCH5wBBNDjCQbSUeuCZSmP0PCYFL2cyguZ2bbyOEcA5dC/
	 S3rEntZ/sISpsNA2wg1ih+UuUWyxe0ib+FfGn0WqtgNEi7l7XPDxpN7Kdmg/1h3asL
	 3eDQFwrphRzPhGeUheWBHCIX+ybqcdCE7NNEczAs26CkoRXCREceJV6uvd0ur4S8jH
	 VWK/ehknjGHQiWvc83c23gTRsPkp5t/FDfAXLSGlDF5BLexJaJtMz4l4+naF/rTqOo
	 hJA+wwKfx3bFmEyzW3+I2og9gZd47Uq9ibdb9SWTsSjRIrwfHflESTkdr4jLal7pko
	 Yr9o0x7ycestw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9203EC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173821595358.4538.2470794922495165279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da1b55943fd60a9085d59bd3168183dcf74b832e3f913ae4ba0873168fc2d2c
Date: Thu, 30 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738215953
