Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F223D32F76D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774731894; cv=none; b=Zgbsj/9ZYngWWkO5ouorsrminwTODHLHuj/xd23sngS3X4mofsdsZUSqGblTIzgvfwzvnvthFSnG2Rpr0PcVE4pDgMzPeVYIeSkRLtVV/bNeSfWSK1k7aIk6EQp9foFKTasXDqrVLETmcKT1X1BbS8UoA1yiCjgJgs5BQTwoiYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774731894; c=relaxed/simple;
	bh=xIh1Ia6sbY/MZuI71XmUsJkGIzP/8fQaehk98LBvZXA=;
	h=To:Subject:From:Message-Id:Date; b=s80ltWYdKFECCfUwY+ok6z/DcxagLS6lJQHZrvVolAQwuHuTsys+i0sB4FSnfDotuMLpTb23H9RqhzJmDv3layBaUBraV/TDkw45KeX6hBgA4+t6eDqR9cOFveiuKZcMe6ntB3247DeGrSg3DrSmS8nf7baYiN2RYZAomo7T56M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxO964zp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxO964zp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0109C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774731893;
	bh=xIh1Ia6sbY/MZuI71XmUsJkGIzP/8fQaehk98LBvZXA=;
	h=To:Subject:From:Date:From;
	b=QxO964zptS0DUdD0ODqrHcDwG2ZG+mRT6kXgoiiZA3otJzBIJRpiGkRw83WvQMe/1
	 gbMud0o4VD0mumCFSsKCUUKZT7fnA+3zsuw+CNl/YX6iO9xeUJT1vAwgzhl9S/Aa5A
	 hoEqYYPBt7c58mXC32b5fkeBZR4QIJa/V1kJ6qmk0g47P2/Vo4o+ZJZdf/MBniJGqN
	 7hro+myhiOVuWbyLopuIznXQkj5oI5h43oHUKnz64zRDPnRU6Vj8Gv/9uSHJkFEVJO
	 3Pajm7zjZ/x/BEikJmQmBNHUIpmf3yUm9CrtGFqFC5H+tK4Fr7Ut/8PB1Wc34eUfd4
	 JMxFgQqi7mGyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B310D1480
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473189358.10926.17898086750442911938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d846b9cb5046bc7363f8694e37bc32569708c51f7f7ab945c7e663776172e31c
Date: Sat, 28 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774731893
