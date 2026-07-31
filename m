Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA3C25228D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785529834; cv=none; b=ERTt2ACVvxT4vUp9bmjscpygiWQ2YGp5CjS2ToMjZpLOFiY0+ISImQCJ8rNXShFCT+hI9JqsXkavW0jbJBGqKj5DOHmG54R0xkYO0Z/jbUox4tC9ZHjA4Qll6RpmqxmwvCwC1h1t3oHF+3ZTj2vrNh4PEEwk9CC+i5DL/D0/rdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785529834; c=relaxed/simple;
	bh=mLv2nrEusn6ualk5RvwuNxBdVxjgVsJOKZW35SpjQPg=;
	h=To:Subject:From:Message-Id:Date; b=hsDdkQPqHXXEVdjHE4b3PNochNDaSjgrd+FoWGuRWTf+L9NGMpjowtYRWCw3bkn9gZQAwEAdtj2og3KiZb8jdkuQTsXO0oRpszW7GZOCKVIDki7AcbuMr+sUw7fq8JxEsv6qySIut0qr9jEjLZKn9/1Ykx2KkiQhOwai1Oh1DA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcOxB42w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcOxB42w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC190C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785529833;
	bh=mLv2nrEusn6ualk5RvwuNxBdVxjgVsJOKZW35SpjQPg=;
	h=To:Subject:From:Date:From;
	b=TcOxB42wd6BvA9Fu0Ia/CFOLokRUdzvEEtkK53A2GlLicWVzySMu7qgyxj6/rUcnd
	 8FO6fPxbxYPK+VUt7l4aPk7sKkUAaegg/turLkCWVTZYXUj2BbfZBr9tK39vCppmir
	 EjsFbk9Le55KQEpQ5ihMhHVT2arN2EjbkT7glxdGJ49i3ZeTMPBBg75r1wNj0BY9Ze
	 aVbHz6gyb0TKmJJjXjArdWFC6QPdEfVy8Mpv4qpU4mD3URkeVNmYXxO3ROX0ZPY4p9
	 VZFHTLuswxQ/PndNTX0gfMii7z2gbAhGLQCoRsIrKL0PIff7JUskoi+tAgiEjHkvUo
	 1tr18lRzz/W3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A83C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552983368.6333.945300309777485414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7696a9c0b543d56e27395b48a9bc4f9bff1c05ee4ce40f37539cc54d79a05a7d
Date: Fri, 31 Jul 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785529833
