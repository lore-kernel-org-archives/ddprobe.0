Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23025200127
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754431794; cv=none; b=ExbZfYSr4LR0YOplg/R24YA2u+XMD9RiWoKHVDMPWW0OmFgqmtaCqaZCSuPOCCIfJ/yVrw/ePHxKgDNy5w1mPdO1bBgF2rbPpIEllPO2bOtJj7RyNFflnA4qu9hbpskHPydQtOEulpD+3A/cbIXSCNwGdT7fNDYoiBKFWBP9/zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754431794; c=relaxed/simple;
	bh=qTtwcGllDZAXY+sDYtd74HSw8hgY3cvHHObfdrUrX+U=;
	h=To:Subject:From:Message-Id:Date; b=oNcUip2tzvD5vAx3v8RRmV37sfm8JiGg/cDBtrS7EfkkgeF28Jhzy0Apio2SAjP3Ma9IIdN8KC5FPSx3Btd1dyh6MsmjMNYi+wqpV5fAGiyomMjTCKcBWkjTrbOMqDRGrGa28wsaMkyeJoLhSJ0QFMHKwXK+Yveb88zgHMt/uJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaEH7CB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaEH7CB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F21C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754431793;
	bh=qTtwcGllDZAXY+sDYtd74HSw8hgY3cvHHObfdrUrX+U=;
	h=To:Subject:From:Date:From;
	b=UaEH7CB6RMvpSpzze1YIpiBu5fQ5boILR6Fzo3A7w49F9nl2HorQgWHGLQI0+le7b
	 oBIheBW2O1LfZIQvBBeCylnZiYMZXUyz4aBhwEwLJuWV6lQOYgW8u9q+LoA3qjTwvj
	 zMqd3kM4/dcd8O6jutrlBdLaw8fVlenUXZe/VWLGfEueK/r9KVQoKOHokBuy+UYBLv
	 M4DwkVl+1n0tfmTJcEdUfJARi3tVt0hS1mPdcM0HBqpMG1o3Bq1Jg2/aXBaJBRmcoJ
	 RMq7TGBcdbVJzRUeUwY0O1aRL+F+YvMENaqoVKs8k+1dE752A4ByPXS3Zq4MpoWHP6
	 3NLuiPFY6TyAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D35C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443179357.2686.12336267013140581204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6209b36241167b061f27acbcf02fd4323806ab85c61bd9ae82ce4f7db74c4a
Date: Tue, 05 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754431793
