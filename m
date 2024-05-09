Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8C37710E
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715286743; cv=none; b=f9lD1j2ihEK8BD66ZzQz73hM5K4EQx6DjjGdIShV66glooYqQrdEZTq5460TTkFqjOk2+RCx1uujXADakyOnOXsYEYrxSznPlvklDSSKsjxNzamaToh94V6upYE17StLAjkhvNf8QU85JbTyztVG721ZfEvKbeuGhsDonrB1xFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715286743; c=relaxed/simple;
	bh=LYdWRK2xEOcjBzf3Xzvgr+9pMvgvG7Pm1LMY8WbbB5c=;
	h=To:Subject:From:Message-Id:Date; b=ILQpX7vUUjKBwRrEx3q2apRc3neLdpynvWHkrkN165vjkYbMC1kH74t8TS1VBB3coiqs2WLJRm2+d5T+6LI7En+wbXVcVVFbtKFxJGThxTd7k+LCOHD6y9X6eSBnC+sS3oJZCnQPFmbznYa3pv10txwmmfjTGd+JK467h9XF27Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXLd3Ril; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXLd3Ril"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8686C2BD11
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715286742;
	bh=LYdWRK2xEOcjBzf3Xzvgr+9pMvgvG7Pm1LMY8WbbB5c=;
	h=To:Subject:From:Date:From;
	b=pXLd3RilXOlxCyoT/jmWRFTOkm5ZSO4UbP2kfrXSbLk0yX3hDDzMQI/cMAssVZ/c+
	 cUJHB8kUp5EAnDewbeh9FU3o9U7GlnA0VWP8jbl9GNeRdIWNdaJFSX3NmksoimhSvc
	 kwy+/YxrKFLjmsUF9oc7U2wScTjrRNA7EF7+XiCA/hRmGN1p3H5vN0zfo+InSGlNTw
	 AG+HUvpDhPoIdd6sja7rTaNjp6oYRS3EdMy/nOmwDJEtCKwW1WwRrF999jx9jhk+hU
	 6e3hhVfvn6yB1LA4911CVnehAyifV93Oo1bALTHZWVNS9SVgiufnaxNky3xTHgKkM9
	 IJVoFFCnRIZfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D16A5C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171528674284.21102.3810214407992151164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e059be5bca5a4b78af3211926224e80a84f162748be242e21394b74e498ea2
Date: Thu, 09 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715286742
