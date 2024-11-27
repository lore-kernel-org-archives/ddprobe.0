Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D031514CE
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732700754; cv=none; b=BYr/+Mff/iod9/nAM8TrfJZZtWxNTeAYufCZxPKoDdBBoNTz3CHo4b09mPKgX0V8BHWUPNEo2apTAFwxagY0am6YKnAZZt6D5t9CkNOhTJmRIdmzjyjPUEGr5ePACch4WwDBsK+Fh21p1T9XBBUqee00QBYFdTGJmqntj3pY7p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732700754; c=relaxed/simple;
	bh=5i6LK3lKLAyNHBbmzpB37vyHUhhox8W5bFGhtUY1Ztk=;
	h=To:Subject:From:Message-Id:Date; b=ob++ji+d/XDFEOJbTZdQB+EoZJUIIJjjDlSfeWcLpHo6Z2Ya3ucUStcYuimyrHn9MuI/Citl1R0Mewn0KZ7oZ4ymRnx0BFgp1DVn8QflY6H5wE6JZ166sb36Pf2cX2IaWfiEocYlvoiElzR3nrR2EriO1l1xv779r7Kt8t/9LPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5XdcnQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5XdcnQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EA1C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732700753;
	bh=5i6LK3lKLAyNHBbmzpB37vyHUhhox8W5bFGhtUY1Ztk=;
	h=To:Subject:From:Date:From;
	b=C5XdcnQ22BMdu/qVYy9TIoZ35hOgo9jQjznTtgzM/UuWObpPlN45zJgKXzBYHglLS
	 JJf/HZvfiJovHKNZUsRBv5DMwdpkZvMXDAyAq6hsm1k1hlAlUNC73FxniTk1OQIlYs
	 jDHt9Lou3VTi02BNrloAwFU1VAao95yjEhAwc2dtaC9jfMZ4pgKG8QDd7hq2EsnB7a
	 vbscwp1B5qJg5R9oPx95mao1ci5a1lXEnKwnAxt/46kjXlP9TRGEiB+fZPJAmdfvT7
	 zxziHry7UcaShnyMD2L4fJB0yw3ty8EHW5WV5/pUQQVtzVz4zLPd5r2IeaFFeDTUNq
	 25Xo2U3IRG0IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9223BD609C4
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270075358.7471.13653127077695399348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f836998099d5bbec1be386b6082fbf48cb915fc54dad21454cea9c88b2bb903
Date: Wed, 27 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732700753
