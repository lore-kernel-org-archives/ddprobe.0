Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE8C1C2428
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728558354; cv=none; b=LF/GHOGjvs77rz5yESsO3W+r9JCnK9SsK8fxzyF7+ACXiqRS4DOe2rTuUPGa+yPycGQptqE+NWnuv1FpLTcLqRTiQKt7U09CqwEVoHtLk1llrA8rJHdvGwuqGGe9IChPSRRliD5JZYd1LcA+LFdrJQRbvb/oVYQbSQmH9toHsyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728558354; c=relaxed/simple;
	bh=biW+C4rF0WakK8lBxd9R/wco67Y01CfHeexbaZpAW5c=;
	h=To:Subject:From:Message-Id:Date; b=GO09k7UpIrE//wDOYKWpjAGx/7R2ftyrAr8EaiNNUFzwL4kReNTJsuSp+LC8KgKR9izW3zD2MOMsJtIrYVupHrhcQdAwkUCMcu5A5RJj/h46qgdjIeMHGbDxQDaGnlbLztDUS+qY7PHQ9e9O8z8w2C3DgBogn7gN2r/Z7T+GycU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZ9FG0Y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZ9FG0Y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF5DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728558353;
	bh=biW+C4rF0WakK8lBxd9R/wco67Y01CfHeexbaZpAW5c=;
	h=To:Subject:From:Date:From;
	b=LZ9FG0Y63usTJr3Le458bA5hyFA7hlNg7rFinlSW2eORWtYhYXUNoNyofCrt67VnM
	 Wk3dWyIRDncaQuaUHbiW7BsBK+NjWVeoj3ag8PcImf27jIgvjyOfuft4DqTcCcF0xr
	 6o39qtqS4s3NP8d0AktaWPpoVjvGK2335m/as6yT3b5DHZ0jHOMTefhKhdm0a6EJU+
	 2BfA1IdSnBvuAsMPJi/LEH2O3mqi0YyO36SzgFH56qY40x0fPlPpzCfKci76bTt3YJ
	 V2sHHExgesI8rCXne/rWf33saDQVAvU9ncyweO1Ms4ruPqMA1w3XWxbeRioSocr0RB
	 lXVM/9Ekk1YSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E21CF11CD
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855835361.11529.12424326851301409786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09473da461b25b409ca1c86b623711f7901f5259e12c035852b497653e90c2e8
Date: Thu, 10 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728558353
