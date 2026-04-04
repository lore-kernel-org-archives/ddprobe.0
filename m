Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA6823909C
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775273134; cv=none; b=mbK+XDtfEN1u9jbphen2pj97ohS2uGkX6vRuG9f4P2RQROWeb65NqjxB/by9XdfpZBKbxYBYP2w0/ewY/H+SN1wQHozMkC0Uh/yTAKF+uztK0Gt0oS1XVPZkSL1spDFngUfkqvMwbjFxZ/3LA5T/KbQq3DUETOOGGWED4j3y3Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775273134; c=relaxed/simple;
	bh=H2hd6Y++0pWCe54ox5YyWhQISgXvheWoj2THvzra+sQ=;
	h=To:Subject:From:Message-Id:Date; b=q+1umxK0K0Skm0r47fQfbwRFchFccCsdK0ZvRnFDPlOWXq+MvHA30PzrfjeiHLgdE3yD7PVbB3gH5EjVfYzKtGWhTOaKTnokJH/ded2Ftb3TY/vBldjcsIu3rLyz2IEq6S0GrPgd7lyM/dPmTuTgUW395t6ZAT7Ytb4faGD4UB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nl6ibT+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nl6ibT+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD785C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775273133;
	bh=H2hd6Y++0pWCe54ox5YyWhQISgXvheWoj2THvzra+sQ=;
	h=To:Subject:From:Date:From;
	b=nl6ibT+wPR7cHePRtbrTwO3JtlNtUAuhtVgh1+aUhTIIWhxGdOB74Akea+1rSjkkw
	 zpvgh+3yN01nvHuyMJraWmP0h4LidMPlyts5YODvZEUE1qdGj2oC3XeJ92Y72Xcs4l
	 mrAvVY2WZz0SyE+Z/EYdwZwzfWx34BtaNzfHpus6Se5fejirPs7j4eM8QzoaSn6Sb0
	 wv379sC/0olBvIqVvoQz9dNVBull4HBPc+1IpqVv4yorpmHPL3inQk2CHM1GVVD/hr
	 htvtZZDvllszvpFzN0cniGyW2NIGcBz1PdYoQ/sTFgiB3Ao4ZbBJcgouhNRujR6VF5
	 9QXco3b5nvHTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B6E88D7B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527313368.12893.2666160374048169747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626e4061c79c226209c41204698164658e0d7b98d37364ba46431e8f9c305945
Date: Sat, 04 Apr 2026 03:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775273133
