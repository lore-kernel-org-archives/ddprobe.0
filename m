Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6756253E01
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 15:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711640897; cv=none; b=Cv1cIBvUwEl8UqUPilej4sDJoJm1kHG1Dwi8/vR2IgeTykQ2fmqIP4Z7UNIN2lF5jjrWgnfiNx+PCnxcor4opZcGkfGF8kp3/oC3xmup1fMTah7r5sgbIe5O6LsSFGgU/hXcIzfWQ2c/kCA1XfpBCxg697QwJ7Z9lPsQBWDRCfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711640897; c=relaxed/simple;
	bh=do7QEguTWIFuCWv7xFAL1coojg9CtfxeBbtRQ9sUUuk=;
	h=To:Subject:From:Message-Id:Date; b=ea4wQrffzmN7ADFGp93Ekjn2lAAXO1kLLSI0Je7GvIOkURMq8KpanQh9nhLvF7UsCDZowWTyuq609FeL3xcMbVGxHxjQ+b972aLI43c3eZmk5Q8EcSqJykJkD35fuHyfAMS/jDRE+sDsAj8dhERKbK1eS8MZhR8HxCtoue+4/fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ju0OoOIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ju0OoOIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06B80C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 15:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711640897;
	bh=do7QEguTWIFuCWv7xFAL1coojg9CtfxeBbtRQ9sUUuk=;
	h=To:Subject:From:Date:From;
	b=Ju0OoOIbwmqDH9FmfoucdR7TN2liadLHbchp2BlVYEvKmAOyOExnqfze8IjGn7p4T
	 0XFIySIETIeOellaBGxJtfqjvm9td8t09qmEQ0Nf48CGEVKh6Yf9o9YfTxGSUyW1RH
	 FS9i9kDAtzBqRGZyE/UBb7tHcUw1AwSjyZMT2pmQUbAuwfHoDlJX+G1l63//fJitWa
	 h0Ebesyxl+9POIAO8DTAQTDUaV/A1a/u0P8C4r99k9l9u2JZLArosCl5ueOo3d1O5Y
	 NLuvSj9SQagYOgau0o+FhGyBC8Cp6uepW4hd/JfAmJq8gvVuEltqRzYKWFBFuNMC5R
	 w7WskKCrFd0Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1390CD1284
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164089669.32563.10710575002182538674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c4af4b917319beadc2c16a19fb33b2fb132303dacf59ac30e9a3d4ec6851a7
Date: Thu, 28 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711640896
