Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C21221FB2
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762106994; cv=none; b=HBdV6cEU5fjKpcVhg4ofVRECGsYiXCpDZozcANbEQO2tJzYPuzGDDCtlGTqKiVgUkOIZdiPFj7Gn7jGMd/Si+gETwl7ve0O664LfZDk8V0w8CTHZDf9rofC2NVCu8TaHNzDr4YasXN/M6Mf5VqEBmksNwmEfm8+b89cxoCujDNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762106994; c=relaxed/simple;
	bh=g1nsU7AampScvGgwRW0Et+uad6z+g0G8q/evXbN5J90=;
	h=To:Subject:From:Message-Id:Date; b=NXgaTYY6Bk3uww9VcUXPlCTeqB8pujXqNkwxhrMg6eE9gsDx+lyRLDYCapWUWburCyM9fHPyNxKHl5P0rS393ZMwk/QxzVhNm8LYbHSbznZMcyunFcl7omQ01gonZU2vPulxaqSirwPTQl0okp9Fd+qtvrVORtpblGqWTrPi+OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDH90yDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDH90yDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5050C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762106993;
	bh=g1nsU7AampScvGgwRW0Et+uad6z+g0G8q/evXbN5J90=;
	h=To:Subject:From:Date:From;
	b=TDH90yDf/NB0rWj01R5+V+dIk790K8RvcldMWU8wJa1MRg1+K2T4UunlbqIggr3yE
	 zFASYPe7sac2NOoGfTdoO0E2Po8IJURIaTnsm0kqMHVNjZLo/hDb/LWIRWaEXwE6hf
	 jm9XjoGXJniIe4DHuzFZu/fRqZiPUXkvE3oE/fcVfLnp2Uf6eS+L+3+sCWyas6LWA+
	 hKeBlVzN9ym9d9dyZy6L24s1q65NcuI/lebPWXp8UjiqcLvdckaUQgx0nNJUYtTUAC
	 R5ONZqhpYeeHuFGxCAaD37GGodnlD2Pv3nMbpZUDFncgn8D3yvdDrzVsJRIZnSNwmw
	 5wjJRSTB4xnaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFE7CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210699358.2887.7039049714864724736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c377ed096e551891bd27158a8ff0a7c90cd0ac620b1adab42583abe7a14d8145
Date: Sun, 02 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762106993
