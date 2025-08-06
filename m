Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C22A634
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754447994; cv=none; b=h45xWdKLDRn5hOkTH2K7vu1tWZ0/8TwtWWHpnSEH87w7/CtNRrmOwe6tDbOa5xVQO8dzjlTnv653eOnBL4CABRLzMvzNC0wcZ0sQJLr8YZJHkMTbmin1khUWFmQ9Wyi7GqmDX+3ow4tVEUoZiqTKjciheArhZyAmxT8eyjuDS50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754447994; c=relaxed/simple;
	bh=wZpYz88GhB4KhnwtEAT2T/m7eyZsuzf8zmnkXJWJvJ8=;
	h=To:Subject:From:Message-Id:Date; b=gGEbvzEWRjS2jcztXzI8MZv7z6IKEVdjrTyN2jlscxWh/v51oGX4je58s9QxCWpYIRHhxvEoRK1FaAWuWuegoR1VFSZ5Na3e3cdNNLFVkGp+q7dtv6aYfywVtb0HFJeKibn9rZc/D2W28tF8fEQ5szFaX9RNDB5fg4t9t4bqhS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9WoSunB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9WoSunB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D41CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754447993;
	bh=wZpYz88GhB4KhnwtEAT2T/m7eyZsuzf8zmnkXJWJvJ8=;
	h=To:Subject:From:Date:From;
	b=c9WoSunBlu2uVp39dcCKyIijQpat+8qOefJrlYlJZ9Xq3qGuxGM/FHCGrtiGyW8bZ
	 rnX8CqsfmWgrDmouKNz+JPa1y/3Gp+s3nzGTMMy5peRpkQFI7eBdfczUTgK1/XK78q
	 nbKXu9gmxPCV8N+UizG8IUhejfTVYovdDNAFF1fnoNRRkhZha5AhGHWn8ZzO7fVOD6
	 +MlyGnZ4t7mAHvdJyElucuSAKs7XnMgd5RZ5m7GZ1ChAQEb/6KtrAKgVaPZYbw9DCv
	 lgjKRybAVrnJeTl7PxfKco+KOiUEmDnyZ7hn9yvtyzRNVFhc56rK+jRdIc7OGEiLzs
	 PN23gDd31NzFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E307C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444799357.2804.10729802310294235735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e503d900d30c96aab7e0e30023c2639266763d8b48fd6f48680c53c68a94f9
Date: Wed, 06 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754447993
