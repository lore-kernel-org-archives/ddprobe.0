Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF8639ACF
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761538194; cv=none; b=gVbrre8Z2VTjKLiMYK3PVHEBpuui9Va7HNxvBII6b2kJQU+A9/UMSDMtiJcGE92rD88K1nUqDOfGiYsRm6XYFEHvT7hDQ7xVRuYhb+HEsNGu5owx/p/csI/R7h4WfVC6bbzCjFB7Dm74LrYw2cKQ9mG8pSMrXnxTcfcf3TjhqZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761538194; c=relaxed/simple;
	bh=p21j6MmQlKB0PUubjm1O7oRBFkJAdrN1H9GSye7Xbp0=;
	h=To:Subject:From:Message-Id:Date; b=LjE4+OJ6XIduDCP5NybJUyxAdhutAUoPkcZiuj87aArV3CmJmHK6WX45qomgEhvLPDC8i3f4CJ2+4tM9yvpmnRIZTQzR9Rw2RkZg4RuWvOlHG1lbvIcNlWh8Fq8szwHGJDIjKxKiEdBZ6fs79bw3n4pprA7nAgkPQnoI0Rhyxfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozb9bRgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozb9bRgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761538193;
	bh=p21j6MmQlKB0PUubjm1O7oRBFkJAdrN1H9GSye7Xbp0=;
	h=To:Subject:From:Date:From;
	b=ozb9bRgvRzFn7aJW2+d8qRG5jezdDAavds0GNBSphPR43rte/JQibXTbFVMXNtEVZ
	 NP5YC/K5E729QenNdheyA+Hb6RNi8fuvFCYjGw3YMByqkK2zK37ssxt1/0H+o8qmpM
	 erODZgHA0IUgemjnioRWqtB2eAlVS9ffIOwb2e95vS+0oIef2v1cuwqwUMEbdT57V4
	 rpyOFxm7I7t8O7zjSGBznXsVdkP7bZ5cA8+QQz2Vvr/R0h6Eh/m4d+W41mVKn/5qRT
	 fWPnUbanjJCVM5nYch5U/ZXG00MN2tK8nhzI5x2p0yowJmR4B6mbMrDc9G1EImC6Hg
	 UgrVkALSb606g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A7ACCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153819357.29274.6387590574322992114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c00fc23fd3ec56bf3d2bd20344b8bdce757b324a4456d09dae21bf02a9ab8f
Date: Mon, 27 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761538193
