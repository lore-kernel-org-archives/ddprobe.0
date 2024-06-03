Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CE617C
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717389323; cv=none; b=Z4JFx5TofeDfizUlB/X5JAVyUoWsyz/ZhV7d0ISaa80LCtmFe5ig5hlT3hTzK5MGWLkhOv8t2dKaEIoLTDn0enjFWj+dSfb5QhIPT739PgDHXiCXRQ6fiVFIz79qXOkJF2fJmwHjn5fP3NznqJoMUogBwf7IIUrCuKGiIcuVpGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717389323; c=relaxed/simple;
	bh=xPq2meWY0o+vA3cubvgSZJAUelPRpBcafXbZd6EUW9o=;
	h=To:Subject:From:Message-Id:Date; b=mo7pQcwWF/esv5c4xLuXXxzuVFvmcdKcAoeANS8sRGXrlgPK26OFOMQfU7eMPJ4vsH7skuVwTVVT+VZC4WGa24DivMWIffyFMjNljFPSoDo/76a8nrwvKY1cm5cPLF4gkosueE4jwrAxym4csrzzMCj9TcJaflV9NZZjbycQNJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8BwPmJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8BwPmJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D944EC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717389322;
	bh=xPq2meWY0o+vA3cubvgSZJAUelPRpBcafXbZd6EUW9o=;
	h=To:Subject:From:Date:From;
	b=c8BwPmJKr0vtubu5DiCMQ38WVZdH02nAlRV85PPLf0scLqNmWfD4MVh5L3OzKBjnY
	 PpXRZIRZKbqIBM+FfyVm7esRgpqcSYKY9h/+v58gHitgl9NZ1pnac2/GHGd9MSBos2
	 XuS/jSV5TkO1nkDhDfZ+MfH1hRTsXlJ75S96dmJ6g7yoyCx6FAxCC+irJ8PvJAuGuV
	 BC0pDxsfLHVSYEgk0eoaQuYZKpn367qzvxvIpWYYj5ahHdinljZaJC3r7UWWbC8Uig
	 HQHpCO38SARaZwh7EH+UE+bOentJB/cAglks/aaJwOH26uV5lf686unRvcPqG67tTW
	 wSh2Yz7vfITeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8CBC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 04:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738932275.31616.14821748797751943240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe86cb10468d1046f657c30fd5fe744d0226866762029340f30f279f234504fc
Date: Mon, 03 Jun 2024 04:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717389322
