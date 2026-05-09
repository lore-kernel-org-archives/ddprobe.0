Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DC021D3D2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778354254; cv=none; b=IT0iw3l7h6uxh6m0pJIIq0345D2cpC07DeaWDWicarTcpMJKFF9ZJCkXb3CKn2m/dJo49LUMJ5TVeMDrvxHTsTFQnh++SvMXooBDhU7YIM7J0qmYnBLOuzyMs6ad5SQlt5B1zE74GMTwieeN8MsFelFx0woaKxBZts74SSvvw9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778354254; c=relaxed/simple;
	bh=fYIVdHPaKLKVNhsLgKRetBuSy7vZ7wnwBrHkuNcD59w=;
	h=To:Subject:From:Message-Id:Date; b=Cc6zKAWTG91k8CUqQ/7eHwekfL6OC3N1i0L5ONkSfHQrIzoC0kNoJLirhoge1UP8Gh7AJovAf+sPjPR2Mw+0iczF2fBn8gnR+sU1izIO8IBR6mrj4h/R5LhUl5h4RrY+jmtac8kHP8kMyd04Zah9QD6/doxNr6CpkLCqhV09hRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfGSitwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfGSitwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C637FC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778354253;
	bh=fYIVdHPaKLKVNhsLgKRetBuSy7vZ7wnwBrHkuNcD59w=;
	h=To:Subject:From:Date:From;
	b=pfGSitwd66ZD9aj/1WYWCxBWzJGv49Wb3fSxT943mvJ3ZO/j/hKc8CD3IyZH4UytR
	 HKrjgrW2WYFnGy0GM/c7ezqaQSxRZuCmBi0hOI5h4KIdaisp/hUTQfpyo96ThhRUNz
	 RpfvDFO6Q0ZqM+sIarmM2/ykGDmVhjdH/uGW3HiUDeZ3l3mxBHaOglyniLvSR0Gh2b
	 b+ZJLlIZsenz7giYNDF1L06ac9mWlj9wLpf2xvRXWFvzDtE3pdyb2r+ssJOuv8EcLV
	 i1emQVlzI5Oe1npIdJ7dXiw3BmxwUTQXTBD9csTWpWV0kZR932jr88cTvJ+RC9LCdP
	 sUe8HZzAVMA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CF8CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835425370.20073.5443957992450071311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ab1a292da8a07456f4390e8700e5550dd8eb2d03b129a5593338d39c1f6cba
Date: Sat, 09 May 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778354253
