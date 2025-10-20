Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2748917A2F0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760932194; cv=none; b=sEAvjujQuixWmuX+9gIujFlwdNG1yHbzWdJHRnCx/eBbA5MDZr6DK4k2WTEZAGLkNbGWIj8YMy+R1FjVeQBWkPMD2+UOu8okBl829QLMeYZDc3K4jCevFuHm66CvUftst/gE23F9T0fIu+o8/F/f8uo5CHlpdwyypNQcYyJmcGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760932194; c=relaxed/simple;
	bh=GgcXnQ74DDVyMq/NwPg6nQLsrw41FntOlXIZK8rM2ms=;
	h=To:Subject:From:Message-Id:Date; b=aWPzKTPc7/zXgJDd2xZdWl9DauPK08/p5bK9qHlDBQKU7hC2GRaZEE7NJphYV6uDQkVv4RqepgsY0TndCa/5oOGDclJ3BrQWAWX+PY0eeN1nCubVH83Ef9Qx3uXoPn1RYPQPbudSW14W3K6EC5Me4j6fGjQkhvZfdKwjqwZ4plE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0cctEgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0cctEgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8146C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760932193;
	bh=GgcXnQ74DDVyMq/NwPg6nQLsrw41FntOlXIZK8rM2ms=;
	h=To:Subject:From:Date:From;
	b=b0cctEgQ/slVYun+h80lcTrZzQEmMAytpamR3WnM5g/t2IAoEVxqDViqEvNrodZ+7
	 huuF95YXP9lHK0hGsHoxNOeR/e4wgE8+jiPmdCb5srEv6DkecjJmDG9TRUBCSU75Tq
	 UOTa2UwueN9puj2DoISrGaQyT1Bf8lr2BzR25llgo5/5jRzn0AvHgUbyAQ/bdWfKsS
	 pweXRMZFnWdPC5FG8aJM6LkZq1/6Wq0s3xDCyPvDgbJBdLNvdMl8ZczWXNrDixhea7
	 kV4LUJkD6ExmQBI7X0WhiN2Y5UP+cEkpz7EUABKI2ouFnBEvkmGjze2J4oV4nwR30D
	 ddh+3ZlSHC1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BFCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093219358.8738.9067628930637529167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f880c84edf19690543a1f5c52decc2ab4be4e5378aea3d95b02bd748258132c7
Date: Mon, 20 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760932193
