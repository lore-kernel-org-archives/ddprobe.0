Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8603D2374E
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714916543; cv=none; b=lSV3snnWsRD9ji0pZLcwrMeW4rBUzQvatISlOeuKmikfyd/nZGQUYDmOkeg9umyBDSOCTLNlfKwhEhcpKhrMJBoWVvVNYFeC7uM11nyjiOsox/v8flIJ9lB8suYjHa1eFdx9DictauZV/gfQYaNburzG5rCz9LGClrC4b4cW7Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714916543; c=relaxed/simple;
	bh=/tncfgXHA8ZNzN9jK1jN0OwxjendtW/Cq6YksuGy6W4=;
	h=To:Subject:From:Message-Id:Date; b=RikWo6TbRRFagAPujGWv9Z53U5o9ZOSX+vhQu+C3URNy1MZIgkYUbTR4Gt2zpQyz1XVxCIErB1br3zEMUPPDluxAhym7dAgagb5BVMfsv+gmNTPsdEW41LjT+8xdlPHxoAHAJppN0refVw2lvHP8+kAS5I+k5KOMNmmv5Eiz1mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igYmWbmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igYmWbmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5394C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714916542;
	bh=/tncfgXHA8ZNzN9jK1jN0OwxjendtW/Cq6YksuGy6W4=;
	h=To:Subject:From:Date:From;
	b=igYmWbmSACXKdEMJZNDZ7vOoyXRlwXbLdqIJoOPkfHM78Pc8Vu9WvGWyZAqxfgJPR
	 OUyc4SXdPbbT/fkXIAydoCQ0qWckbSrhPb6EoPVYt56GYsDzwILa8dTWZdtRlHwZd8
	 bXhqET3YQ/asEs0uUWxn7Hk/9V4wcfyzRuZMGqAuhEfpd3n4O3Xnlos5XngS3HcgeI
	 LLOHqh5CSllu9TUryCqK1MqTt4rSn2OZvdPYNDtQ6Eb73C2bLj81EicX3SAhnjTXUJ
	 9K2wMWCREY3rQMv8s6FdqmMSi6SamIFvaTOf8A+4PLH8hJkTlI27ZoFicoxu6pyUx6
	 abXFx039oSFvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB790C25B10
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491654282.22019.4891645328788781260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb25e4e47c3c0c3fed67b2d5a6c72258d0cad17225968622969f4ef50562419d
Date: Sun, 05 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714916542
