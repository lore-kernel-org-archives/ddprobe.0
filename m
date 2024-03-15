Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F001B1AAD2
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710505697; cv=none; b=S/JvxNAdJqmuXaKZRaIADkY7c1nJ7Wf3DcseNWFfnXM4ZQFTlvttQt/bc7ElNaFBPLQl9OnBy5hH5u4EFcYpdkoxnK2FQllw8OBMwkz7A+BH85y1HIprVfclj7Wu9TRcgXFxxcZVQ3yiFi6rz8r/G+APKEB5aHYuU4uuT0dewio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710505697; c=relaxed/simple;
	bh=i4pvQaUp4gRrFsO2k9DWuBcchlf7CxhUkDzu9Zt/2Zg=;
	h=To:Subject:From:Message-Id:Date; b=LG3pV5w96H2G6MNGii5zlatwRaeKsk2UyfCUQq2kslfXcbHqXai90upetyz7QgqkmGlR57Aqm+ifcVXFk6SFc8rGzjP1TbVH8XHlQbV9fHxziAwBvXnB6vuV53RhN3ls/rS6a4wMyKzdbC4dHlH1HzF1gORJHQ1Z4lFYIolXYsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=od++nnA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="od++nnA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704FAC43390
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710505696;
	bh=i4pvQaUp4gRrFsO2k9DWuBcchlf7CxhUkDzu9Zt/2Zg=;
	h=To:Subject:From:Date:From;
	b=od++nnA6s8uj95gYJnzUAdABBItOQHfH64zD02ItshR04HisznsAtrifuTC+xmPEz
	 MxqIiAIoz77VN98Bpom9EQ5sQGdha7a7UrX4sT2yjJZBZoHQZ+vhArGU58bPCQYuUI
	 1+6yuICaHfUvLc5sx/2LD74f1gHHvdod3eGcTHmZOFUTcloFcLMWYq52R250jsXCRb
	 6WqfdLEmcGrnr5/jNzDucwZqrEdSTHBqWyH3e7NC5/tl8uKIs1qXo6Mh5B4ULAfACx
	 gDxA15w3FdAF5yYDzZpVoePkuhJqXl4LpFPy3PAARq8HhbnvbdTXXEmEuSmuMo/phb
	 Y0IyI3LkkQoYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B881C54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171050569636.3524.2812238807323960795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740ceb536923ef97a7d7051b9f25e54ad537f238d10d6eefc6935a3452c55771
Date: Fri, 15 Mar 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710505696
