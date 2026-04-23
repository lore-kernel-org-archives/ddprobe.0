Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584503A75B3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776964654; cv=none; b=FV5Hpu1T5aj7kyhcwTznBO4JYKZwRVq4Tz52E73u242JjyyF83ayTrUVrLo6vyaY8nHCDqzWIuYaL/XdUxxowiY7/neuP02ccpsymP8kQ23c9NrqUGYXQntEN32tKrlsBd8aFVzpLDZjM1HsSVGtUOV3LtKrCh4bhZtfLtd3aoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776964654; c=relaxed/simple;
	bh=RYhzhEai7xnV6N6/+Sd5/KJll+m6LaIh3GVz1IPF6Rk=;
	h=To:Subject:From:Message-Id:Date; b=TpEArziQrG7vnZC0/mWnPpYHPBZT2mERsMk/B/+6x918CdbFBopN6/ZftppG/hGSEmA7jrGGaOdLQpUVbtq9dHj8B4JjAWnmusmZ+wa7hT4jOy2XNQ0pw1XzEjrmBJsanU4o+0N26y1T4L2GE08KuQ5yPTTx6ZxPJe0JRTxmUH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5ENR6FG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5ENR6FG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BE4C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776964653;
	bh=RYhzhEai7xnV6N6/+Sd5/KJll+m6LaIh3GVz1IPF6Rk=;
	h=To:Subject:From:Date:From;
	b=I5ENR6FGdcyrILq6kdffJQCM0wYfUuVNRvVsK+jsC+w/NdNXi7Br351F1ixS9LMun
	 4dRtoDWTW/0KQNVrHbqLloJJOaDxAG4QezGqO4M0N3k2ujZAIdlKuiG6UyB7vC36Bm
	 XUdJjAdxka++qCPS0xjcbDvOBIFN/guFUlZdhU01fjhUu0/NM8bCuEvq1KQgUedSSw
	 NwyvUoF/EtPrheeek8XUB1spV+vL/IhVat5o2KFYKcxjXIMKItX0rnEzhGSvLSZrQb
	 A8hDTVd3RS+ldDjpSoSLoofsJaToWEVxTBRmeLQUESi9GXdo0/k9ystMmPlTLmjTpg
	 ILXtjAvTo5/7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D74FDEE2F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696465368.31306.14326830031443720650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8aeb06ba0e1625bee8c56d024ce46d37e28f4d5cc4906a5f1e1cf774ed54b0
Date: Thu, 23 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776964653
