Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E7D433E60
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788950434; cv=none; b=Ay5FCSG5QG/zJNgbCAQiEvTUd684OZRKT+IsYDQkpuhCrXUG/ImJtRP6Hs2DhFBKbAWroDAwubAAEOX8pUhuCKWugykt4Ogc0zZ6ynQDEZnjts+fzlBqfBWoKZflKESaRbL/kCj06jtXplYo5I++C7acSAI6kBy1p3Eer23cQlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788950434; c=relaxed/simple;
	bh=WilxkutnF2CEszR+YaYsybXbgL7KL1j6EktUQthdcG0=;
	h=To:Subject:From:Message-Id:Date; b=WGtrvDLALfM9zZ1hxds/rzocC1fos8+xbAsa+5ooIYbiwS6H6Yq+SlIth4JCFUe/lNWCcG5pYB5VqqG9SGXWdu0fgpcUqgYNLEp4foGShHg5t75+x0hut9yyTLoia5pJ5/zuxePoELZORf0w7XadeqrJqxMXN3SSFJFvbMhuNcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiNAp+BF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiNAp+BF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46C1C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788950433;
	bh=WilxkutnF2CEszR+YaYsybXbgL7KL1j6EktUQthdcG0=;
	h=To:Subject:From:Date:From;
	b=ZiNAp+BFgE+ByktNNl1kOlZ6SP2t/zOvM8yPiSz0Ai2RjdKkvVlz5JxLEn5uXRLV0
	 rV9bA9oR6VkP6yxptiVkHC5LO1FrloS7eXSeTaur6rioBz66end0V062DvwRMcLB+X
	 dzD5WxRb57GA/Gu9MW66WZQ311EsYJ4QVqPIUN/vq4q4MJRjKqnlVaAzblD5NgHsvE
	 hx36/HDiAxP8yyOp7jggTQY9Z1g0Z3iKUSBu8lOO8dFV40j9pnWpARas9Z0gXTXysG
	 knqCW3jaqgbKcc3fpMOlDCWUeYx2i4i7D7y8cH2fKDq/0vH7n9wAUC7yM9khgbUQxe
	 u0xywe0LmfIlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA45C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895043370.26196.16068863316933362368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf35d891045d3232b9c97f304e5b48719370131642e5c2299bd9a76bc52a1929
Date: Wed, 09 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788950433
