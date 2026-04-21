Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174E3175A87
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776753454; cv=none; b=mmeXqcEnuM31quzVrzgapEUj7n6RTder6X+ZgceKVY0ikO05j3z0S02ouR1HFWKxkQXeLEUupXZUVQKIDtzAZT8tqIQlnqphKXHC72Pc7yqU+ORnQyA3KAtMfV3ijZYrYQuVJcS3T9mcEVlzMhbHG5RaEVAaKcNoTZBTPoE9toM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776753454; c=relaxed/simple;
	bh=Sd2xkK6N4budLx1wZljnp181qZvQOHkF2Naee2LJymo=;
	h=To:Subject:From:Message-Id:Date; b=c7LCHNo7ZQG+0HZwWPe/XRBdMCopOKkRKTLgj8x3nOoNHHlGdiEBjjUncY1ClMQ5GViGPFbctACyE/9FfGxJKgsPQYWyiFfqLvOxNTx1vzMgELCjPOx52Vrg6roKcL0FXohI+tXqXSxJBRoWFVzF99KGsVtUgh5USjxvqcR532I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OefRFjnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OefRFjnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E22C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776753453;
	bh=Sd2xkK6N4budLx1wZljnp181qZvQOHkF2Naee2LJymo=;
	h=To:Subject:From:Date:From;
	b=OefRFjnnSCtKNJGklu0jd1NnfpM6eiy1z4Qqh6iHFuGMfb211BhOssyY0scZGp4g7
	 ediiihZ8nsKDOsILWTADGKGDbsQe14HOWQph0Qbv4J8c9BCEU7JtN83M1l4L1aswZo
	 VJpEmsP6yN/gaqV3qDLuMDH7b4CqR45GkHrOse7u7Q1OzkURiuGAaWkLvBFMGn3siz
	 WYXn50hylgP0BhM+3d2h+gkU12Hm5PdEnN/DVnQGP73cNqrh/gxjcnpm0ashITz5qq
	 6qiOIgZgdPHoznLtf0evfPxh2RhZrxJAXFOuywibjCPO6jAXgzyfpcwYWd1RDh4tEM
	 PuJEQJavaGMrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9745F327AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675345368.14289.537167524788347875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ee019d98e830e9f65e8ab4d176933b68d1f7cffc8c4999b764bc7571029026
Date: Tue, 21 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776753453
