Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A9928371
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759002594; cv=none; b=On73oIAJtk4nhaMWSQUIioK7T7zJUJHd7GxHSBlAgBw0GScEyIvWD2BbLaE0d/7ccjOWyUQGdMPFhrI8WTFETeraHLTD331MoiBorb+Pua2Cz8wcymJjayUGsLaX1iF1vskAXw4ekVb54FVhC8AKhrz5EZRo2AOeaR/c1rLBZDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759002594; c=relaxed/simple;
	bh=+6feU26uXo5jk7mZ6fEf23Byp6tEgFlv4Nb4P67OWBU=;
	h=To:Subject:From:Message-Id:Date; b=inrsL2h09+o5JCdtVgg4oted6cbTKrHbfuqY+uaN6Y0PJYNc5hnujZkQO/yJ2LMLNlDCDvE2q4FaQhFfl8/O9wqhG3aHZdpvnh/6L5ijaV6OGzERXBAtADvD4+kC4YsrFwl8+7qzhKnfQ2jf9Z3B/SbUaPCkofc+4Kbzv9b7jUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2F5v2fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2F5v2fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5748C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759002593;
	bh=+6feU26uXo5jk7mZ6fEf23Byp6tEgFlv4Nb4P67OWBU=;
	h=To:Subject:From:Date:From;
	b=D2F5v2frZf1YE18IiCvNXqeoqJAH4eggTlY4dPFlAwAUOtJGiFoBqJFSh8AvwyPRV
	 s7QJT0iHln3q5ys/y2zW8WBx9j0kK9bDwBz3yQcEpLWg7TzaM2VZtlO4Vm54qivBDB
	 FiJuzou/+mIP3N0ERobm2UCvyYMdrTALP2aGmn/EzO9BlpcRBEjFtEuaWLk0vMUL1d
	 Er97WA+BbrVsIFBrkOFVFNk008si+rGroHEQx2NHwReXDJVJTsy+u+LXwmBqDdJDki
	 BH7P+1EkPtOAhbgh5ysjPhcVtuXSljjKE0ZN6biG9xLpqM5gbmpaFRzY9L6bI8FwOB
	 QFCZAdHy+7/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AC4CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900259358.27831.4329794951725134597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de18ada9148640bbd06fc3ce704b619c46fc28d5b9bd7e3b626cb229d24f855
Date: Sat, 27 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759002593
