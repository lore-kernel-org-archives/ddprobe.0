Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1571ADFE4
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769859833; cv=none; b=fzx94VV+g91xD6l5ofrdduoNY7XqVtddjBfj2j5XgJdo1tQ2Mc7B2NOamm5kK+QlonkUXUO2B9B17a9ic2d3/hlqb8GhhlzrsNRcswtD1cVdwvFNnq1ha1GDUteCjpuy4d70uho58l+3Ig4Lth1doKxwlTHuqjuCXo6U5EQV6Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769859833; c=relaxed/simple;
	bh=sCWSj63rsaSxrarJTwVZrw76xhMLhOQS3TmM8BXCssM=;
	h=To:Subject:From:Message-Id:Date; b=MeEMxiqUHXsUoMpvXnrxxvHtVMifBzpCJ8wVY7wCYoGfDYtiVa7mB+feCvKRmFywX+2RHxkOH1JNWSc3r0y09ojFl0bBFt4jc/DBaN5mrfWscIHGkSo6ZCL0GcKx57Fc31PdLGMVVf3YZ7vlMwCkrcGWQ71fkaDHx8ZBCNwaNWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cm6brsHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cm6brsHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7539C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769859833;
	bh=sCWSj63rsaSxrarJTwVZrw76xhMLhOQS3TmM8BXCssM=;
	h=To:Subject:From:Date:From;
	b=cm6brsHZuVbWW7CdJDOTyMqmeF8Heuil5+irk6aaXtCt//2w/91HbWDS5hBCDqmh6
	 ZIq+qSf6SZm9OHLIEUgS8MzAOUoRqVIxa/LWLSbkR9RHQJpUcGguTmBA29Z1I4Q7iE
	 tzfqE0fQhiDkTw8HzkZzCEvQMjxJCgJQDqflmH2DyfoOs/lFKB7gWMd6uaKM+eZr8y
	 f8zhqTaYtk5md9fAqQ/L42YN0ZAdiWMLKSa4IpNMtxBLMrSmr9nwM1r9rBDDSuDsj+
	 c1gEOHk9bxDySqorBw/4utA6Mnpiudkk37zfqwB0y62UNQ0U8JAVpDVqQEUqup8mAP
	 h4FT9aTsNv8kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD1D79768
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985983357.21855.8697206690568821217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1f5fd4647039ca47bb3ddd3a48b49d5135265d95e0c479a2ca8eb02dd27a1c
Date: Sat, 31 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769859833
