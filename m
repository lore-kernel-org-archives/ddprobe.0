Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A4C302CA3
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758815994; cv=none; b=cc1vKTm3L3YY0FqFv6v6kWaEowEfKAnZ+SWvHrFWn+AQV5KfvVI+iJTpgv2LKcoIfS7zNWDmEzkoSRZ3RSwj/8skkIkRMkZRIyGnAQuDe88PEeEQeU2ewpqN0Dixe1aqrVvo/o8jVkEQ+B9qj9tSQL9Yvr1Q3H9oibn3brGilLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758815994; c=relaxed/simple;
	bh=w3G3OTfFtffcoAmo2gd4lsDiikxWpb0L2iuk9XpqgBU=;
	h=To:Subject:From:Message-Id:Date; b=oBuVKr4bI1FIcyukGAO+IsqJQj/iSf3/NR2y409y+2+7pQVDqcuaRlY4G7OPzQQfIZnF4lqQM2pyUUQioKzD9h2HTy3apaM5Lj1hxSKSRzse1Wokke+gCzB/BJAIWoTXSEzxgxaq9P9uzNE6/Di4N77zjt8ey0O2JMKRzSK9DJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfpKIDNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfpKIDNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F455C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758815993;
	bh=w3G3OTfFtffcoAmo2gd4lsDiikxWpb0L2iuk9XpqgBU=;
	h=To:Subject:From:Date:From;
	b=BfpKIDNbJfNDMp8Zefxr2UZxUVUtsNHzaPhK6EdVnsnuZlvnEl1dZKI0XrI+ASStW
	 HvJEOiotg1bPQSv/cY6yUD/RA2UhIBZBfXUrynU5PNerGjtDyWgU0z5s7Z6zQWlOzm
	 MKKS3iihrfAk9ffYzw7OZAHVL1CqPoxxFXjbw3pO/gASL8qwUGyYw6mdx1KfNoy1bQ
	 E9u4BUDEZN9hbaFeCSpV2xm19F6jJxFHlWS7/TCnbLv0mpND2G2JsuY3HiHuC3vuqF
	 p8NAeCpSwJArrhEsBpjOifHIEdIOk9gbwjLsRuuWw5OnXWP27vmInpxDSlXp6RVcfi
	 CavD7rn6SHyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B84CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881599358.347.4543020711510078029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32fb27b7dba46f95dce087a14add3b4407ebf00e42ecbedfc40f51648d4b2c8
Date: Thu, 25 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758815993
