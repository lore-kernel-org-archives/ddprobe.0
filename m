Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCABB642
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706242097; cv=none; b=B0mCdQjxvtv2U+S/r0Jy77c5RCj2BKs+097xExNbi2K6347qdCyoeGyEEdxrgmBL6lQ4q/kq+7M/uPXsmRwgMGz6E9z8BaPhEHqD2AdbQAecQDQUZG65pwb/KEIyXtpr7cpP/VtjimMDlCU3D5F9ddVr0JTImoOugb2eTeuEoXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706242097; c=relaxed/simple;
	bh=kUfFYrKRJfpyl7RsEM4pMTBmKzb59ZZcpV1oKnhP7Qw=;
	h=To:Subject:From:Message-Id:Date; b=mMXpHfqVulfs9hHDJain+LD+YtDNWNg4IsdRZGrliw/LcmOzu9bNuaOJAI0DE4J4PW/ZuDzVMpHrc2KqtXxAsu2mBTi6Q+2ZVG7+XXy5Z0r5PpK9U1DRjSY6H/86Z1/yXyazrn98+cAVXXbUfpDxhm1aTpI6P6RySabtFTFpS2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ie/jcdT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ie/jcdT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDEFC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706242096;
	bh=kUfFYrKRJfpyl7RsEM4pMTBmKzb59ZZcpV1oKnhP7Qw=;
	h=To:Subject:From:Date:From;
	b=Ie/jcdT47lNwGTYCtwilGiLPzIfr4ntj8NTfNMu/EPeMphzdRhn/CMQDybsylSR0O
	 FRkB5CGfYXyQAnlZPfYowJmNR286/EQgBzMizQAZp4QAw8HTl+QyB4RaAEWaaDypqE
	 01uXDH8dxjCRgpUSt91KlZ6ndcuW2/s+EdY8aOa2wFRyaHt9XcOWITf4ymhjyeihb5
	 65rHJyCBSfbbED3l8kdr8XFrE5Z9M0f3IYsBeSpzr6WUGAXs7mng909sjeuNzyTRlT
	 L1wBs8Dz3fMSaB1DlkkPPiMsmeBP2cxDPLdf9E516HP5DHw7ObuuxtXBtRTcIjni3X
	 rHQkeEzUQLzCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E818C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170624209637.26097.16157948544651603203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e058356c4ebf19531c5f30d2a1dc2a915bf70ce7ae3ad488bb2b09956d251b53
Date: Fri, 26 Jan 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706242096
