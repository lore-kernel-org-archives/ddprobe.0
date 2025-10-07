Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CC82D6E6E
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759838394; cv=none; b=pNYX8VNM5QjwroPHsAjtW2oAfq6qeheGxUPpY8SYd+Urjb30gkyvJumnh9Z8VF157JrpHE4PbzKb/B0RWbsyQrmRRxU0LWm2ix45fD/hitDwMWfEywR/x8VPS9l9HRzC8vV/JMrxWWfe2NPWFWsyIFWMVAsVaBddkhD2hq7io6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759838394; c=relaxed/simple;
	bh=ZvGu50jGvDssxomHfSYEd2Dje/Dvrfc1IP+fRMv3EiQ=;
	h=To:Subject:From:Message-Id:Date; b=efscLQcEbaanRP0QF0blNlc5bqdPnMrbFJr0f1DmZoYQVMAgpKAqi8BSAOaquDIWAtw/6x0Yt8M9PusZpdLCdbYbg5BP78wRau80eSevS/cP8Tm63dbSBDAF26VDOBKyYlKpdg4TLonGWW3SZ+1UJaTbunLqidewEqlS3/iwlJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dceLGGdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dceLGGdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3628C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759838393;
	bh=ZvGu50jGvDssxomHfSYEd2Dje/Dvrfc1IP+fRMv3EiQ=;
	h=To:Subject:From:Date:From;
	b=dceLGGdGhBadr9J9Pe8leNdLh+DqlQ2/PnLqIoepkmNs2p83yKSC8+bOgaRYyNOHd
	 81aE5nxMQV6nnOXKfG6rra1vAG2eE0tOd6MYvk9LQ5ZNyxT51rOsR/dDXQoPIotCSp
	 n6ysqj8Uy2X9V2zfnIW11CuIgTmFkUaF3gnkUUmM21bPiZZGlHHHoAD9zsGlNLKYmo
	 nMT+VY/3kElkcQm5xvGTzjgBnZ6r3idfBxoZF+fFPzVLitR/tGMLpqkGqmUsLrH1KC
	 eKWrYLxPIRoC7tvUcAGfidUPYXYzeILWG7GszUDilU/E74zSogBQ/w5EvAZ8neudCU
	 bhHvZqVrz9o5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90398CCA472
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983839358.4485.7696288394671682404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060efaab81fc40606dc5790174004f48b8335d54795f1865ed5daff1fe9ef0ce
Date: Tue, 07 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759838393
