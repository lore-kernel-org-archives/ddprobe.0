Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2884115FD16
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727433354; cv=none; b=Z47JXzAnSxas2vk/oOkqAbaAwzTrV2T3Lg/pZ6cbgoQulqN6EjG5jCeZbGC/Fi1uW1oHCnJK8bG+bJGTiejllatWV9EriG15JKZy3WJjyI+VTgmCrjEe7iWVfgz47fRqgdYYAX0sCFnTIC3b2M5VPbKpGttczMb5CB98x2LTga8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727433354; c=relaxed/simple;
	bh=nR0XAcZ6ezVRWLlFz0jxNuRLdHCzUEB2qEatOhL8yK0=;
	h=To:Subject:From:Message-Id:Date; b=Qry4xAtvwGPku+0pHXfVRA86W1ZSAWT3MM75mkjpO2Gg1AywksB3ow/OFIN75p+yv2Nd9FA/K9XvoVo6PZkjjfLr3dGsq+RlCwoTwr+iC+hxmA58ldlUSJ+Rj3lV9HLBcct+cXRn1gx0J4oFltVoBF9RuiDsDYCmL2xLmb9gP5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/MDjsx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/MDjsx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F11C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727433353;
	bh=nR0XAcZ6ezVRWLlFz0jxNuRLdHCzUEB2qEatOhL8yK0=;
	h=To:Subject:From:Date:From;
	b=W/MDjsx8/X+tRkLhir/TuT81TEM+SEcHqGCYmZSPbBC4IcLNE0itHVJ9ykcin0uv2
	 WtmUM3m+M9PVvL7EdJtuYQ+I3t0hgOEapJYKqKYJH10WdtnesDtVK29RCghm87oLJ6
	 uUzc14mT3G5PwTkIRLufCTNadCQ8MgiobNFWWrFA0ty6JvC6wcQXQqH9wgA843EBGh
	 mhLBJT7XqCFgtV7Pz0RDUE3RyYlYIf2xf3WYFc50pai7LDpxKLdx7LKsCDON1DeOoJ
	 XlUg+frcO4dhbVIvDDyfeD36mup+3eaZp8OEzdBc9ilCfjzMKL1dteUE4YPdoM8R0D
	 NmeMGFG+MrYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC72CEBF8F
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743335362.14293.18125163601662902755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cc4de444d945d2e09f8081dc833d6661e867495a6436feebb524536683a305
Date: Fri, 27 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727433353
