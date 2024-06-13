Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDBC13E05B
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718271503; cv=none; b=QFSeReM2zvcNJRSKYWKjvMgiam0vvyuDmZuwJPAYYbfthYQHeQ7fxMmRQMxpLI8WuqVh7yFeue12wWmofwRyRPTXoiA/ybhjTOjMNfT6q9xiKlGJqms/SWMstxth6L9oQuXkd/odLUC4dquKTSl7qCAT0jrADM2g8NRZNskdLj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718271503; c=relaxed/simple;
	bh=zvCRZRCmCAOA0oGLQQguS4IzZGuZN8Ts8m7PTPKYb+A=;
	h=To:Subject:From:Message-Id:Date; b=CpJRJXhj/vMWGMeWkdHMzQl93E0v+KvGubmM+gWoKCSZ73EUx7SZ+iBOsgPh15Un3kikk9QTx1N8nlX2XX2tn+9jSD5FdGFgz4LuNtNs/LVnxUJ64VV0yAbea7PJ1lXcZM1NsxBYVeN+6pCs77COFarIoX1/q8pW5UKshOuHpMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+Q1BpSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+Q1BpSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB2BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718271503;
	bh=zvCRZRCmCAOA0oGLQQguS4IzZGuZN8Ts8m7PTPKYb+A=;
	h=To:Subject:From:Date:From;
	b=T+Q1BpSSE9SGGEg1oksDN3Vvwf3YHq9i2rVAR4RnlMKPQ56iECSKtzF6ZrJQuiSxX
	 alk5RN9AsWKDRAZBjFsMaVFXdb/gFCoChujqRTnFyoBKusiqy3WMlJCXmp2UU6hHhp
	 pzYAA1PlSqimH/+RpMeHxcBVflxD8l8oZRorZk+7c0CjCfLcTnpxjhnACPVJd3lhfO
	 XnQbgyIPNli20v88DJX+y8pBT9IwU3X1PiEvZePVgpZBftTljh5LDhImcHA4RExLv+
	 F8mrPld4kvPyGjybamZuqwv/r+9m2psnbaixDZuaXkPclq97A25kWrmiQosPeunS0T
	 /F6BL0nKa+8Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE1DCC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827150283.30499.4209341955108286777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9202b9e78b6ea4a7187ac0bd8b3848e7ba1f3292a4bfd4602f4684de88d526a
Date: Thu, 13 Jun 2024 09:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718271502
