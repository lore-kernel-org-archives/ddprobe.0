Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C491FDA
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762632594; cv=none; b=JxJOSBxteEwWP8FTnO/LuSJ9RdDs32RHXYUtIl1bx0cWtviCqv+R6eFeBb//213oR/X/suIb8TUKnYegpIjxq49wnCbY4IuwZuCVGAUydFNg1Dsb+ozP50FZ/a6CC2jpxXfhKCVug1tXvomLTq5b4nPN9HFYnUcyALUoRc+UNfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762632594; c=relaxed/simple;
	bh=SA2iP7JW9kiCqvABxL9DUApcGYCodZMvSK61bq+96Hc=;
	h=To:Subject:From:Message-Id:Date; b=NOxcxGAEXro2YtaV9vMcgvyZKDIwnTuAhjeHvCS+64Mq87TeBb8kFWwFdw/Trvm7SJ9QU0nBPznGW5HDasE4/TmOku3MIGJiT4TPIDdbyl+4Yokv8x99gyucmjxZba58bD54jlkau1EsRel/HsOt/jO3L/ekuCNhJP/sbwjyess=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvbAdTAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvbAdTAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD10C2BC86
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762632593;
	bh=SA2iP7JW9kiCqvABxL9DUApcGYCodZMvSK61bq+96Hc=;
	h=To:Subject:From:Date:From;
	b=nvbAdTAYv1v/Nf0vUqk/OByVgTYvS8q4yOiPenJB4an8YiY+2vgM/WsFt/25yV6C7
	 x0HlUYI1IbVf5RecUw2MW8TH5TUxX339uqAdsLKeSpRM6LQf9dsoTlGjEo48EVBjlj
	 DvZCMsYoBM46EA14HjE+RS0djOxGZXGhEcYSYC9qpCQA66TAq3EFthnYe2LEKFBkh6
	 5ApQwnHWC6IxGKkhqoWLAZyVzneP0vUF1aIVQzEUDy0qOcvOZ58g7l4VIu3FewaBic
	 sKfK6BeumPJSXi29McrZ7DGmeNeFK6lPoczFSrH6HMohwvue3PGrthjZxsJ5LWoJ5i
	 x+FG3wJa8667g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3D9CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263259361.19616.10821126453628160711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d946af4c4fb9314b269f28769e9b3bc8be9d0e1182033b6c1530a994aa46057
Date: Sat, 08 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762632593
