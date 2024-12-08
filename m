Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2615E22C6C5
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733659554; cv=none; b=VYnBpF2Qs9GXkrh303siqv7HeoQPdNXX+RwAkTKzMy6RaFCMgcxds0nNm4aAgqPuIr5yL9AzKB+UQc5q4wO36Mh5/y8g/JGvzlGx7zSwA4/zjNjtUFlGbTmR8ULVf1T3kZgNADK8acLrOXpNKBpicjkmMjmKdEra8x4kW45tN9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733659554; c=relaxed/simple;
	bh=zyADLaJrgn6fi9BAmRafpj8METS7pV6NPuYjnm2BrDM=;
	h=To:Subject:From:Message-Id:Date; b=MT5xbAQ/j0T3giQx2MIvYe6t0O7vdYOhud881p4cl02dwqSAvNdvl/1jya+07LuWrYtNMFv+yhTKsbJDgX8S/02piuvX+lJbKOACGufEHl9yBayNlGx+3Zinc09ldse1hGzRMoS0Z969jy4Ri9CPXpPxkmzK5O0Qbm1XcPhw1oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuMM8EoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuMM8EoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18ACC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733659553;
	bh=zyADLaJrgn6fi9BAmRafpj8METS7pV6NPuYjnm2BrDM=;
	h=To:Subject:From:Date:From;
	b=NuMM8EoYFq+FMREGhFBhjCd1x5ZvenTa8zq73ssv7O0v0g9kH6Y/8lRWdi3R69okk
	 X25OjW8bdp/F3cIo6KPC05mlAHh/7axHhyuEMBJIAXZOhIfDgMOFRsSXafKcEJiJAz
	 aMRG/7y21fNqA4Lcjz67OeWbrr3keTa5oH7UsNF1sNpD0aRF+YxbhO7wgZtvgchPDH
	 YxKXf9x5pxMo35CcqWB0jr6cHL00PEKbbuPjxBg1ZfVFouzGzaJSBuC4XhMKsZQ+Fi
	 I5dalMclOqpf4bUidXE9RRiYtnDQj8jecSrUWFFf8WH3/nI/Sh3LJvEBIaiF6NZ2Fi
	 NfAYnpOYl8Wvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADE8E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173365955358.28693.13666570868389040838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a06f48c6831ffaaf032e1c82d4b7424d020de0a2490c86f4122765e75c6ae3c
Date: Sun, 08 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733659553
