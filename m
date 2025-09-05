Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D745283FE1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757077196; cv=none; b=AhCR09vGKbPtMbv0VcjNdvXwKN3VY5mceIQj/Jr/CXd3hw0bFka8E3uWVLFGIEzKUpPvjeI9iYZB6KQgXc+q9Rs0E8a1KuGmoVUDLAnWKfe3wVZegUWWIfzrVsSyuPAWl2uGOWEws+xTXiJ8lEtiSgIqpsrYUETm4vSETqG1V/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757077196; c=relaxed/simple;
	bh=r1vGHa3yYYgPSp+T5N7igHwUEdG0NSDdPmUVI9iGlbg=;
	h=To:Subject:From:Message-Id:Date; b=nBYmqVVAXUOk93TegKCFb8P5q6FbBagpP6mh5LTGMG1we2NOFPBRbWvXeOCygOtJVJest3UrvFycq8xRpIArxlUPcjmGmw3gkPc2cX2/Y44bgulj8XEKMLgOx0ogmkhJH3eU96p6gs5Cl4vLH+JyJzcfLpLLV9n7kPMhy3zBqEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEY1qivV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEY1qivV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2397C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757077193;
	bh=r1vGHa3yYYgPSp+T5N7igHwUEdG0NSDdPmUVI9iGlbg=;
	h=To:Subject:From:Date:From;
	b=UEY1qivV1JJe8175HWxcx95KJZjGJRUs7n+E0aEjE+dsKyn57Mmif3DesMnWk95Gh
	 k1WR2VJ80IXWXqykfYWE8JvLLCgPV/xUIRscf+0hqMtePJttBulSZ85Ml+Cx/6eUDQ
	 LCGNyPlAwt2DMxxfvriexHXBry3WP608jQcmRPm/BOToc2wD4GhJ/4SLwdanfBVjEm
	 66K3P9o/s5ixxcLA8am1PDS01VpwF7cEEEosWDtJSgoCzLhr8a0fvlu/23lZBh23Ml
	 InlK2nZ+r9apiwtp/GNmCayrSKERaJ8mNbh6YTJksnUgt3xUDXydYpt8AYVhBpqPiB
	 v63g15SlkbwsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F06BCA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707719357.31961.9884114739085309427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b753083b50c7630ef9e27aa198b7f4f23061ecccfa84fdc6f42e7e7e93b5853b
Date: Fri, 05 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757077193
