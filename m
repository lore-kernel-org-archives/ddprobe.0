Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21446191F94
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764985974; cv=none; b=OMWthCbJiv7M2b6r/mmnzjIB6SX/i0aewR1tkvhSPlphMl18zBdFVNsRDn8FsvoF7gk16LUMJsLYjeGwQft7ZOmI75/5j4HnUzhSqj8LkEebD8UcEPi7IziCOGX1N3kXBIvf+cWsq6LYIgt7Qng+qWiuh3NwzTgZJun9IZqbXsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764985974; c=relaxed/simple;
	bh=lfeGTbjudwonLcUw3Kq3xcyeT4vL4NGDyLKeoQscWOY=;
	h=To:Subject:From:Message-Id:Date; b=naq1+lci/MjrKMwpjSyvqahIusyqHoI/CAidI0Lo4eFayFjgfvdVTXq3fzJoL9jDjyp1x3HC8hPejzIYWqOJ/MQACDaFfKwTBwIdHPN6zzEggr8tC1gJYlfnW0j9EXgWHPQlZzPRu56Ey95polAhUS242bCExiiLAJ7e10cfrjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kewy8lhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kewy8lhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DCDC116D0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764985973;
	bh=lfeGTbjudwonLcUw3Kq3xcyeT4vL4NGDyLKeoQscWOY=;
	h=To:Subject:From:Date:From;
	b=kewy8lhQ+imf6mbNuyxyqB6I+7DajNy7sJcG5SUfLpoa58udQONpLL/7rbnL2LkQI
	 9Sm+fPuVXWYx/ndhuiqAN+WXo60dHLAlslwc3ig3W37zwDfqG/lkzY4ApWYc2C/6F2
	 4oFEwnGHaOOTOKMaGDKh2rdXugJGMZCR5PCyqTCWZ2cBmGsefjuK9przUcKyDM86F9
	 oC1NBGQHrVBk3QGQ2fejPsu7nImwc240hoLf6hwzcjYWg7GUIq2ZumXnl2+FcVRNjj
	 zpYe5OaE6n2aLR85yOGltSN5Qsf4NXF00hCt1UFpvIE87YCaocH+pnxRgGXeaMJ+Zb
	 HTgnEYu0XhABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D3D3ABD6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498597358.30921.14429005874912281567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05b6e40614aec2909a8b87d44111e586efed8cdf594032b5b99ca69f879693e
Date: Sat, 06 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764985973
