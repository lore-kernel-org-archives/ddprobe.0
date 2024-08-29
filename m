Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B6018E033
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724925354; cv=none; b=NYGEEdPXanjj206MiV4EdNmUQnKWtPkU1PB0DucWvYb2uqD44f/3OTyi62Y/uZM2z2SpVXEBiyFN+zzeJPVuu7AELT71r8gVEZH28VfWh5bLEhpwVvG4Z3vgI0LREeOcs0Bcd2afnWmY9I8+g0fixomzHqtzAKUF+VutcVb8dYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724925354; c=relaxed/simple;
	bh=1UKHlBS23RuBkCy+/saGJrdkp8ObnJjgl9uBPQfzbqQ=;
	h=To:Subject:From:Message-Id:Date; b=PytbZOalvDX70w6vrdvHJyiPup0tG7BZ1G46k8EQU9VHVjHv8RCdjXslqbGennDQZFKlWtBGc2vpav31CqjilOEpXudRg4g/Us3NIUOdZAkwet3jRFm1U5iNCL1n2MdRZcut4ZqfrqERuXiVRhA+BfT2INcw6YfgQlZFFwFlBUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phX4b2ZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phX4b2ZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C3C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724925353;
	bh=1UKHlBS23RuBkCy+/saGJrdkp8ObnJjgl9uBPQfzbqQ=;
	h=To:Subject:From:Date:From;
	b=phX4b2ZRjpCmQOdbvgG3zKhPVtEuP1ZVH9xr607pEZvOthEwTYj55jSORkZi+0I8V
	 DpnCIZ4bEwIc89oCR9mf0vDBDCN1YRnEnXNAYJZ57jsvclNMNp8RNdvzeIa/iRWGOi
	 VTfrJTLyPsy+bNvSb4cfEq7RLh2+/JrOSk4Q6Ch5oEtjcp6Ukx+K5I3NoUoBGPS1/j
	 WWBY43pgPPB1hDn/eLUfNP7ovasrmaYjvFirLEbksevVIQFcreircB3lkPAEqS8kHJ
	 zFEuUAmVlHNohuqmDt5iHSFDqDvRiw2nLQKTC8AMg3SKndYBqv7zBIviaz/vBCUx6r
	 xxXBDR56macCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91763C71135
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492535358.22292.11915451892073450717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fae4f7c9b97dc475ab9b590358c06d503538c858ee11d15259a1ba7fc9d9c9b
Date: Thu, 29 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724925353
