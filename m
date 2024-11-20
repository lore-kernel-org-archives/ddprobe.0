Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B311953BB
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732094154; cv=none; b=OankN/GiD4CTI9ZDcOa4QMPu4p8JOJur4u7XMQbOeFw0C95qvHQ7CDO+tlF1QrLBsBOXuxHFnqOu982lUduAg0xpNyFGr7uM3yiqWSiVRlkxHtakBouUagValpHZIUKTn1na83MW4w98IjJQxxVz6u84+oGEqxes7QCJT3xuoZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732094154; c=relaxed/simple;
	bh=RnspzaCO6ZKk1yu7P3aXukpnJCrtHHNa/7l7e3StMnw=;
	h=To:Subject:From:Message-Id:Date; b=lKWBLpZFFuktu1haN2B2Jhmp0i2sk60knLkVnGJuxiiWaoATXaj4ik1bnUZkIYb5Gom4duHmJTmH9LeXsj4e9Nc64TR9O9A8s5V3bDEPVy104zdPUJpcaSIRKVOYWAaU358eiCUbcVBPIZ1ixQQzTYzHtEg5g/T0KZ7N9AYi7YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiIRJemQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiIRJemQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CDFC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732094153;
	bh=RnspzaCO6ZKk1yu7P3aXukpnJCrtHHNa/7l7e3StMnw=;
	h=To:Subject:From:Date:From;
	b=ZiIRJemQ1fb7XPtKaSgvmylvPrkAzWo0UpG+QmFHVQ39ybik1upgKBHsBNziMUDgU
	 a2xhLbIlCSAsgXKKQQ4cUJmS/DcmftjZmhjCcPyxT3dvfSpLw1wcTe0HVORVBxoL29
	 gGYLQX4/JVBnOXaFZ+N7a3DP3izKvY7Bg6btrDDkFg267V78MshkejKmrY88zasVnG
	 DFRGw7ewZ/FaRPxFXaedp6JdVEw2Y6nz+eP5XV13xHws4ztounLPUks+geKNEfIcTZ
	 foe8yn97dB7f6cm1SctzdM1S2sDHb3M4F/FdH6YcUTfu3oFsFTTZmHA4mXOviHIQa2
	 AiG2YNX/cIYpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979F4D6E2DD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209415360.32449.2055033724331655197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5160e7298d5e8ceea42171254415bc991ad149427626a88245ec426c346a02c8
Date: Wed, 20 Nov 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732094153
