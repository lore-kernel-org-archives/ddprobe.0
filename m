Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FB0639
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714815143; cv=none; b=NiuAurBuJAKx7VJ6EJQl0llH1QnXqnAXw2WwVFE7TZDECFQnjatbsRkE/YHqZaajT/Q8ndOn2GPMPdu9SPc0qy/X1QvmOQ+MxNXlUKnMXhz/nxjrYAZtqhlY4Fl061z4WYu8ZiO26B5RHi8avzmP/fnXv5AlxwIE0fe0NZrRwI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714815143; c=relaxed/simple;
	bh=zrU3eiKcw7vaJ5QySVKPXSCckot/uupEP6X7ylNc2cM=;
	h=To:Subject:From:Message-Id:Date; b=psA7mQKmobf0e3Uv0egkxDEnWyLFtnBVZrUC8GqmqV+65fhhE8nd1vZ9Fg42DABKhmZCZxPDO/jL4l0XGjm1D2sVz1WVYiJ/W2S+caBQ4Zi+w8HNeaDruAeaoZz3I7i8mD1b/q8wlUMzl1OZRz6XgXPDuPHoByxQlO4TriCLmBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RB9+id3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RB9+id3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8970C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714815142;
	bh=zrU3eiKcw7vaJ5QySVKPXSCckot/uupEP6X7ylNc2cM=;
	h=To:Subject:From:Date:From;
	b=RB9+id3JfxCDerMBligz2oL7mdVSUE7pq4/ck8CMA7MwmWs3osA0bRvLUAfDXIwUq
	 anMK8qU0PgxaC5kKvPkhzIFp738HA+B+PuTkme2nVeyexmTnnfvl2+GS3/lbS4lFUI
	 jcG58loLOYnzdX0cVPMpSj3lsclHwVXYfRf0iCJP+Se8j/GIyE8vZeMgPO/hNcw4go
	 dXg94eBtAStUrN0841TV947rmgUKzt6JXulSAkpO99LU3EFAYhRZUUq79Y+bQQ5win
	 2BeiOMNabJwc5pKTC3RQqJU18wv4R7oI9Acgqb3t8D/uaRRrFu0LcuPV5QjxdAxSe4
	 UMFgP1x7DZEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDF9C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481514275.4491.12179175922981538512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b7daac602f6642c1cf83e5066f2e26f929dd74159c6cafdceebc009de78c08
Date: Sat, 04 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714815142
