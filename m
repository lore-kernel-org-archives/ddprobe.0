Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411F527442
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725785754; cv=none; b=dkenb4p8LH1l2/SXUiZKSQUcyfmxGwsAI2jr5P83k6mNEh7cOTCSFggYSJWAOW1vLhqPsKAiS9h9TxgH4vZXhC4YvZ8HMSnle/keJUBB1WccEjwXO+Y3ikyvIPln5MQSPB+Q6T0wh7yQSgxaRdq5XmRAGUROnU0NzXye3JjKSRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725785754; c=relaxed/simple;
	bh=LJpDCegAWE6aeQIicIUd3qe6hnlibhiJOZCjYN9n704=;
	h=To:Subject:From:Message-Id:Date; b=pX6gOpNb8xXvovYq6RswWPwESkHx6ohE+i71z2Lq5ljzL/Uw1YacSuRoepIfUG+98hXzAKXBGmM7/ABwNN+V4gALGroMxt8wcn2foTgpCag1KdIpxZtekuUWCG/7Pwmr6O/2D8PBXoUmf7VqtoRrxFhEkdfxyQyxuLBEzgXK7xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwemQCmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwemQCmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A9C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725785753;
	bh=LJpDCegAWE6aeQIicIUd3qe6hnlibhiJOZCjYN9n704=;
	h=To:Subject:From:Date:From;
	b=SwemQCmnACNeiz4QLiawHJZtoUJpH26dM5X/5YQ4pmWTH37Lf4p1deYdqHknWzc7c
	 HGKS8G8bK4HTlGU/ADV8PbzWU/OW3Sr0vMSBnUOg27dWo1P7bZharl7JX52q2eR5BD
	 EVuNDlZemvT/KwosSWEw94SofjvGl2sLAb25Mqi0yhq0plB6d9bj6qs1FGnwkLCmjC
	 SgunMSwoZ5FBllUSHPxvpW59OIdiYc56Hp9MOvvyHnqxpfV/GfiL62NpxKZQaZuGwk
	 FnbsVSiwT5yWJMyT7zww2E++PestnK1NxiEGvfXeXSc8BJQC3BlPDB652PTbW2RbJd
	 PpfC+KEpb7bCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F7E6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172578575359.5911.267665242741656308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fe4c4430604838f42c0d993b17929cc1a95fb6804a71bb47c96afab6ae7dbf
Date: Sun, 08 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725785753
