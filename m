Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389981CF8B
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741738134; cv=none; b=QD3wTFh4ouUpr3+YFMCRjFsqievlygQVr5OJS7cuJ6NjSMl5VsadHVLox7v9SU9qJH0Ky6cG8mhthfDHoSK+4Ci3IASUuWj+n4f11FV0MREyZITzWWpDYDEHGIgogPBRTcWAQTS+dfeWBqi1AAlwH4AUWWP8AzeI3dbukfDjpS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741738134; c=relaxed/simple;
	bh=BhutQyCs1taoslA46O59ytsu0BlDwfll5Gl98uY9gfQ=;
	h=To:Subject:From:Message-Id:Date; b=kb9wZwVM/nTP3YxEdDik1XPl+TLWW3fKwV6e/aJ4edBDmBC7XDbFcTFFo9BE8ReauMVRqBfrEOa9S/WiFToZVG4KY9GRV5Ad71YosngisR6LVaiR9v0R56vyHyDhb7QH35UkT/PyUGGFM+3dbKyETSuEkR41hOeLm+p07vK0mdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO+cwU3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO+cwU3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA680C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741738133;
	bh=BhutQyCs1taoslA46O59ytsu0BlDwfll5Gl98uY9gfQ=;
	h=To:Subject:From:Date:From;
	b=EO+cwU3AXT/c/Jxg/DY9oJB9hnbIfQnGoy21QEgUDQ5Gqqxdg9Ojt+N30qjK+lzQF
	 CDGPmv8Xl8zrHy+bxzCgxsTiL5LdNMciC5MPGqpu0+yJMhhLiOaihXrrZ3EhzXZMX9
	 Z7hfoakxdPTRkA6hks8lDFk5rabbpCFHIFjwaZKG/GBoKAfAZahr2P90F1O/cgsdPG
	 jUcKGOb0R8mhupu3eyGMeP8t8BVV043GNKOLRKOiF+02SXFkEwmggnK9a8YPPhwyG1
	 i9BLh612YB5ejI9hluKIKcRkkKa5wds/yzLt8p9udB9Wuw2iINQGFLJR3W9Pj0BwQf
	 wgCCeIhYeQ+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97942C282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174173813360.27814.511055100635125996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e9b37293b378d3067559ff65efb2100a0847b7925f334a9809584f0bbad987
Date: Wed, 12 Mar 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741738133
