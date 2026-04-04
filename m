Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAE322538F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775267134; cv=none; b=VfRvbDmFXLSfCuN4aM9ofgSQCb+ni0CBjOAhFCufr43g5yTrerxQJrx6eYX00dOGBMMqfXVIitdoO1/FeQ4uKHV0tkwq3py/ePsndNMFiG60bFZtBW2LhkMw8xRlckA37lILUXmCyKway1BH6cBzP0HGgP0c7cDh1u/LhVr73i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775267134; c=relaxed/simple;
	bh=nYBHsg8t4B/z31XBdYvJIOXC04YJ57AodgAgKrA5nSg=;
	h=To:Subject:From:Message-Id:Date; b=iw96oJSOuRMsg+nKKFlK6A5NYOFN1ggg0KuhrbCbe3txxkgMz6KEBIu+19kMgMPCY2rSG/rOIhWwsBWbiGU+b3EVWr8ayGY3MshTONwr/EyM//YleKEeLC9HaRQcJuscfkUMBPA1n3zxQOA9JSgS4IsbABXM0RsbIIoiDDsZASY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKdJn542; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKdJn542"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA41FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775267133;
	bh=nYBHsg8t4B/z31XBdYvJIOXC04YJ57AodgAgKrA5nSg=;
	h=To:Subject:From:Date:From;
	b=dKdJn542Cu7WbCy68hDBL8xuvbwpB0XRXlS2yXKfJrs2CYG51kexaCclLmGCL5yXq
	 R/Hp2Uvdt7icvLf49M5Z8EZ42Dmao5qa04dnK1kt5JaJZ0YhFpF9yOyedAt33jnyB+
	 hw19W7TSC+BU5ToKx0Vcj2NrE1SgWQYtUL9WD+YI+Mm9fZKbmTn9Mdw5+Yi6IepptM
	 0KkD79nDljU9k0g8HseOjGUEESOM6cySHeD1vaWlNSQPGGK7odXLtsGEe0e2qGUI/z
	 MOAizomNx8b9FHH1AnDrFq4sFYFBIHs5hLPIpwcZEu+GGUe438spE/588pKRGpwZu7
	 8E5CXG1zJNEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB63EE88D6E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526713369.32348.17598847056404557425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9500de6e848137c0701ef5aaf74f4c8b0d3db0c5848f427128a3660fb4da04e
Date: Sat, 04 Apr 2026 01:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775267133
