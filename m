Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493421A2545
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789188634; cv=none; b=IP22jtlA37JpLWNrKfrepX6jrAGf/Gxk/4h0MZ8o6321gnFAbrTqqvGY0L3CqX8PqhhDEzOQBt7VejGEd5fnTJi1C6U3o8CZL9++04/TTDRuOVXjbNeS3KM6osuYPETiU0tX4q5eD7+AI7dN+nXubhu7P5cZFq6/6cb0YvW5fAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789188634; c=relaxed/simple;
	bh=ASuNf46mw9U9ISEXdDQQ5XZCUWSatK5eXnUEavBagaw=;
	h=To:Subject:From:Message-Id:Date; b=CnZ6f/9WrOnYKLNxrk5i81/NKHOxi+VNDQj3iQKbR+525VSpKIs+SJdQCQYvx/IL0ixia0pYVC28We8flMgPRhSoFVbHnr6m3DaKDrWwa7/Mp+yGTZcX8CbyVuoUtmc96zB66mtgKrMk0oIxdN4VZFfMwLpO7lVCQeEsDUnZAQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psjeftXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psjeftXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D847BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789188633;
	bh=ASuNf46mw9U9ISEXdDQQ5XZCUWSatK5eXnUEavBagaw=;
	h=To:Subject:From:Date:From;
	b=psjeftXmUqwJVdZBiZs+wW//x2htLSaPkfLBkfMKciUBnDC732L3AQ8h/m7gWWvfJ
	 60rqbFBIPDmBtfi2Zo+63nnBcbfQP37U52c+6gIpcxX+vzgedw+wW9m8wFobagIEXP
	 DBZFClGtTueAE4bOKMQA5Jm3vAjdwzjXCZRNhYQwZndf11jUSpIRDSZiiHb5saTEa5
	 mQIdbXBmrJUYrm8lsQJj/maKabBj47Ca+tsBJpkXXnjq+4muKMvDwVyX5ToNLIMfJw
	 1zfg/XYMNTBeTYaV/7qzPqVRMR2XeK9wyPp7/oh5nOrNvJ7TgazX7Tz92vKraz/m1B
	 AEh4qu9D7q7Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0142C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918863368.12014.10657359227188630478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d54130578f09e7691909874d580bd720be75e0db5a134f98d079b22fbabd05
Date: Sat, 12 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789188633
