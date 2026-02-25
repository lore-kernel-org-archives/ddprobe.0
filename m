Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC503B9609
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772026494; cv=none; b=pjnND046tfzVvRzUnsRX2Q+uy1haAEKHAZHkDsx3eB3ogLb71kem90E5+IHmIA7ALG9m6CRrthyCF+15jzv3r7tYx9ZZnWaZXEWMfqUI9CFhiTKpUqOMus2WG6wwRsYzdWwfajzcrxO58jMIBuJtBE6UMPsxxGszKF83dWiTJTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772026494; c=relaxed/simple;
	bh=P1YVAXO2gj5eHwZ7fsb67cZFkIZKSEPzgrxUb2E+itw=;
	h=To:Subject:From:Message-Id:Date; b=W+6VNGUvSCe61XsUALVkBHReJ34nLvB11+Nhe0H2hyB3CfzAE1s80dsBlKiTdBXTqdpDCbe9FRn8RIiakZUsC1hWqS1K/sqbD9ZTx01/BGaKTGBKzql/CI/sJm5q4U1rsDkpRVNLden84pv/w++be3w8kdChUePIXbppxgp1tVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNAO2hiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNAO2hiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEC9C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772026493;
	bh=P1YVAXO2gj5eHwZ7fsb67cZFkIZKSEPzgrxUb2E+itw=;
	h=To:Subject:From:Date:From;
	b=LNAO2hiFIleaJVPjdX33E04DneAdh8QYcReK3AzvMnJ59bacYIpArSD8cWDuIxVDH
	 1/oGpT1nAFXumxg4P/TPWYRDN5zVpcdfa4xHmQkwz2dt4SXz7Sw36RQFFIFJxyrYN8
	 4NsjHmDtbW0/5YVuhMcyL+23uwVL0dGqCWRLMiY7sATYp31MVtFSg2dRL3w3ap8CKm
	 1Jam/PQQPArH3X0KJ7+huBR+iJSPL5tAGY3YREJcpWbcsmWDKEOBuhsN94XmwPvjkK
	 yPtIUc+lriwlKQF6z1soxNdFjfnNBbgsvNwTlRX4ULIbxeNN028v9doVl1GvfHtvcQ
	 Gp43Zh28e6xbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A9FD3758
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202649358.11310.10094238338742459778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3eeecc0032b92fc577bbcc2d7ca0a0c7dbb43fb6970708299ae69654d95148f
Date: Wed, 25 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772026493
