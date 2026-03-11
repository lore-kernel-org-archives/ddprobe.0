Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C141A9FA0
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773221693; cv=none; b=uM+6j2T/SXp7rsSUo86o6fxZo9Dvvxu7k0yBDFlziaae+/PFulZVecHjAtqAA0giNyCwhDK4ZSpPlGYim5dkpPq/YOHFiwnBZEY2Ic2qunT6ZnufEDWapp8hkhmYmE8qKbAgIkJO0gpM43tqZM/nBGWFX+cRSoRGDTMdDH+RUHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773221693; c=relaxed/simple;
	bh=b25IwdGw4Cw5ZIOvnOciHdwnHN35a0ogKSbY5eICETA=;
	h=To:Subject:From:Message-Id:Date; b=EDGqlixVpPgjb7qH6VEGwC0Ibu2lnVMW1nU9bqhAMMiqsDXh1voqGKyeb4TbDT8+53kVFCunl83uW5o4K5qlZhgje8GsQ8/i7KLXv46oW2RihrEdXUhCpFpVCRjJizdTcEtGB82fnDsXmv7gEm9uU9xCODInMgXlOod8IZtF+20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxA+xTUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxA+xTUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49F9C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773221693;
	bh=b25IwdGw4Cw5ZIOvnOciHdwnHN35a0ogKSbY5eICETA=;
	h=To:Subject:From:Date:From;
	b=BxA+xTUVKYdaIJNb/t4ij/XMBHk3KKlbyMckhPBtGtcfOLDUOAWQWVC7y+lTgPEtW
	 rtRIYoWdEkMY+wR58RmczczSZQUyPY1c73KpKUdfOnJhhHRdlGTw37ZgRK5r0trOuL
	 ik4ELw5drvVLIBD/gZSnJ0drFcYNenYORZxuxT96G3NG6YHtmwNiYDuRg1yRiQqFUW
	 eMz4zqAJGGwFQTogz0NO+PW58NNDM1woinXk0p5E/qCe+Zt0hyTF7jAHfyRiC8FgrM
	 KUfQjkcBB4fEX1R5un5ymORLl2P0nDSDOnZVVg+ui6MZxctuXtUUf3BhD9Yg6si7Bm
	 0nHe+swN/9xNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E771049517
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322169359.22208.398476203635062689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7c70e8e8e9fb58ddcc52964d832523cf3518409d5a3df388fcc4a9a5b4f908
Date: Wed, 11 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773221693
