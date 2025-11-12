Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1681F53363
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762906194; cv=none; b=c5RVukIAIET6OBb84L0LUo4ZW3fyW022jt94AlXFyj/I1u2FOvkS1wPlMy6oB7VeV6hFQyKEGzInu0bkiEv+JlR4qHDviNoQGNYhOp0GEDusuHc5HDfyQtcKelmR9tWr9t2IgE2z3NAcsTFjXIKDRpC19FAfsBx8q+hT5lj05ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762906194; c=relaxed/simple;
	bh=0bVt0ue9M9C3iu3AvR+qUTWVDRcf69Q5VC1qWjUO/sI=;
	h=To:Subject:From:Message-Id:Date; b=lwtJGoRhrBGgww/wmu6STuJ9uUFQWXRfruFD5buLbXn70P5nGoAKGlGA62+aGfSALLYNu9+osEWb/3CMQqDe9w81ornKv+coArr9yfEAeLvVimCyH4dMQ5EZGz60Am2TPNOUHyJ9ieMT+5xuHlOYW5V7oGXb7+72BI0+5i0nBIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VE7L5OoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VE7L5OoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762906193;
	bh=0bVt0ue9M9C3iu3AvR+qUTWVDRcf69Q5VC1qWjUO/sI=;
	h=To:Subject:From:Date:From;
	b=VE7L5OoXwYUAiUc1bjFjgjw2CR2BS4xEpwB5YE87T3XZVSTFeulGMNxvLLYtW0HGd
	 QPVbkmx8XnjA7C/6j+VeBUAht1HZlReWSi7JzrCvo8lJbrKSNucL8b91h5Lw0+gHzA
	 P67ion69x1+U+5H62/qTX5uGFeOoBhIUvQ1O39vqbgE+v8wJxulATl39CP3UjEDRnO
	 Dxx/5sxhZaPcJfADzvitznKl5H544VDUI21G8jwN7pSdlfEA9BslPgkb/S4ceRF22h
	 KjcAZB5o2235IWkFbVmjfu47Hx6XEz4YjkHHta+yFwkBAkDi772U514MOKShsskwaK
	 rkhicMLEWzjTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91030CCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290619358.16868.16111095474650806384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a4badb3c89a266ece707369860854b7b5b0ac2b403464e93093696c8dbafc2
Date: Wed, 12 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762906193
