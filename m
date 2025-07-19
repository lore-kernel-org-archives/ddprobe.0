Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A74121D581
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752908394; cv=none; b=pUGs0QPSjb8uNcuzTfAFUDeLsefBTGNZ1a5NwlHP/aqmE1C1G1PZwVRkb6WuKRAUfaiDHxqwL/HztelY5tpgiC8pK42Kp4kaRxWgn/lYqY72JE8wX4PJNrKQUrQsiCTKekQ7FooiuoF1XFxvVTzFHLFamAftArRLzh9NFQqfCis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752908394; c=relaxed/simple;
	bh=7bLvwgH6VvTR4PpoBkgwPrGOfkXyJjz2yI1RTIMM0Iw=;
	h=To:Subject:From:Message-Id:Date; b=iosQSVXnO7Po0wqjyrcMpPO0ZEF52jo1+Ajs+0r6kL01cxsgBjbiCAvr0LWCK87wcqyWjvGOyz/woBDdg/vMRVkukgFPcPomm/3NnY08naSRJ5n2uwNu6u0w00vTushF0HNan3A/QaJvWAgQydFZZ5MjxrI5+DkFuBDJcOLDevM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EB0GigMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EB0GigMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77CAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752908393;
	bh=7bLvwgH6VvTR4PpoBkgwPrGOfkXyJjz2yI1RTIMM0Iw=;
	h=To:Subject:From:Date:From;
	b=EB0GigMfCoR7cVugU0xE5J5ba0Gl43LbgPjlsOXnHQNh782RTN8k346BlbdPK3jaF
	 OjsdlRgwGWVfwwB9sZDfK+35GHDCHLz6MDmuZzgoCzkhp4byN/govpcwbobvNfIoC/
	 XloWgkdfrcHESuZw5xHvj6pvnjV+IF/MZun/deO7sEYzs83n3vjz45dW9srdfCnBrQ
	 aYSOXwRCXM/1WFlOIyGPd9YX5wzms7pkhdmqu0xlPA+Q5apGJ4gnLSNYY7JsSTvXau
	 TJG2y+gBWzH5QZR5w/x7YcW6AZyZ3/3rJ8IYlI0eZJjHNH2a0prpSLqVquuvXePEjH
	 mA1bhS/hQ4Pmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A15C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290839358.31389.13879461557226839526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d740e6c9ae13c2d12dc477150061dafaf5939b274c1026eb68f5a55705aded
Date: Sat, 19 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752908393
