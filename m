Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6087243304D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791979834; cv=none; b=BSrPcXZrAp52PFE2wTwmg1j8KawL7yFjoor48vx73aB+R9d5XlrD+xGz+8S55JPR5UnwMYNvpk38A+0g0yD1YsFFD8opB9m9s65Fsqb5oejWqU3KmyN1o4ByF2oGoOaSG4cpmfrV6TTGEr90HiEUJCCmJXS7P48ffmxvvbi6IJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791979834; c=relaxed/simple;
	bh=22sBwNVxsGNobCMhiur0vCP5MpkL+efTvHcwpNDA5nk=;
	h=To:Subject:From:Message-Id:Date; b=qQT91OJchyeabxCLCKAtsE1Z3Jl8y3tojfZnnh0azXHTZ0NWXRbZEgHepDHkGT2rLejEdizoxkC0/G4/o7tp0SayJs0vdpXGb9GAv/70ODEd5a4fM0yow6ZyeDZ3kI0/Ju8qCE971ImsrqAZLmTTjp8ohelgBMHTbb6I2l/c7+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcEolfWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcEolfWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2911C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791979833;
	bh=22sBwNVxsGNobCMhiur0vCP5MpkL+efTvHcwpNDA5nk=;
	h=To:Subject:From:Date:From;
	b=IcEolfWyotJBWVnWFhX2F/FYp73nwlwfKYbUOj63L/rY2HDPtGAIIHN9KLFwZwItZ
	 wKhD0gNgRO6A4JnP8TYY6I5m5XRyyAVMeyD1+C7A9A4fx3w6B8c6ZvTT4sufi2N4S4
	 aTnFpk8r7+AuOO4Pah9Bh55xOiwnAuLLoZDMl20v/jPclJJqh0qHRJYnvAqnHO/1WE
	 1/ZvxO1rDe3SnuY75PBKoNsgKNl+uNx1UGyPGlTGReTSJmmG3gX6QfrpvMaER2z3qc
	 yHCtMfUWYAx7Mcjsb4tZtUGjdkQRGTgg+hHLBsSc1Oo7ysl3dUIpLEE5Bas2L1Fr/r
	 j6ssdJWl7t/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2CFCC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197983370.13710.13348635506920786480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88f26b14beab60b91e4c5bb70da3d4dab2f96099ecfb542db76e4b729bd4ea3
Date: Wed, 14 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791979833
