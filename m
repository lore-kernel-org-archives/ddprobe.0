Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADF941C309
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774544694; cv=none; b=Hr89veUoCbIL+Il6LqhJUkTVKAJmBHouokn8Em0YGPGfGTyXw4a34nHvnrMDuFecG4eEzVmt/up1uUuDWagK41f+++TUh20+iAjojsUe3X7qxPtt/4UE+cJg5blRtJE+gbM8MXgPLuWVyc96fsitR7Vo62NBdrauFw/XWfvctDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774544694; c=relaxed/simple;
	bh=aqmt/Ck3iNyiqXNvokbpY442VnduocbFUTmIdEZf/B0=;
	h=To:Subject:From:Message-Id:Date; b=DNh34b3t6ysWlGlCyxnW5242iMb2IhcNMgDlA9A05S+d45c/cLguop/90wBv9/t8WK/UmAEPMRCHSv86msOLyWjTV16AR+2/rFL+wYszUP1AVU+Q7PW2kY0Ks4pzj4g4ONPeiil1ULFloRgYX7UREvTw9Ce8LdGs7+rM7mzzvms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwSzZxgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwSzZxgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4949C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774544693;
	bh=aqmt/Ck3iNyiqXNvokbpY442VnduocbFUTmIdEZf/B0=;
	h=To:Subject:From:Date:From;
	b=AwSzZxgtwgJgu0HOfbx9IDAGri9MWYSsWT008KT25zCruGFsqHQa0IcPzWMOZz1AD
	 0Og/yxW6zPZ+zFtAQKJAbddRTqgd3otar1eEkScwzhT5SXCVEzA/03trMAsLGvNG+2
	 Dr3YXEu/7H+lsKHvUAypCnC78w8UMBaSwtKu1tt140takcVshp6sDCBwvBmdGMjEHx
	 Dtr5BjvEMxajtqdz+3Q0k/MTGD5rtT6s+OBp2PZKiGmTK7NE3iKzcZWiSXi6y6gwOU
	 Sa965K+9pAaTWsGSc1ZR/IlNB5ddjFkP0aLYWQqN89nYwaAP/VCkzG4yT8bxXzxVIW
	 zcqs4aUkjP5jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550110A88E7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454469358.15959.12054168489056984349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6528f8c5a8c4a066615bd638181fd25dc7514fc39d00ce019b46a71a91106489
Date: Thu, 26 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774544693
