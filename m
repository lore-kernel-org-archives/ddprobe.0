Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A77721CC4F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772835894; cv=none; b=dve/nYr0oCnkyZ7JBP79SCQBtSv6iyO6IdMKWyVVmuoFy2+GUTHA4OZbjxoPXRwel6/kX+4ecD77VPJuY/Mi15QWU7tfXPyrdpV8IX7LLe6KlK2F41v/04s1f9D6yF+8CAmBYDjTFucm8ZgBm9U5oekZoWITC2Jzi7f8xdOWoDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772835894; c=relaxed/simple;
	bh=1yH6XARzChl9D4Da3n8R+/CPWcdw325TSvG6II7mGEM=;
	h=To:Subject:From:Message-Id:Date; b=lD1iRSt6neaM0gGjozNgqOxqquz7E6MJx6upgEwZJ5uaM3kvFZWku+OLRuFETmCjsMiC0+GK7PYk7xeUAMBYFaZLQrPsNxeWXpVR35KymHAD4pTdtnWcWGTIwWiy9lPz0Wtnn4A2xHNg8/8O5KKYBwk7a4JBax0dwhAJrC9P5TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+vLCWTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+vLCWTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D50C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772835893;
	bh=1yH6XARzChl9D4Da3n8R+/CPWcdw325TSvG6II7mGEM=;
	h=To:Subject:From:Date:From;
	b=R+vLCWTX4i6InH0kzNeKsV6AmWHu3KtVJCp+Eb3c3pkINyenZNvJBWrlNx/LAswv9
	 K1BzZ25qq+d2jnFd5wdDGa8pkuPrEQpNAhOOtJw1SB0HJRxqVuH25M3oDPnbrP5mmR
	 cfnN0KKCCPmc69gd+66lFPYcJmVQvx7USm6vVIM1tQz3+L78wgggru7VaS9e86IUXY
	 8paNQ6wxhTfYcKPsomn4P/5ZbA7JtZSpcVeVAbQcEt9y47LHoQP1n2M9gcfnB33ImZ
	 Dw5oO4JUcPOewfx0DomgP6ORDPpo7IXAuTJyVsJDhomgU4y/un7KTt4SmAlxmyV7u9
	 2AlcBrtwy/HFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECBFCC076
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283589358.21389.15507512415207352640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bab351864ad7c1199b64d08e685a49918164a3994472e9a59e7371f4d93fcf
Date: Fri, 06 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772835893
