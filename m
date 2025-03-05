Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECAD20468F
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741167534; cv=none; b=YRs3+MHm5f9qmZfmQ300Y5GPrgHNHgj9fcdLh+fjQSp2jB7rumYfAvToxem86TdbTPOZGVxsRCr8RQMOMcsESFPQIstNHaTToFfu3p1bS2wy8hdlVdzmIpb1D5UayLq5kAPOgKMGDQ2C6NBJt8jqSnUrFmws7g2hcqOk/XxBxGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741167534; c=relaxed/simple;
	bh=j1X1xvzTCL8j3MJ9eIHaIiK0banWVDtZUAF/1cUFXKA=;
	h=To:Subject:From:Message-Id:Date; b=u066yTb94P7x19b7pGDB3A+I0eZLIkGmrRVbE8NSgqU2rYVz0U9Et6OiGR7kGwmGYCrCzsTwoGfPSjo59n7EuY29FduS9ByTN4lQ0wpi2bNCu3Wjr2yUkiX8juZ7MFtVcwGkOe3lOQpGPrlR37DHqk3K3vGi4irr+w2MnsK44/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zg+AKUmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zg+AKUmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB583C4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741167533;
	bh=j1X1xvzTCL8j3MJ9eIHaIiK0banWVDtZUAF/1cUFXKA=;
	h=To:Subject:From:Date:From;
	b=Zg+AKUmxAeKXrRN5AtQMNpkV8KVI8SHZmC7O8sf/5ClPa2oe6HfOtTZSuSoCY2mUZ
	 7Y9jbLqMkK7ZRskw9DWvSZHphFiN9lf6cSuTtEve/KUk9ezIflvU2eaJCAeRRP5veG
	 AYxBB/ctl8XGsFMAmnH4tQvNBM0RMkgJhMrdd6ZTCaN0IVNuQCN6PUQv/ettglEdUA
	 WYzAedb2F4lEu1bA2/iz1MMrnKKQ54woXIzDWpaM3M9WQU/w+NNI/Fi0nMyawVQvtk
	 0rjA6KMRnmJypp7ZD16lb8/hPmcJt8SkKtLIYQfQOCpDrfo4xJs8K9orZzVmoF1gr+
	 vlXOUgwQEx4Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3EC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174116753358.14102.4795357149855642631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840ce1225321177f3e4b9cff054ac38a7ca0c6a253e18f7cfa4f054819a7ca29
Date: Wed, 05 Mar 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741167533
