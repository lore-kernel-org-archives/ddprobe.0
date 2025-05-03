Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA1A264F88
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746290394; cv=none; b=XVn+QT/N2KtaRYwjxYjE4ngJAW2FjuskC07aPATFAwEXJ6AjjFPlCJaMAwERL1ox+kT5sU7ACfYgJrcvwa0h4KEl0F89l7pxJsIKvTrAnOT7VhhaAyRHRVdTOW8TKc20tre7tdWMnpDz7k0BYtpqTgxBzYqCDb7nABUJvjd5yZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746290394; c=relaxed/simple;
	bh=EQGsAFInFI4Vk7FuSDkNP0Blf5IvnC7VzVT182C4DwE=;
	h=To:Subject:From:Message-Id:Date; b=fsn3uaE5++Je9udrZcXLST3qfJUW6asva3OnoOqHyOxVewHQT89Gkg0wWQLJVIBC34QI+gNkHWRt3j0iMWhD5FQS1MvhWPyvey6ijYwdWmVGfaWFyMY+QWo4FoaYMxHrMWWzal9MKwYzq6IryMnqB7AbeZvcfk4AqVJsMDQ89Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tS87gXMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tS87gXMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3247C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746290393;
	bh=EQGsAFInFI4Vk7FuSDkNP0Blf5IvnC7VzVT182C4DwE=;
	h=To:Subject:From:Date:From;
	b=tS87gXMoesG+j4utkvMrkxnN7die8HPODN6jEUOlM+QBvjuouaYBkGjwRe3AFtLkw
	 BQrsXfj8jy58Hb/Gx6eqqZlgXW3VpXHl2T6CwSYhen1sKr+E5fED0j+U4TjZe9NUTw
	 8ZKA5gCYAMvXtC7U4mS77GviS+p/hcY1ChngIq0wUUPl0lM+vQair8H6G0NlRl9fvL
	 b2UrSBPoQXkA/oSc1fAGdnah+MvNadXuRUsiqfbGupRKnic/M9QzE9MbpQWrpPBlR3
	 imDty2hIscpcJaSQUvJc0WgD0IyhNXwuKq5qsJiPwSS3ZPd7SKIUmuwUR4kE2dTFGk
	 PuaW5IahbN8Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F94C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629039357.28366.584589233101761028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285a70fce377866795644c3a877ddaaf3fb00c7e5c8e7f8acf5dd923b3a0c750
Date: Sat, 03 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746290393
