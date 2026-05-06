Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6772FFDCB
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778063254; cv=none; b=X/5/vY9lMXRhz/G9Zh2XAy60TqR9XWBq4Jp6/zbbWxK15kczb/j6aqhrtwEsnBozYLh2OZQ0lMaTzb3dfB+oWQiZ8Kb03FX31m5t1tp0ewKBHkMGFGpuZ79RhAi0+Fte3GQHrLRWAPjAsl7enCWtbuUBxAoCU1mHfgPYHb4oD90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778063254; c=relaxed/simple;
	bh=TSzuBYPdPTJylmv09C5xTVNuhSX7lbFSBTkaP9fgreo=;
	h=To:Subject:From:Message-Id:Date; b=smh0CVocZjtyeRNYBwWAliTJJxNvJ6+HmDsHBq8KGc7mxhZoMNRAiXWtdngCa+2ZUgFMOWzRxzaML12sLRT2LRIm0moFviGocmEpcQVOHXmiIz0ZwlDLYzdRCGSCxQyB20HA867yWYOPnZa71ueMQJ+prn9N89Kl9tW3ftECru8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoPoOETI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoPoOETI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7E5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778063253;
	bh=TSzuBYPdPTJylmv09C5xTVNuhSX7lbFSBTkaP9fgreo=;
	h=To:Subject:From:Date:From;
	b=MoPoOETIErSQzUeOsSWf90JColuzwdDNmHnBJB+Ae2HdpYILPVZbqj5mxGbkTZQl1
	 P7lomBqT1otU0zPBt4jJc0vDoS2u+VPsSM4mAoTnPfXqEHo9CXXIyF9xOvp+QVXvZB
	 LdEXx0tINqVXytbn2WrxeQT0342QqQKjgrJVWEhV5rWb/Jd61wOMMj/GV1FDJquUGj
	 Bj+elaPoIxFmrLwXidrxWOHbGGG2nzNcTyGrxf1J1kd1+3MWW/Vc0TWttYUOhx0udl
	 BkMrBEp69cFDQM8qjrIB9RvZI8e0PAixfM5W+XpGIIuLhV2ojP1DgHRYNhmV/qzjKx
	 +suCrLYlU9KNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB737CD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806325369.7189.9664072775602907931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7914b92648fd45f9343fcb31bb2c0d3826a1e95d63581d84742b44a8cadab96
Date: Wed, 06 May 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778063253
