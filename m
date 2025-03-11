Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563E11386DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741682335; cv=none; b=FCAz81Rmy7Sv2BN8VxctdD9+EElN+6M0OFjoaKbOtYiejmS4tipIxg68FmbeCOXBt5DYlIJDuxtH4/yX81wfl4yMhsBx/R9gQ2HDZvMW8KNtHDYoRGjBv/01ND0xjEhUQ8ReP7NWJE5GQeU1IvwX8KVh+JHM40sEO8yQLFYSseY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741682335; c=relaxed/simple;
	bh=BHqX8AP+o2g/81mz9wxXGSL1Mk2GfyPIHc5Hvl7UcFs=;
	h=To:Subject:From:Message-Id:Date; b=iaF08kbEl4pgg3fiULHdeFGJOO8uImjdS4W5ihlSql4pql/pcgmGUMgxZMqAY5tR3s2eSStOeeb4rGeAl0G+NgFbsLqokNDqGWWPwrN29QvPTeXgnWIWizTE56qze0FebUFMbq1E74xsq7n3wF4f9EaakW7IeHwC7LrsX7EYpi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKXUEGn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKXUEGn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8203C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741682333;
	bh=BHqX8AP+o2g/81mz9wxXGSL1Mk2GfyPIHc5Hvl7UcFs=;
	h=To:Subject:From:Date:From;
	b=rKXUEGn6j/pYt13kX6BxhJrpcPwo85Pgjr1wzeIa/M1fW1qqcBZPBKMRjLwtDxsRD
	 Fa4LxuMEE+o6AP1pPXo7L8hfGH2z45Ho/10DJRoWLlOqGHDsIWERA6MRNiJ8LsBLlQ
	 rGEcoEpBXliiuADH0n8Po3MH5Y43GeFSpAQHhV2SFoNaUkWSk4VYiMXmKMfD00t/oJ
	 X5Z/+gdVKPjz4GYm4IigkimZisbuIX/xKEr2bAbTdS5FZnFcdz9h6exo1ob+JhdDSh
	 V/NC1i+4xGKkpBKvxYAA1kRWtB9S3q6t4l/7iLV1I5ScMsS7AfxlZsRvqc1IO6md5R
	 hqvr5al1wsN6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931ACC28B2E
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168233359.21715.16130286302390885231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c1aaea53c69b92d1903d5408b5b52626d873707b58975997a20f481bcff89c
Date: Tue, 11 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741682333
