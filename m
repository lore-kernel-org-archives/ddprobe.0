Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0294627AC44
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757258394; cv=none; b=LV0AYVSh5hwz0oPVQWNOb7mSftlmZxTbCPRDfvKcf3kbxKHujBu61o7bRzux3rjKAdGUuv6hYnStqdByCs3zJ32HUt/PRHxcdpnRPHFMrp5pk40HPHhkF/jFTAsBW+FmRkRbxsB5NyY+DQUfdSV7JJKb1XP5mF5bNY/9arg3Q20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757258394; c=relaxed/simple;
	bh=H5YabMOhUz1CdFZ9URRbCqW7MY43XuNsn7RpxMvPKko=;
	h=To:Subject:From:Message-Id:Date; b=JR220mQmTjb1JNI2IGsp7JewJdD894mZXSE+DU3Gyt8IgSvWJFRzm0z/VclY5DZiGbUN1achwHNrDJXvZq8j3DtbBatVlKvO+hwrmsMJoemyXI4aJJnVG+aG1arOTCyWA+MQbcrE0dxm5fnBgQcplfLQYX7Ki+akf7PXI2YXoHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtfY5QVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtfY5QVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21CFC4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757258393;
	bh=H5YabMOhUz1CdFZ9URRbCqW7MY43XuNsn7RpxMvPKko=;
	h=To:Subject:From:Date:From;
	b=mtfY5QVauRV2CJor5Dg7OEVeIzHGdI2AmDfk8apUBo/0CjNgWx5BLFJTyI1RqlWv1
	 4pDA/WIbY4AJ0asKyeXA2jrd+g6IxRu34+7B4O1Dx8FjTM5+ZFH8jT4K6apAUKJiY8
	 miuYgOcFBgQ6RQMtP3Fs+RIyK0JM6yz4bMaaWgPR5zy4Gx3jGnrHNyoSxPaVuZisW8
	 AFai1kKQ9zI3l9eO7Ih7cicVRY1MsDtnQe304ejOMq0B4a9K26RSyy8gQdqdwldw4k
	 GFg1RQQGZpsiNoRWHdrou+qgU8q6mTHM1+ap3FpiV9ATE5/rQhx/mvSy64FhQzV2hg
	 +NIsfK95J82ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A85CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725839357.4400.987016917908612206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776d7211c0354d404a0b7c408e3f388bcf388032f6974ae11bb4ca3d8a8e96e3
Date: Sun, 07 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757258393
