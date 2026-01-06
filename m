Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D83A4503B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767675834; cv=none; b=i3xnfiaAeRYe+7fiDxm3ihcUlR5o1prLnfNZ2tob8gp67VzUurdfMifAaPwanhbVP/+iGiViPGMJg+P4EEjwqFaRLyNzIRDz/sKjIE1Z7my5NkltBjs1MHWL3QR2h1KpHG566deX1wTzxsBGvjilT7ImCE12TJ6gDtgsK+PG+e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767675834; c=relaxed/simple;
	bh=rHnrpq1ylJ53TU/UU91Oi8/xzi+fP4AP1U8KDTycryE=;
	h=To:Subject:From:Message-Id:Date; b=kVG4duzDK6JrKgKiSzpq6ueRosWdwLmE8M5BNfnk7HugHTgKT4Ns+CYtR5+Y4pMksCNcD1lopztHQYZyE+fg7BqN9D0jVpLEYCKqqitfSYyoVpiNxXI2xK7wEKdvEusivAC/DIZsaZESar/G+/3h2QwaexTrfpdeKdpKOzgCE0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZUzvTjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZUzvTjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B17C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767675833;
	bh=rHnrpq1ylJ53TU/UU91Oi8/xzi+fP4AP1U8KDTycryE=;
	h=To:Subject:From:Date:From;
	b=cZUzvTjVr04tIH7J2AZ9lR2JvCliHIfm3c4LpR40KaMKvrLo5Hs5DWUYWKxno2/ll
	 oyVKOehXWagPDjXGqZ2GJckY17YfHDaLW/178QmCkx8bxVf+LjNul6angitnlqX4L6
	 ssWmWe0G/2IgDzHrMir0kL/IH6+D4AusplSWqNWs6o6DIV6dcnwn0CYJro3vgUsET+
	 y4lNW5XW0/EzRAdAAXE8yCVLBoAnS2jbc26xDUHILx3hd4ybKJbx6HFP33Ncu+wc9O
	 BVdVIED78N272ztOBBC575oOFiMMmnnxDFdT8PDoyYP+jfW5kEO0BC0lz8tOpQxMlo
	 4Yesti9nXpjyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EBCCD0437
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767583359.21320.14753493189853430917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb5323930570683b4053adaf2d1f69b6f5c9068f41e035d202a9c5e6f0dbe91
Date: Tue, 06 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767675833
