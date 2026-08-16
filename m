Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3E2318BA6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786858234; cv=none; b=HWpeF2viQVwYRqo4mxnShcoNpRmallk3P1dzvGQrpQjr2kqDvEWgxCvmF2DJWFZSjARYtVcGPezVBj2fo4BNiBDcqfI/+XMwvqjD58LB57y1vZaFFOaL5L0JllrQTiI3z2v+RVoCdv10SezxJSPqX2I5im2wm2A1XNZZgEZggJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786858234; c=relaxed/simple;
	bh=910SBI4S8Nw0+A15V9CGCzn4Z1T1N6AR2gcvc1H82Ug=;
	h=To:Subject:From:Message-Id:Date; b=Y4v3kjU26mb5TtuhOnth0medLChJ3qra3KGj7o97fJEPoQw687bDS4UW4V5kXwgCTL9WVPdU+eabpCrdKwxHNsov9jqcCyK7DgeeSCB4NF4Zh5gqpEATI8wgA93Xxu95cUc2wDD9nEqiMfvDoyKU2FyhmszZAMqijvBQBh96bVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndl72Sch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndl72Sch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE87CC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786858233;
	bh=910SBI4S8Nw0+A15V9CGCzn4Z1T1N6AR2gcvc1H82Ug=;
	h=To:Subject:From:Date:From;
	b=ndl72Sch3BRX/Ap6I0lRDi2BAb1xxjvlerAPGQOqqR7LuqWAh6xzDv6eWmRJHmX2w
	 ilvejU/WKwm8nP2TV6pG9I6jF/vI/e/czdYyxj/gi/rC/32ImWPYRYYS/AzKWx2jHE
	 xnniY6VqzDrifSxLNEeRMw6KBFShiejLkcxaZYuQwG6YmmFdoT9ybMZqT6uedMbqwv
	 42MyFiPMQ7hLa1uWUVbmMAKuaVvuJX/HyOGDdPozyR9L2deuqGCYh24ZsVj2snpRMh
	 E/J+8sFjfCoP2He/8d2BMrELYAOOR7Vd+LJ8rkVBgdDAR4cN2aSBtu40sgbxE0BImz
	 1hHdm6du/uwTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA851C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685823369.5040.8341037026198245064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4bf3b41b4164289d24db3f8a78275de9577e453dc0c963adb63533d0360b18
Date: Sun, 16 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786858233
