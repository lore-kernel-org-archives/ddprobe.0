Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDD32D7D35
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757197193; cv=none; b=m+Bq8f17eHX83fVtFze0o7thwq65s5Dj+5DozJawpbpNQYvwtrexKxEepezPStCGYY4eZ3B5KNIg3wU5McLxMJ9APl94RyVgw274qeaz0QEVVr5qumh23+SUsEz6GnPcGGV+ll2Feis/uG8Zc2qwR+ly0XbyZegFsk0+vO6ERdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757197193; c=relaxed/simple;
	bh=XF1XA59CKnPdkWCEUx545be7gzEWt6f7bSi3wG2EnkQ=;
	h=To:Subject:From:Message-Id:Date; b=tiFz+mxHzi4wK4VOTmJiLV+w4dtxq70wJaZK7kGM2U2tRRy9EQgWcRw3aeaNQVDmf0Irt3i+B4NtNPjGtctAXLuoJmiteOSH/YjXdyWl0wQH7QiWAXPPB3ErekghSL1BmvT/YCY97OsAbFl+E9NESG2Zc1tgnwy7Ri17pOY57IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDBLG7VS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDBLG7VS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757197193;
	bh=XF1XA59CKnPdkWCEUx545be7gzEWt6f7bSi3wG2EnkQ=;
	h=To:Subject:From:Date:From;
	b=tDBLG7VSqimOo9NxJViPhtpJcyiyqzL098YwVPyW1p06dpvj7tsEU+6mY+xDHl0jF
	 TYy2kOc9CIZaoT9EDOJGkx0NvGPpyVEVE1Xn3A0udxQiA/TTXwdgp9gcbhjRdxaMv+
	 nRy3sX3HklUentZGfHdRKaAaICyWCG83FxoycLiE4tResuaafmGPTek6XBBbFjtrSB
	 1NU4xgXIzPppJ2CpN59LM4CTzWfu/o3nqr8jeTEkli/U1570OQ+IW8mjFvxlMfj33q
	 zwdfK+z3qiGAox6LpWmi/XDWGG9smuTklQ1v/+2ooOd6HEshzxibitFao/Jr7DJE5D
	 mGt6ZK5Nq4TbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009ECA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719719358.22317.16287162086083165357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de25128c0b8f5ab4d511e9fed1a4d9cf54a8203cbeb7f477835e55118274fce5
Date: Sat, 06 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757197193
