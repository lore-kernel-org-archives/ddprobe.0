Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE73383AE
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719695663; cv=none; b=HGeCTP92x2tUktMafHaDAinVkcWqxX782678WvFd1x5igIoFldq4Ku40goYVZC7EAMpxSWybRQXdIUrBmDpc4qpU81fSj0JskXjtvZxrnNa0kiAz5rb8ceZEpnb1+TRKypZOiXicjZ393AYwBTiZ6UKDAadcNZeXNypytPWf9VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719695663; c=relaxed/simple;
	bh=QDH+8a3N/5y5HbHw3VQj94aHloN/4cSxfYPyRHaBB84=;
	h=To:Subject:From:Message-Id:Date; b=SPHeDB3/5LB6zS9B7U+kbPEccHoXhBcy8cBRNsH5LnDaOfL+vtmmnHrJOy2YeH7IWgG1yHKilCH1Sl2WJl9jIjegDX4SeCuacXBC8P6mgqV4DpwBnsMZZugkPNcmhM1efge5200URA1KFK1x4kwXTM/iq1mwwzMo2bJMP+8bjkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1dvGHes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1dvGHes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F4EC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719695662;
	bh=QDH+8a3N/5y5HbHw3VQj94aHloN/4cSxfYPyRHaBB84=;
	h=To:Subject:From:Date:From;
	b=q1dvGHesFtDxfXnYz8Y2oCw0gB4PRiIjXy+pKaZPXxiHqE4rgKK/5Ip0+C5UxwIDp
	 mF1I3wPHHteNraZVZCZm0waqggYD0hccUNQeVCLEyCdv57VRbTalivjvYjgAtDGpHU
	 azEAntEjcQ0V9W46JEKOZi/4yrOYDX2dBE+ai8X6U+8PPiz3ENWeWCXz3p63T80tlB
	 qM3ZI7uHagmE1MCruOjovbgBIDhSuechPGZ4O/k9opAl/ZA/0jwRMpcyyFP1TvKqF1
	 +2s2L69HOLGMUvO1kOVSOlNsHfHuQW/Usj5Pc/EV481TmIm7DmVA0VP4VT7FTZ/wXJ
	 rscQa1UGT7+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA77C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 21:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969566276.19089.10706521038383495847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4798e6cd715110e178e9c59634b437680d59deed184a33ddbe26071b469486b8
Date: Sat, 29 Jun 2024 21:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719695662
