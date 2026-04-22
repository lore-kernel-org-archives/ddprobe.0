Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D070F3E95AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776862653; cv=none; b=hKH1Xpd7Tt6gXJoH0FdnniWvVA6hmXLBpXxPgVK5fGkQ/KpYPUK90PTxZ22fHQQYZGVFCz+l8pSyTavFndSvN5zv4NgNEIFmpQv8SPFvpykFVy/dC/Mt6+JOWzBSompPRoEJAUnBR+l6x1189XPzrYPePnkiwHdDyymsn4nEwe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776862653; c=relaxed/simple;
	bh=yhzeG6nNQxtEhh3gIgsLBdbMexUNC46dXtTqW/WZfiw=;
	h=To:Subject:From:Message-Id:Date; b=lu9/FoiNLEE/MOiajyBoZuqSp9IWaItCq790x9r9SjsYB7RSx+koaSHc9dN+qHjpIsFF0rrgJ64MDnRnPYjo3tddZZ7C4roDJ99FlzqhKz4P7d2XSDGNK2DDXmQvyahNr1GnfjR0TtmRH1ZwZrmclDvtlEzrQhrRFjqEueNkVtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HK3YIsy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HK3YIsy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D70C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776862653;
	bh=yhzeG6nNQxtEhh3gIgsLBdbMexUNC46dXtTqW/WZfiw=;
	h=To:Subject:From:Date:From;
	b=HK3YIsy9Hfcx5MOcxLCzgZDEr03GSNMpdpvjpEMYK1ITum5mV+KABJi0XLuKtjABb
	 TUDlmSGO9JYZt9MS8Qv0JKL+KN7Gu+4tH8mU3RIUjyS8zSB3KXJFhvsnta4JIHkZCJ
	 0IFzjkTqypgjAkg/JXg0vhOfJqdM1w2rxSmyUS366vOAWLLhdGGp/ZDUMVjVqVffsc
	 WfafPzNDeqliWZlIO2/F//s3DHJLhQiqmBPH2yA3l9YetVda11i5x7rcZ8HnA8zF/j
	 TM7zNspRhxQc1x5bHtAgnLXt8OuV9gmVVzGZT7UqzA2/NX/ecV8HluwZpvA3LwmedY
	 ozOWb+DYddmzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E3F9EDC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686265368.25276.16734384997043708202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d40d6b2416cf7aefc57ebafaf9d750a625a8e197cc9ee17b091bf296fb981a
Date: Wed, 22 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776862653
