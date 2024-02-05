Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA0F138A
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707091697; cv=none; b=E0rFwfnmhuTMerj8/z4SKraab9RVcyAfVaTgwEfkP7seCrfHKx1dxdKSRMkyRYdBjxTN/beC0w9n+3smtvTeOOVu0tl9SCeeRR9P5C+70T7XV2PAGE0CDb9Bw/DveBraCQHZNr05dXM+j/BvQqBnrCj0zqUgUhM4l8aCFSkdEcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707091697; c=relaxed/simple;
	bh=eN6gH+BlBQDMLw69HStit2XwQSWIJUfIbK07Fd9SP8E=;
	h=To:Subject:From:Message-Id:Date; b=dk3y2A1xA1SNPPVGza0O0VTUPXv9DdnMMtqL2J34GBuKRPL3Q6X3bwFwwWN3xbLOhrMx6xqiQ3fmGFK/dTKpTglXlx64S1hPPNL8zoLvCph29ouoCK19ZR1y2CVPdYM4pfBO8lCgiY7WDl9tPKSlJ8u5HalITZBHIJUWevedoNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qr65swMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qr65swMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84892C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707091696;
	bh=eN6gH+BlBQDMLw69HStit2XwQSWIJUfIbK07Fd9SP8E=;
	h=To:Subject:From:Date:From;
	b=Qr65swMdP4UCF2aFtVsqowsEL/QZC66b6TwtduK8Vr4pJ2JKKD21eWnNU0JWRylwS
	 5p574mURdIFhkd/H0lIXh2BVKTqav/DhbwqJdWQrR+w/NNMmksHMpFL/cSe7rJ7wic
	 O97eZmLqk82bShhFG9a/1J1cvQREes18R1hzkF77hFCS/F5YblerJM0bS3qIjsVjlD
	 qMrZeW//7LDboHHd9UVGCRvwbb9Qcbza8tJW7pEBD1I1L3BzFVs/xdWaUDVBZqOFPy
	 VBEHwGhtHbrfME4PQADcW6Y4QZ8TUD0SBWMrNxihP1/XtTobZxUexL3kqA1LlQeBQt
	 fB1FsIqlDGjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689E7C4828F
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170709169639.26497.1270569211833752713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb90270f02262dfa802bba61140895023309964c3dfff5633a07fcd12127b60
Date: Mon, 05 Feb 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707091696
