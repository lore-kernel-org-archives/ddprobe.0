Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CE73594C
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750039794; cv=none; b=fR8ujz9/qZMmiqwDao8YSnznt7duE2nqpX8OxGLA36V9ad8nb+5DVmTg1Jo/JQL11EFFqeZnsjFBcyomLZVYSCcYlFYwLMH3V/kuMWBLAFimNnwyIL/DzpEt/OHsKGOAvLA9le39IuSh9eNOTNjwOsszTDjmxNNvHyuqie52ssQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750039794; c=relaxed/simple;
	bh=4QO7/3m+hRZ5V7xYsVTjn5jmMXE+d2cR5yg5klIeXgc=;
	h=To:Subject:From:Message-Id:Date; b=slSSRbAvu6oeLdRQUjQJ3L3yrLm6nGzLzMgOk7lHqoEdbfCriQZyAPCpIiGchydV/gDOMAMVtULGM2nI50SdUgRr/+PdxOEtqn+TfK10GcNrMyHMnivLTyMLZDb5nlbUtPQaMv9A9Efq5FCINZHcFLzUB9vxnsxwEVs4krvoV0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY4uDZML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY4uDZML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750039793;
	bh=4QO7/3m+hRZ5V7xYsVTjn5jmMXE+d2cR5yg5klIeXgc=;
	h=To:Subject:From:Date:From;
	b=YY4uDZMLk3ycPOJXU0GrmU5pWjm907LOGVHe+lh+kFsjrMU4bwWFCTyKXWy2uWsJk
	 hHgiJfoudZAJmvSoDeFBfPErwR4bzRP8uCHVQg+H0meJmn1FYAglfVFDGKpOXPK3qo
	 BUDgSh4BkeLvP8smoi54F8RPODio8hTIAF1F7izN8GakURPgS9Zu4/6OuF97Q939iP
	 v36VTmgzSpWLxZODVx5HJ2yFLlKYaLKS6ZKKVLIMBDMp/8/6OjK3kdqRWLMEBfDJ76
	 U1O3jYGwSr4l61LACfgtgeG03EB3Sj2Yh+YgxkmyoDN/JDoU07mvZlYtD/2jfGFCwX
	 uQf9x+gveUngQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D8C71157
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003979358.12965.4120898762882435574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161d630eb53083095020c7d139425c2e02a6e64e631d7a00610c0995928c48ad
Date: Mon, 16 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750039793
