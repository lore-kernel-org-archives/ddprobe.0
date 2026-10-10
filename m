Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFDB78F3A
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791603034; cv=none; b=lGRH/KSNlCJTxxsgx7y7xaVDzv7vry1/uGUHf9TqnTTol+IIHEsSRNtmG2d7a+VAlswoVOJO2yJ1Lwd9pE0RhPTxG7tLNq2rpHpdkuzt15wg+8h/5cMGNaKe9+jIRQxDO6eyeIdzT3y206AJVp3W/j3K/dk/UdVHv+dLpvrxIFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791603034; c=relaxed/simple;
	bh=zr/76CT9Hb/mpa/Ij+iHWHxnnd9xaKChmfh/n4TBvug=;
	h=To:Subject:From:Message-Id:Date; b=ssbbVvQfZEPK/HYm3t7oigi8w0b/Rfd45/8Y60y23lNlXXek0anl4jqqlZtQQAeYq5oPUCgMeT0TiJkFrkaZzy5JOFGQvAM96BURID/v8NyDf1sPd/Swr5noJOEyE0E4mYWMlWEdGWAHDqcdOrLHHq2u8anA+HLQB9ZPpi4+vQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD03avQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iD03avQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0828C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791603033;
	bh=zr/76CT9Hb/mpa/Ij+iHWHxnnd9xaKChmfh/n4TBvug=;
	h=To:Subject:From:Date:From;
	b=iD03avQO8jN3272YMAT5jmiVgQijmCpYms8e53n392STzxvlGsteGdbStwIyL1pYU
	 ZQSHh254aqKY3SMIcVAK8UjeebyvyTid6Z2ttYngQR5Ue7LVftkfpQ8fka6gXylNPQ
	 PPlaWmF2GTco4RuQYT3YBog04tsmOiDMeIzOUzoEFQ0p0hLuHoywfKFZ7+c0wWQ6v0
	 VPCypr6WnxxRUcK/GQVpPEEAW83r282QMTSS2Bsnwbe0fPFqKUJYBJnXkXBWlpiGcZ
	 LcJmbfJxjwFuucOsnSxi/MPQ8nEXKLoBJ3WwK/qng9dS95s5VA2L/YayUw19gcrDM6
	 M37PbjpYZ6FgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE76CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160303368.17976.4540561842092581090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dffb2dc15ec69912ba1c54c0c16a7980f5754b1d1bdf2a2f4afc1946aa9f546
Date: Sat, 10 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791603033
