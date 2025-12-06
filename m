Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308C127FD76
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765018374; cv=none; b=G3RhDnCq1dl5KmrYf9E4yDKlUp7gi6ejyMbDtGTK11lUWosJRpy9dqxKP3MM+I7uq9YqTRhDyqSFBeeFW9uPgn4V21JjfSquElf2q7nEV27Jf0XYaeDGM8zvG/YRAMMVWAB1LLPctCa4frxWmD5IqpEchoMgskNJCPlcappstfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765018374; c=relaxed/simple;
	bh=S2tLkRYfBKLCPyO582p4gPkHpprGTKmFyiadJu8TqRw=;
	h=To:Subject:From:Message-Id:Date; b=LMKajeoTh4OIRQImJ5ngXhspKeVUe2u5IF1DTWZRRQFg1/lNWI3+lmuPpWcqOi/2DHtIpKTJ2iw24wCLvXTT+ZfajSpcvjDRKB3zMe/3q2bEHIqSShEHBaEuCIWO/tN5pfeFcYSmb6qBGMRSJbMfG2SL4N25deZJCN6pM8IJt+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+sB+LjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+sB+LjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD580C116C6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765018373;
	bh=S2tLkRYfBKLCPyO582p4gPkHpprGTKmFyiadJu8TqRw=;
	h=To:Subject:From:Date:From;
	b=E+sB+LjYfGKjzNdO1szdfRYgOJmRZpwPEkODfNoZhHHcubSXv9Hgf1W80pXck8vHC
	 p1OcOdAUNvTR8lYLUu6fc4l/D+c/IC+w07BHyHlUcl5MloWd0gMPbQWS3e4MIWqgDf
	 XYUWlOxxMLSmK/pZxmqdmCdz3rWL0+ZhhMLDbd5Js+ffhQnN+QOeEHvPAalRGbm5J4
	 7GpF03b2vTZMgYJRuWvsyjSa9lCA3B3xIwsPaBIgb1eK27uifJNwgleP63OX8Irng+
	 fYu+c/lGTyrQ2V6ZW1JUhGi5FksSxiK3XKm4BReh1VQuhweqlsw3O/GguwcKBio6sK
	 qgeOYMlaOKpEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99492D3B7D3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501837360.21062.8026329316027661817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b439936b89b1c5cf6b12fd87ec1faa409b060166327d5e60808c254219db7d74
Date: Sat, 06 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765018373
