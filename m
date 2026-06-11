Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EC637B402
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781214994; cv=none; b=ZDmHTdWM7OV6Lkq0DOqMgnu8HdxzaTMhWk8bgBtWhpsOR7xiFFOzaL4rQ5faH/vZ/tOl9Thp5P7WMEakPBGEfUCPG+jt2Ew9shR61Nb26C/hzmGQhD7WGna1Qqv5WidSubdGzs9bdE8EioVYXlUa7X01yn8AR2myGT6ZUFMrTto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781214994; c=relaxed/simple;
	bh=6Vp+GvvDaerOw1D1BPEYxOvnbgAtayYFi4F0rc7zv1w=;
	h=To:Subject:From:Message-Id:Date; b=EMsjt16jqna4cwgQ93rKAItN3/Cp+UKFH78xhXky2YZQIPK1jOnTlL7Bwq4IWGRyYneZ+nD3PRHmvEdbV9EGNZ5qraKi7POv45k+FH+0YWxBBMd9QFQQcvU7TjcCZNxbg3LsSyRshknYr20PnaLVrMD4r4B7+AX3AM5i1Iliqng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4uU/jUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4uU/jUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96DFC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781214993;
	bh=6Vp+GvvDaerOw1D1BPEYxOvnbgAtayYFi4F0rc7zv1w=;
	h=To:Subject:From:Date:From;
	b=H4uU/jUE8c5wIwjGqF7wd3ItissxD58awBiF6+Hxj+ZDjjPPLeg2x66fGiigShiKX
	 G1OZlya0W8fW8hGRWJ38qQ6znavGT7+dp3KngzHOlt89Nv6w37DW8KbFGLYW3j0NQJ
	 JS8f39km1mQ9tcfLET1S9v/zCU6hx5LosGjah6V4Sot53lo/G4oCni2fdxnVxJdWXP
	 WpL8qucDeKiXXKz2GC0cDRneCCesm3k3OXXyIRrllaySChfpJyWKTBCOYyBdu57dlo
	 dP3Jt7kiszho7MF8Ip1+Lpdlc6liGE65vhzv49POF0sp3pD/OAQUL9CCacYlxD8W/s
	 kvLlJdYHnFlsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BF0CD98D6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121499372.28463.17738742067997534136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f385416eccee8a22808b805981e636a788255503f126b3b6ab17fcae14e05cef
Date: Thu, 11 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781214993
