Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A1E79DC
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726279554; cv=none; b=GOVgnR3S6NmSles0C4lNtjhMbfg13LcTqFlVRxZvWsASyXF4u0fCmMR+zSPOQEFGYTbJ/3zGXT1XwCc7eAppwHcdSDC1zIjbZ+3BCVLgMpoz0WUzNntXltD8jn2UcYREU9yob3WMR4lUVMYWIw+cUK2CmMloSLIJxBQ3oEGmKA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726279554; c=relaxed/simple;
	bh=xDBIg6fw/w92Ma5TSrGWYsCjDY6JQDGmaHugyu3grzA=;
	h=To:Subject:From:Message-Id:Date; b=uMrEI02BXFdJWTc5lczfhNweaRkfMLgPLjPlRuYXXayuXyP6j3RQuBX3MVSlhmy1zrTr9xP5ZLhGvLwbNmfq1/AQbAliCsf0VNNk7FjUzBFFZL0EE5VYK9RuI/2pTwLKhTi2XfEsetNPjMD903mSRfvHaFeMf3Oc8tO6ilZlmL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=km/jlD05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="km/jlD05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD70BC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726279553;
	bh=xDBIg6fw/w92Ma5TSrGWYsCjDY6JQDGmaHugyu3grzA=;
	h=To:Subject:From:Date:From;
	b=km/jlD05BYcoMOUlvWU517GXITWVpTsGMe7z8nmPc/ejRZL7NVNAKo/GsoKPBIm6D
	 nU0orRPNXknvAjR1KTeGySgB9YRqEYjkNPd5fUgBnqIZaiw5vDgdpJg+zOL2gOLlTl
	 atmqhXUlgBWPa6V2lAXAMHBsHc6cOEdqSx3eXD+rCpXprrK5d+qY3zIf4l54tAmQ3x
	 TU6n77M/Fk8NJ66PHsUSfo7IY71TJ3rCejpyIqwXJyzs/leTrYzMq8Y94c4QsLn9r+
	 20YjKGblsyA9uLTwz9m64sXFl0ytB2izlRMkg3jgnKeanZh5ppXDg8dTUJ6QZNQjXG
	 O/tvG6NYs0JiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7902FC6189
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172627955363.22814.7250682065231413859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a2b2ea04349867d9c66a6b3417dcf443b23ba642dbd775242909494212e19c
Date: Sat, 14 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726279553
