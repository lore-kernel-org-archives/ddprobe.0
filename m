Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9A7161320
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743719994; cv=none; b=BIQ85J7wYgTuKFg+SRTV/dDYsS/nbpcvQTBDJiJXAtajxxTqDTW9R9NMzp0qqhuWJw6wPo6tCZwzu8Haxbg6nJoNLvOtxy2bqnm90Z8NaejJtqnQ1bAKDnf9wkApdYOEcWVLAzhF//dciHIeaTsSA0hX85SXdA2v8XOo47m2cfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743719994; c=relaxed/simple;
	bh=wsI+Uss8F/nVNCijLz0GnuxWVxc1ZGFMSIySqUWKFl0=;
	h=To:Subject:From:Message-Id:Date; b=JgSBD01RaNOiy04IPhI2ISwC0k98nzbFidM7szVoGE3K7ArQmb0gZQbyYx/OarafFhKzfHR63CJWfaaNZax7+6Wg6LvxfgH1Q8LyL+jHr6gz86i/KTqIDjmWO2UKf+cgVHWIQHZim3K52luji6vLmHPIL5Ij8YfbCElv2BqDoe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRWr89Is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRWr89Is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5912C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743719993;
	bh=wsI+Uss8F/nVNCijLz0GnuxWVxc1ZGFMSIySqUWKFl0=;
	h=To:Subject:From:Date:From;
	b=FRWr89IsLZJ2FqwAVo6YYAcEZBi+A5a9TEuJiCtp2PPiNVZxtXAifehgJFOtKz3xW
	 PWt/3pl+LCSBgOC/pVvr/df6COKLvgWebJg7YnpaM7gHudnys5754CYpfyYwU16BBX
	 BOgOYImDX6k48r5VsdV/8DTOTff/GPFcc2N6YYyQYfxfWwMRD+kdRzRPqdqXuSj7C5
	 x58vBDsNZGawxaXCX8JWzOcDitwhoaw5yK2e29+4krenFWJf74gMiQ+a/KIHCFo2Ux
	 d2mHxFrVzgg3PkwzM+TwSy2zPM0gnNQP6pNyTfugD/LVwH/Ue31L5kF9yt2o3P9CJd
	 pdIHVYEuAobDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C8C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371999358.26327.12360225089693355596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26650740daa73ac0eeb0b14930f9208ea7bc111edf843492e27286f3c4256ca8
Date: Thu, 03 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743719993
