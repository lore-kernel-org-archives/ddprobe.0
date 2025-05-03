Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47258192B8C
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746258594; cv=none; b=gxPcdZXxLhwek6II9NJm3iNHglGo7WI1UaBkWCtJp3uafN+SqFvWPBA/OS/zgnFbFB9vO4n61+UToNALkDf8ejj5I00buX/pH2jcSvHN5ekd2jsisPL0/f5+txGp3TcdUslqoEL11Q4mTG09e9WrVb1oChVCdt+46jfmyQzFSGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746258594; c=relaxed/simple;
	bh=NUuziIhswWtt05QW4uaqXi7OcFBIO4yoyaDaV+U3L8c=;
	h=To:Subject:From:Message-Id:Date; b=q4XO6feszRSDK5B2+5gqV16mXY6v41bRJTValZyIQGoQfcyrVdWlka2W+BCWGL8DVMMYFdkIrCw/cJP1LmsIDhXO7FCybkGc1FU4gu2Fzvsw8rHGnFk312zREnAbq+FwcBfF0SDFfiBc5GYQYaatGT6wVaV1Slhr2LzoxMfzymk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgpCs8HH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgpCs8HH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AB6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746258593;
	bh=NUuziIhswWtt05QW4uaqXi7OcFBIO4yoyaDaV+U3L8c=;
	h=To:Subject:From:Date:From;
	b=BgpCs8HH3Ow0NntINE45SaAvSJMqnyUcjaiNf2KsLhRmwwY1dm1ZmXUMP69FYq7co
	 Vrf7+/oRRTj76cFmukL6up8wjSZZxP1ijK1/LbUFJWk/7XebwSLxmaNOr3lrCF4ByV
	 rlCDPYdgQpz/PKEz3k9SxyFoyvOmmeU9ZAiLrxtZtp0On1qBjxmyp9eIaJqbdmBGKM
	 P3oEEJb8BEl0H/XkvFlgdNimwGMbdLh/xBU75a4HCe3ecegudMMDZG+apgpniAg4sX
	 bRxj693ZFpa4KrKoIzG1s9G+nlgd9wQpx/ctyA0ibBp/X8HOwVtYEIdBqUN5Pb3Q3L
	 ZekDvr3DJR6/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937EBC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625859357.6895.12670398608317016441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa3fac703bd903de12e518743ba889a5d9bec2ec831169b68f5839c02ad9c05
Date: Sat, 03 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746258593
