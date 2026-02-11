Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372E3284896
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770824694; cv=none; b=Fk7C8HvYUEawIUE3pdqbbAlTsigYm8UNYPw6OhSYihQTCny2uP+R55Rb0uJBFhqCaoqzooz+gT0OmU4QTza3oDs22n3CYdIKHy+5t/yS+08WF0li/A8kCNvo+m29T5hxkoCW3M/5TWnrtT1KyyHxlewWM1tcLm4A6I/5CsLqqE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770824694; c=relaxed/simple;
	bh=1fAQxG6X8kf6GGtWgyI0fT9XsGiJlhtHZz9s/AwcYFY=;
	h=To:Subject:From:Message-Id:Date; b=pyU/mkR9YUcsP283JHw8JDU9kCZYJ2VMcKUslG6oU/+hDTTUWn3wB1yf1uak0iP3VE00fTRwLqgcpGjbTyNwnwjx+rLQKckKUFS8wCfghi+ZaMMh4gJs+byL7NKmcY34lFNuXFTAp0eUaGsBmAGb0tKfb7hrtRCbXqM87H9tlw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flsFmR5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flsFmR5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB71C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770824693;
	bh=1fAQxG6X8kf6GGtWgyI0fT9XsGiJlhtHZz9s/AwcYFY=;
	h=To:Subject:From:Date:From;
	b=flsFmR5dcHMm4BQ/WNJj8eXMz97kICrheDhWwOQB3kXekh/oq7kDj7fKFLNrUuul4
	 CXuRG5lL5OqTOex4Z7whByOebJ1WAtG5Xx/pCX8sTwsGo3HVwqwlDs7pvhXPLg33o1
	 4S8v+k18XEb18p1D7hgQ4JHYBmDdODrlfSFczKPk8KyyiESDsCuEknNIjwZevxVr7l
	 4F31uuvFpRrMOy5bfLVR0aC/VqPsROMnADs3j0uqdBf1T/OT78dz9mwYNZN9y2HP5J
	 XRbt+jGKkMOOZa1sDldO/9m7GvE16NHijxPoL2RcIYrz/gOePWyU8Bip32eD6m2lFd
	 c3kHH6+YzF4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8761E9E311
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082469366.20411.18294365450762520135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d10792aadc43459b1ddd34294357a21b5cdc0c5a0883ace6bb2c210e51e423
Date: Wed, 11 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770824693
