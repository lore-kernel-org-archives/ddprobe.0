Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA06386C2A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776966454; cv=none; b=hU4IMJglxnHeuB0lPBnguGmSBbzhxDOSG9vi3MvWPjc/i7ToxQTRz+DyM6HPMDIvkNWhlF5lNHKISNmMh1CDvF5J6isuP0GjojKKtUSFgMiHfNVStkR1BoxnzUqGmuUXirooHS+wyfmBIkYbV7x+91AqV36ROzX+1bl4YN/WJw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776966454; c=relaxed/simple;
	bh=MlMvxrU7JUi5x9MROOarD503vQSTDQwF/dgNmeTGiq0=;
	h=To:Subject:From:Message-Id:Date; b=MdV2eiceC+ZbAc2eRgoWJeNScx5ZFWRE4lEMYettzrmy16lmujYJpUPoeu9uCJnKHKdPjYvXb9vom4GiZcQHLePB70acF6xPWhBu7itQqV684dbXhO8uiDBNgAsxg1zhoHubVWMlZBpaAHmhOPJnF+CNY2wO+kSenegXsXN7ZCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkHZ4GEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkHZ4GEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25EEC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776966453;
	bh=MlMvxrU7JUi5x9MROOarD503vQSTDQwF/dgNmeTGiq0=;
	h=To:Subject:From:Date:From;
	b=qkHZ4GECyWY4iAYj9JzucvV6Byv+WUdC7PzZpYoLO46ueG9dVoLOjA9e53gR2QV4q
	 87q8GrDbCsZH83C7V6gs8Wm8HoprjXaO057tgmWvAcz7BdZwdhjPX84nXt8w5WAfoa
	 8qS3hxObyo+qW3UbuePZKxt0skxA1J3FF6EcZ5G53twYpmX7z39Y00Ww1ZkzXeyxHh
	 Y5egDj1g6Xj0i4MPBdltk6jkd/1AFOQfhT/F+nYhDRNV3QVj9/Po2J6ajm4avLYdb3
	 a+CU3lYTG5FmGLds1/9+iqNs6n1UDjIG+ebxlwgVa98Sj1zDEIbhGNH7hqEgmqSfi+
	 JkWpbzHJ074+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0413FDEE39
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696645368.16029.5425794171894666151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb98ebbe1defd564b610e936ae821a96046965578f48f7df1202300a70c9132
Date: Thu, 23 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776966453
