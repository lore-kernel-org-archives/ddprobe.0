Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9A22DEA93
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789435234; cv=none; b=soq0/AQLJMXjiOguiP9uFteo8I4DspC7G8ZwB8gEpJuzf4WaNN3xqiC4f1CHsmoxyd3mgh+7jqI5gRt5kK0uBtlinIAeFEkvfqfg2sawAwOCQ/45N8FsrEt4PF9iPFTKFyUTdjEmwft0C4sLanhHW6WjO1LYJJRMw273+avYszw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789435234; c=relaxed/simple;
	bh=HWoAWm0d4HLejEHKwfqjEHL/4xQ+p3G+PC96eolGOV0=;
	h=To:Subject:From:Message-Id:Date; b=dEeEUk0DFcw773sdQQK8kB6cjO2pxcotEfbprup647U1ouDJpiiRA+e3g8WHo1wJ21bGaT+gfj8BKG2cW8IjvNSfsZ9BOuwp8sjf1oewG2ff3tLJOx+XQpc3o7v+810FnsMgYvct+J4m1OvZ/nVeYMkkoRlDs+LhJGt6xphv6ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSa6tYO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSa6tYO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E38C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789435233;
	bh=HWoAWm0d4HLejEHKwfqjEHL/4xQ+p3G+PC96eolGOV0=;
	h=To:Subject:From:Date:From;
	b=sSa6tYO9Ekp1VdocqW2jOZigePMnzOidjl37WtiADsumRrbs7cQdZ5Rul/BnUVLgw
	 Wpxx3OiP+Ie0kRvSy9upETzNKcQKr9lC+csg+3+9pePTHM2agZq41FNkgRY8fT39y7
	 Rcp3vnrj8dytqd7ZYQvkbGtUNHrDYg28QirWYMmcPWOIu+aw8ncgWn/xHOmp47Q/6F
	 uDGUD6TTXabyFInGlwdMgRAzHcCbcBDr2eN4vgc95z7sG5kc7bQ0Cm3derT5dboydT
	 6t7cNRDWrPB8dnTz1Zv/8AbRApGSJxazy1zGbOP+31lyOA5GxKD8WRT297eEODOT7c
	 HTN7TPz4YWHBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC18C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943523368.4192.7561925115616570803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09eaebad76f5d9215b097391fbbfc0c3b0e523f9af9fb9676630473c4c0a799
Date: Tue, 15 Sep 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789435233
