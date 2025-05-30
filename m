Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC38125D6
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748587794; cv=none; b=QZf1vEeH9bLwNHFoFri/4WsDXG8+P31oI2pKQqu5195Te373oa01jkqvzNSawELXLAAO19Ndeg3Ufhbheu4aC6OWg9+u/cedIqqCBW4YlDltGUL/7SDTs+k0oaughsX46L58HmOAbBhrxdcXDo3R7woqDAHmDF0h3vfbQ7ehn1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748587794; c=relaxed/simple;
	bh=zl0131STMcdvKZE/wKEQvCLbSk3kNav6BAKQxgaNnss=;
	h=To:Subject:From:Message-Id:Date; b=CGOisfjMcL5v5Z6bnmepgixGxA/lOSJcQi6WLzDR2ob04qV+AmoAcQf2iAEZe1B4JKYFoqSociFaOXTAV3ZiKwoZBPzdRBgMlq4dr2RPYgtIkGVq1y1foTfJfVo3x7IvPQMl0GcBaWaLzySxKoyUK5MiisZ1WjEGckm8qdGMGHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbtCXrxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbtCXrxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A079CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748587793;
	bh=zl0131STMcdvKZE/wKEQvCLbSk3kNav6BAKQxgaNnss=;
	h=To:Subject:From:Date:From;
	b=kbtCXrxwpTCvTSi/T+yIlgABlziEqqG2VJ3JbUzw2motF68P+1nlAdGlgevRD8ODa
	 UC1+tZSfcoNOn6nHtWCLIUtXKYKop5f8aV+9mt+/WzBi3FqKOhTNNVJmvrqJelRxhy
	 1i9H1xkwnO1lipcbj6ekTGR9efvq7cEGrfhUG8miid2XqX2zoAMeN2hR0h50kJJmUO
	 aP3syu9i7dztaAciJbUCrprfh7B3SVojbpdd+GD2v4VZ4FjvXuSGuei4valxIbJ4Gt
	 Bp1mZlibb7t4iM2cJpcZ79UvbhQju8jol7K5emXGiUT5+Iig0+0szd5o6LpJDRzRG7
	 mgfq1OmZFKMzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF74C54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858779357.23439.9323928223873114338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70da69b1990a4208a3e74b83a899c7716c7a989568aa11c59a70131eff7048f9
Date: Fri, 30 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748587793
