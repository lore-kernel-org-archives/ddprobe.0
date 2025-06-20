Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B0830E85C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750403994; cv=none; b=Y39BzDN73MhXR5zHnQAkKcglP4i5YyB9QOuORl/G3cUnU9gtTKxT13Eqgt3d7/Qfd1RbSzaKM4k+XajrC0UE5KtkjrJ1/0A73on0Xo9RkJMs/C1TGR2YrULETjpiZ+r3aXYZS564y7J+huZQ3MvjyUy3RMNlZvbyby4+TP5Ynl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750403994; c=relaxed/simple;
	bh=7OizTIhXnNwSKjIK0q5EZDTV7J9jQg4vgedXLQSngcw=;
	h=To:Subject:From:Message-Id:Date; b=Zxm3i7dsU68ATMT4I09YG5bBcRRdDGFMFqcs6nDLvj25SSCcUN0hUWu9hmuXhy9b+N4lEwOt9GQ3jQDU1BMet58uNHoEapzQh5QZINnNETPzxXS58X3la9ABa66CjgzaaVoTe1PqFNu1xV/jzI/D9w56kROvy7SzkmziYb1RC1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcE1mMQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcE1mMQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32C4C4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750403993;
	bh=7OizTIhXnNwSKjIK0q5EZDTV7J9jQg4vgedXLQSngcw=;
	h=To:Subject:From:Date:From;
	b=gcE1mMQh1QQBaOdgoLHRSL74RuWGcnYfaq/myFGY8DN0MDSSfPpe+2yuZp+lgkaPe
	 BKKOgdGPbmBDJYtFi9mpf1Z9wi80gLN0C9h5lVsf2FxO/lTzIUYL/p/ELUl/XwCbfi
	 e6l4uQHTkrhtzghKcKlPbse5PoWKiBB0yV0xbLg/Ocf52lnwZhsncJczxOQFXwyZEy
	 kiLZ/7dQQYwl7H360/8qk5nfT+LeetKr/HR0mFUl3JrKOetVsMhHMC5vlqotHzIK5c
	 o4uBqisdC4qrtnYICdl0mCEMZ9b4t7fI05VK24+7CtNhWvqAEfyTtU4oE5lunabf44
	 nsSDvkaXFV5sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91233C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040399357.5607.16372470588583843612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec68809867e533eb679e19e042dc78d7abaa5222328d6a551de31e29308486f
Date: Fri, 20 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750403993
