Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1184D9461
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753760994; cv=none; b=nhwX+Bhj5VXqVVACxBI5bfYzLutCxGfXdII8Z2mxkcOm7ZM2pO6FcIhB+I5kdITOpUtijdVE2pkV5LwibUMujeogrHafUO1s4nL4wM6GoMIDBYxXbFY+7LycCk3xdg7pgS3UEgo0r6JayfFvnMkyUoiT67lM/+3/zjkcpvCIamo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753760994; c=relaxed/simple;
	bh=RDhUCPntBvdfM/i4gMWBY89Y4b7YDV9rRILYczADhow=;
	h=To:Subject:From:Message-Id:Date; b=ggY3tShB3F+PMNnVwBJHrIRj71GDq4sYm3r8fTKwsw433FYXsjl/++p9lQwyC9QcDcLCbL3kcfuajDG+mYNYIYb9xG8sGQVJcbRfWrjiPgCpzMx+Mu1zsiWGMagM18EW6LsTHleo55WqeKZFhrK5uM2DpG7eW4h43MrYx/bX89Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDPvRzEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDPvRzEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4099C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753760993;
	bh=RDhUCPntBvdfM/i4gMWBY89Y4b7YDV9rRILYczADhow=;
	h=To:Subject:From:Date:From;
	b=kDPvRzEeViUvE47BYUF18U/Ml6DgBlVSp4wjmbBiSBKbJH8pQJ1uDV+VHmPNjAgwN
	 wzk2ya0beZ4xHKWFLnAZx9GUkVPiwxdTeDqhgbWHjWBflSqlpCcxJcvK6VUE8IkYqP
	 xeF2VWKIT4tUDbuRZuhwOMMQdiGmRS6lnvlfezanYQgcptOrvNqCIYHY8K+P/SiS78
	 3ReRt7S88+G5lRwV6wskxlK60mNTgrmrX4HMeU97Eu0m2u903pupy2kWzOtxxcr389
	 h7d/YGQKxqqLMElk7OE+dfnfpgbib3UkEsZwI5hsTnaEGVMcpbA5XAPjfKCCX0tmYb
	 1W0ib6XvgbTFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931D3C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376099358.13688.13048977130267339692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1efb88f6832644a41757da43aaf44675e380d041dd4dd13390515b1cb96775
Date: Tue, 29 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753760993
