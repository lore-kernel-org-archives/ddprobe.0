Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DA9216A0F
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727902554; cv=none; b=FXX8y1LiXKDzaDzANtkQQjl7ohAgWRQ8IXyVtJjNKWHHhYCgg67rKrwJgex0nEntEainhHsqTMXlaH4KpB1P835lvrcroHdc77PFIfeLCe03Bex8MqfqlmgOvZVtxfAf2QNiBBXBb/f5/6yEPu97OE4+iGazqqNAayvWM7PfApc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727902554; c=relaxed/simple;
	bh=VDYoBz12AHYb9LlPEBaI8ByInNukc6vatlsUoTBW0uY=;
	h=To:Subject:From:Message-Id:Date; b=auRS8jdd96/1KSpWwWjmj/a6aFDIDuKYAYtztJ3sqV2FiGjOZnOd784YawVv5TD005WNcwXU+OZgbHjnTd7+3laSP+gwen8eG3lEwG4a+o5+vkl82sp3fR7mdYy1ZDCvUR6rQpEnsXJjgLeRrXR101CaXlMgRwpKHQNIdYmI51k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qbr6d3hu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qbr6d3hu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD232C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727902553;
	bh=VDYoBz12AHYb9LlPEBaI8ByInNukc6vatlsUoTBW0uY=;
	h=To:Subject:From:Date:From;
	b=Qbr6d3huCjQuUAm0RxCHQ0sGB3B7wL2tSOcOuAzxz5tIuanvT+k26FRBWtxf230Ou
	 ozfHocHjCb0VkveTZ8fu9HjFDld399KPCUq8R/yDJ5iaIZirxqV0FAuI7EiFP3eaXw
	 3M88KwNTvrzARcf0+L5I9xLI+u4J7rCI4fCq0+MPD/ivqKcLR1A0ROnruQEoTUCL6M
	 vPXF1uQ3E5S46Rd3QrIXkHAHpZPPr0RKHQ43+7kibHXl3+MOtDCEqnCEWn00hbzB+g
	 pHDreKZ+CPPGFs172G/drEzqjER9GWU/c5BCbMxxWTy+SXM6HzyCIx8UL24SUHf60L
	 QMbS+moplnZPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C732CF8541
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790255363.17554.17079817447630427374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948e54e7271ec5989a225a778605a30012a73b098a556fbc52248b14087a31a7
Date: Wed, 02 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727902553
