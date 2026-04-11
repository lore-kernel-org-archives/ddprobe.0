Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1895A19E992
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775903854; cv=none; b=ShNt+VrIbDgFJeBPABalc2JFmkGtVp+V6fDtZBbfTKnX5g5jw7ta2Q97DLjwuGT0W7ISQHZGIDm9QPJMN73eYoGSwwIX98p5rfw/4B1hwdRQX2D2ODqBQEMketo7IMIIFuhxWdL7qriS7XlkyahmUt1mEf+cs07AJR+vd2szxGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775903854; c=relaxed/simple;
	bh=u23wPm0BtgnXkx009gRgM2Veemz2Ke+R8UcskLgxK10=;
	h=To:Subject:From:Message-Id:Date; b=twO+Ourf013gPk1NItUs+heqFGpH1x/waaUuIMLhGcE+Th6oiJKicBBSgE8CVE7XKgf5MvDhi0FBYsou/Ms8OJg8flkkMR90NZDxV3ghVIn1QV5cpzOZyZOC4H/HtYMs6WlUPQTWRipINMRgPMDsCz/Ewt7Avjt9NblkmUNh8jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q34Ngpsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q34Ngpsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76F2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775903853;
	bh=u23wPm0BtgnXkx009gRgM2Veemz2Ke+R8UcskLgxK10=;
	h=To:Subject:From:Date:From;
	b=Q34NgpswihYoAHLd6alBszY18QZx8Ksgfrte80vNORiGQd/9J1/PkH5ev3QCyFvFX
	 cBfrNlfL3Yn3VRrD28UcHalG+uCR3oO7s3yu8Jje2jDS2qE9NzuP7vW7EzGDF2gAao
	 nQkMMhRUiAWmYrm1u8XUOAoAz0gYPK7seGbWoitG/WeIcFTGBuKjKxG0jPljW01SQt
	 UaCc7JtnMU3wyeZNdRcZIGXZduocWCD2Yw9IzGO9kv3NHtC05nttzOdziIg7GmQIAj
	 WL2+C0/nECnGYAJOK4+ucrDDOW21jvwsLc6OxOib8IpmcnBfqvIq1tPIKhAw7UE7w9
	 7r5akPC6nuR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A8F3ED44
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590385368.30790.10257243558152429919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a5524ec4e5cf552e97f8108a493fe94d0e3eff2be99d19d26316ed766f4b03
Date: Sat, 11 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775903853
