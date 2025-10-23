Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7F3322C7D
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761233393; cv=none; b=uwekzVI9f963TGRKrvli4xf99pL+V+vzwPM3SHdMzpSKCK724YCNyLHKAHOQ7C1mQvZLNUuiqQAz0RSrS1x2N4iCIh6KHi+nBbWBdEbNfCqWCJ40oKCP5epyDp0Lnq2Zb/aU8G1UW5aEakpIQcx5nlqjcnwjmGDV3a7eZjGsy7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761233393; c=relaxed/simple;
	bh=R8GAC8w79/djcCHrwPGP5mnLGQSGg6UyE5cAKm43RsE=;
	h=To:Subject:From:Message-Id:Date; b=SBbufIV/NWiqn3F8WeivztqiZE3JvlqXtFPX8oX7w8/yCRAQN/ncyD2jeIjb0NwgC9cNahhOufQd2mZkWEs7GkGjdSLICZiS7dygWvIbfCyc6sHIN4qxbFsGPGEBaI8UJmYP3gMyvSHyX7krUKKDFxAPYsrIC0Zp4kvFzjhEdes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCMqUPwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCMqUPwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A337AC4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761233393;
	bh=R8GAC8w79/djcCHrwPGP5mnLGQSGg6UyE5cAKm43RsE=;
	h=To:Subject:From:Date:From;
	b=bCMqUPwOGjnAZN8Pu8KODIFRCxsx7QWkkcV/YDHF6XrxrDwljz96Qay7JjEY9/wae
	 fFY5G/yqvBPQxrfMlPMv9DZCjnpxHFh261U/H8LnUDrLhOGksPS3DcFPIn9wENhAVy
	 EQuANqSgwOffXGY601J4KhiyTt5iF3rQE6Fu5kd+6AFZwJNYjp+drFbQoYaDV3iy4P
	 wKsRlsgJJ37FXkTDeyebuAy/K1zo4fGeUnIHS3Pe0qcmTrJkfnpBOoTPMEmxuLmJLM
	 oRLfhFLYbK8x8lDNYUUgjMPYXQjJUTddAwlqFMQESsEEmL020wRC6nhfhlao1nzvef
	 fsSF5qYZSvvag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B44CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123339359.19424.8867671777026805201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63d609d4fd844ff9238414b5f0d18216f76f4f1381b53edcc150b7d29a23f2a
Date: Thu, 23 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761233393
