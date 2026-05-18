Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EAA3F23C3
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779105034; cv=none; b=fyFGH+deU5fSCeMcfEzrUAJ7MNHOOH5bphe0lYQFCG6Bdv4uymLCKF1KLlXAG61fNPOQad542Xfl+fx5OOObdsGtpUVG09oSWDyoydC9aoyrVTBoXwFBaewy69tVT6+78hH9cvpie8iJzdMJoSVSAyP6L3Nxgr5RiLjzlZYRWUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779105034; c=relaxed/simple;
	bh=/aH3OTRbQ8QnWcpymwd9rUy9n7ivatHs4Spg9ZXmPus=;
	h=To:Subject:From:Message-Id:Date; b=FmsXDFn29Dhy6/L5ttprqscLhit7778Pp1v8hOGTkB2Nb3WZVpnL7ikVAxGhgv4qDICJTb3iOpHCoPppH43OnEOVQ+/I196xoy7Jy+7ULKl5nL4isWsa+JIx8ymv2x8poo1xwOWvN/kFfrZgDJtF2PE+MAD1tM64OpOX5M4nM/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsKfGnBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsKfGnBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA87C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779105033;
	bh=/aH3OTRbQ8QnWcpymwd9rUy9n7ivatHs4Spg9ZXmPus=;
	h=To:Subject:From:Date:From;
	b=dsKfGnBgqbi92cUSGg6KfjEGft9YUHR0t+4XoTIg/DF2VJvTzYCZ1xkQE4OlyZBIy
	 A8b6Gb/GMEPVk7dKC24QkzQCdGiIDjOG+H2piU82PeDK2xXSApMz8/DrZh0rTOivnC
	 Rl5JzarF4UDuWuwXoi9wIjWdVk3EfdWsmUajN4Zlntw+1FpBdrGzfNwMuqnGnhGDe+
	 a2yTn3PciKi9IEtOPQateWHCvfdHMBN0L6R6xvsXBiePlDmEqvN4bln65yjZGOU94B
	 WMsP4N0nqlfn9RiibrfcphFrpCUcl2H6UR5drA8S+ulGQ5UqUlri34GB5VCGnzixsS
	 NSk42aWd5WHWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA66FCD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910503368.16076.13583768198585358312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e42297439ef69aff0a4b86d74d81af1c9eea85e2f4e7ebdcc2cf765b5cc507b
Date: Mon, 18 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779105033
