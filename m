Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297883A1E90
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770200634; cv=none; b=f6A+w1ZBW2VmXAn3o3e2SM0/vhLboS3sOOyUmz7kIbqD07rdXa0yb8WLhsFTyY+c2aP5yrBO74i1Kiuthx3qGeLz/VsLsSqmdMOhIdJ2YfyUc/L8KjaEFetqB1erAgJFdPO3wujJwWjQ8Ggg0QoOBquUvapb10k1r5M8VVRbhRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770200634; c=relaxed/simple;
	bh=SFkVuzsPwAldbaSOEKH2bdUGAt+RVyd14krVTGOpaTM=;
	h=To:Subject:From:Message-Id:Date; b=PTVaK0nagNQavijkz5TntJGvoLaJrBuRpEY3BjEdsyOI2F9ReWz5qT6n4VtK2ktL8EZFs8cMUPJiajztZboQsFq77vOKFj5uVH45SaL86DgPdoygUQeseEzfIpsCW6sbDOQhfirO0CgjnrpwxWv2mCQfntxIOEamRzK85H+fbcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSOtbsSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSOtbsSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE4AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770200633;
	bh=SFkVuzsPwAldbaSOEKH2bdUGAt+RVyd14krVTGOpaTM=;
	h=To:Subject:From:Date:From;
	b=aSOtbsSHxRGYqyFni4deRCLnGlKw56aE2GMPDV+0S7K1hWo36xP4pMOmNB9gJCqaz
	 pDzYvEmBE2fRZnUHKwyZsUkV85xdDMObB2ney5vwzCW4J9x41xoQtkq4IhKNyLt+YI
	 RIZOJMnHyeVCKmb+CB1S04CAfnhFYaKTDl7/OjUXirMSSRanivq4tmNoYAo7uzjf5x
	 eoxsI35aoHgXKyW7yYhsry8S2xptHgeEk+OFhAWzztwFXa4Q9RredEcqlOT23V79NT
	 PSm/NdN+IhsvWcIU1NZc0diLUTzcElGV5EBQTt+cKFL+dHec3YsyAdIuAGSWc1/q5i
	 LxvvwdNadoWKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E979E95374
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020063361.17296.4169078149674167092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a02f00004144f4ab592f5a3ba179800a9aa6787c77fce6b41f6b163910a5fa
Date: Wed, 04 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770200633
