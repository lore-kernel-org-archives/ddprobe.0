Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B7527979A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752430796; cv=none; b=t5oshaMJ8vwczFdDL0nR2LfG06gdO11DFSUPFqN8GznCoi4QTVQifi8KLDBWGsqkN8r13SJhVLO66+zxQ8BER4G0P9JsJgoTVEcsjRvrhXS+wzv25ctpZTDJ8qqgLdM1q1X0oMOxmNsI6mZEYefpoRY5hn48sTmCgXdmhmGovsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752430796; c=relaxed/simple;
	bh=Ku9fmAhdUEp0IEA4r1qJm7pGZW6VrVIfgrV3gDiIPZ4=;
	h=To:Subject:From:Message-Id:Date; b=OILV+08VHkT/wT4CmdDIF5kWpnxGqhLA5Eu8Xhqqd/3zjF1XQ+R7VtcPECdzf9XSRR4vBmS6bilk9iWAv9eRPGwTL93MTPS/NiF5hfgMHfrH8VVrcrlAF/EfmhWQ2/ys1V8Qnw+znGUy/NbZWfJdZ9+oOADxYOx2jGgtqwqG34k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaLCPmB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaLCPmB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4A8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752430793;
	bh=Ku9fmAhdUEp0IEA4r1qJm7pGZW6VrVIfgrV3gDiIPZ4=;
	h=To:Subject:From:Date:From;
	b=LaLCPmB+8QZHuGQL/u7qkF/3KU46y1RVjo9gZ0KIr/iwfd6QxdTL2pL5LQT3AhLpi
	 lkZyrWlOGHqhkAApALTLVzSocdNO8talvBweSn83Erua4jVs5wGITnH5xkPv9FT7GD
	 VvQ6qG6cmPp+It7/p0cw5s658BLHHlpM91qQurKIWCcpboLUqGWJ2HVnGlTqf9HKJw
	 sYvinhJO5jJMG3zmKcdxqu2Byfqfmy7MPYAXCsYyWmnMjats3Nl5MCu7FvJEAijpEa
	 gB4iaYfCXneaTM44Y03lQco1wtUeKxgrave8bVvyXJzqU0Cks032jDK0qegWJNQYBh
	 yl6sacXPn/Ofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E997C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243079357.28154.4876389096642729527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de5a7fc140798c7116ac10e242e82cc1d59a6a5effe55f3af8d3777fd979d65
Date: Sun, 13 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752430793
