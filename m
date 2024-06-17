Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DFD538D
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 00:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718585303; cv=none; b=X0JM12z7fq59fusE8cANVi+260LvZpt7WS4i5DQdC1pxLRwQFyA4D3pSL8ERy2qIO/tlQMeBP3p/PsvHKMnfv6aPyVDbKZvFjj7BdgiH3VFo/aZTPzeTyOoZ75of9Jcb4aSJmtrWjxq0dCbDhqTythN5K90WgU3cerOtlZaBlHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718585303; c=relaxed/simple;
	bh=Vb3tFWDZbYE6ReQHY+JSagLR9eqpY5KZxbp3IDjHUNA=;
	h=To:Subject:From:Message-Id:Date; b=cRVEWonHweep5yq+D0ahwrsOqndW7ELqoyOKJ6kanf2gL65aOk8sKQTt3ZClpB/o36zrvHoMlDGXWQ049jk0bvVUpJtxiKwwxDepuXTi2kWob4c7RmD+IBSilrvGrSqojV7sHH+/1iI3SujFlc+dx4eeHhGUWkQlemdLBO4192U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRzAHwlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRzAHwlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF48C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 00:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718585302;
	bh=Vb3tFWDZbYE6ReQHY+JSagLR9eqpY5KZxbp3IDjHUNA=;
	h=To:Subject:From:Date:From;
	b=nRzAHwlAbl580UNCM4kryZ6zQcuY+yxvZ2WXbpsnf/ACcXwYiiv53o59YLSt26Zo+
	 jf2ACKiOAcINBJ7Pf8LyyWZ3ORicJ/4ifdVf9tXjErD0JeHxkvtdzqa1nykn2qxVri
	 9RlrtMZvgDHh86HzZ7AoISPxBcgylA+wnLfqWUYBfLT0jjHx/fo/BU6h3InpV5fODR
	 Oq9/qt4VAm9LBUTO3SO3IrVbgetLBSoQjDrtfDqJY1EnJrCUvLzaOKYEw+pB4+LWiR
	 axy5ZJ9rYpiNOOkV09cVhWocXuyv/ymVvEAXf/n9GeT06xnOoqFztGsMzKlw/y6tM1
	 L3ZUFI24M9Pww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C661DC27C53
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 00:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171858530277.13217.435970792592834958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcaa6fe98bd567f3c63f47d4146a3459648d8fc09471e42c2d246629224f685
Date: Mon, 17 Jun 2024 00:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718585302
