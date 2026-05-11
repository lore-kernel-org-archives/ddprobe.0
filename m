Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2AD6FC5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778458834; cv=none; b=XeQo4qDjL/GLzHJvJ3vLGyB2y3FS3TJlE3msmDktyJKHyocqor+uVjAiM9L+YeoNpG9X1NGGWGJvUAQuFJcZDeIKWQgul0dbxCZpx/8Xk0ii5Dt0sAq1eTEB9KxTsede+H0EB+VMwfEm9LEdn+aLHsC6HzrUcoWcxswId772Je0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778458834; c=relaxed/simple;
	bh=ZGfbz9gSQrQGwDjTPmvt2+0detHUslPsTgokI6Td9XI=;
	h=To:Subject:From:Message-Id:Date; b=c4jgHM1DknjF4Sf2EeErEoLhSjWkifJXnPEu9SplSEPFY7KdFJ+xbRM6srwhgbTYN4jGfHI885IKk6vkQILGxnvkgcTGK2ODuBJNW6I0nz0UPk38kwgtXnpYjCGtDDttRgeoQ2afXXyl+W7nfa+rjc+3j3GkWp8xLlzpSYehDmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iC4E0Qpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iC4E0Qpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4512C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778458833;
	bh=ZGfbz9gSQrQGwDjTPmvt2+0detHUslPsTgokI6Td9XI=;
	h=To:Subject:From:Date:From;
	b=iC4E0Qpdy/He3JLzzZl5zoaO+M8USPnmtTYTu/XLeX3gpKYOPavB6TH/1R/xvvJWm
	 76V/RB55yzzdJTiIB5Z3vP++c+2S8geb4Ux3wN2LKFoUY8SsO4lX4h+rT692Phbad/
	 T75bgZtgvdEBjYhWvLqacN3tdDm8BCYUmu2b2vhtGJkVk5OkKaf2Gw5hlhWowj36AW
	 BESJXwCu+xBG6AUv6zJp0ptO6hTT5Q1r/SoyHRqivvztAjiO6e2ICzHTV9fwOMIORU
	 N+GHgfdaXRHowEP0mamotBTNj5hqbulz1rmMSTYD2ws8FTTp0Q+jzWEKBN5H7sZsiQ
	 gyxep5OzbpsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6896CD37B2
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845883369.4289.504770531040828674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb36fe0bf226aba47dda6df1ed5294ccd3dc3abd350f7f2073cfc9130fd17de
Date: Mon, 11 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778458833
