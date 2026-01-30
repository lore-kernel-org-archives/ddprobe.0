Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C9F28D8F1
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769760834; cv=none; b=W6S4ocxLWThIIPrgJlh47INOPDsLMshmruh6C7Jx0PgwXU5G61NNG+DPdJou/4DhwiFnTb+OgWW37n7Q2t0vPXZyfE1fNTua0AzmoJ8fxVfpwcALfpVjkCugRA6Y5/s0fDsC3tU7U8E25YckwoCqzzSaSYQ2qC2zyIcJHr4sG0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769760834; c=relaxed/simple;
	bh=hq1Qbg0Ph5FtFqJxdiya048fmw5Sh68XDxBT9iSECZc=;
	h=To:Subject:From:Message-Id:Date; b=X1VfeEj5yvRBowIuyNSU5U3G+SmgmGfe/xBHJUY1yTJi7AZkcfh+C2W2sWRHSIqg1w4OZt7W9b7PpFwwRxu2kxw5XR86EiqIi0puknQ3+UwslskaRSMFxcKvgFT5qTZAiuQVrkt1rx0mqvSnPDVpIQMeUpEc+ms5zQsFpvXN4aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEjKIf9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEjKIf9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A306DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769760833;
	bh=hq1Qbg0Ph5FtFqJxdiya048fmw5Sh68XDxBT9iSECZc=;
	h=To:Subject:From:Date:From;
	b=FEjKIf9hzaM+zGHj/N/m37mFy2It9YUQTlOzeurBZ52UD2/4VVmSHCh5GBcdoRhGu
	 KoOc6fFHGPYV+60WEXvuIE4tpPdgoo2H7egiEuBEdBWN+XD+gyAHH+EA0IUMOIp4v3
	 vUtBqNCnFSRg2xAXvUp9Xwf+PPgdZjAnYc5YDpcT8SpHGogvweH6A9JDFoum1RbCF+
	 p6YrHTVKMZzAu7ITBJgeoOxY+mU7BbMpMVHvzblQ41CYSndBI9jFCmmTxvy3uqnVEm
	 FgTPL8eAMOPAWmJSUFMQtDWW8uo4GUpzkjs6jmLFZQRxBplttVeLCYy/sVk4Vg8zk1
	 3UhZjnOwL62ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE98D49C6F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976083358.26834.15225471371236325711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e94fa177b221d3b1812d80425ee241a82c476aa818733f4539085b9a48060cb
Date: Fri, 30 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769760833
