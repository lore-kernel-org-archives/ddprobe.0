Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C03A15B10D
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740437334; cv=none; b=FSZCmIjTO0S6GwcQnvJAzuw6mD/FUCtOGO250fEqqGvytp498rzyEk5laGrkN+9TIDamKz8U3AkPRBs24ESxQODa2J4/0VI7uy6FJlb2bmy66+P5VXxrKZmx0TU1rtNMD3CXBVNCNF6sOp7T0nFZUZBFjOlWXbjlIDCl3e8sJ64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740437334; c=relaxed/simple;
	bh=081H9IBt1a4xEuWxk/eyvUp4TcZ08ZkpCZxsR+AZRi8=;
	h=To:Subject:From:Message-Id:Date; b=WfpnFM3uWviNVbDIrdRdvs+L14Dwi7reCT8V28kEqufYc4kVCfhJ8YGnBqYtxCwhPeMuENLOw+WYSddfn7CKDYnEbGBPo6+YMfP7nOX0/1kpRNjTfv1157aR6cimY6hCEaNCDT8Q/HY0VJS666nIbD+RQnal9DCbP1+B4hrgGaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0Ai/UEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0Ai/UEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4E6C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740437333;
	bh=081H9IBt1a4xEuWxk/eyvUp4TcZ08ZkpCZxsR+AZRi8=;
	h=To:Subject:From:Date:From;
	b=F0Ai/UEyZen62G2QXmjAEkh211QIL8VH7/Cc6Mgx38Tlbmt/mb0sIkGUG2EsbewQt
	 t3NELV+xn9yB4g9F5B0TnVwdJwRGVpI++/tvwOXLrIu3aoP8omXxTVQ0GNuhY1ivCQ
	 rhZXZ24ANIHtIKkgRM1S44oQ9kJcC1GMavdPrT5CXGBnxjfvipp7jxDn3JPooWtHRv
	 PwfypQBcMj191gmkV2rUFWfv6UILJM2dCo/IDiAxRMjAzk4zxiexqJ2xjDlx+xddzi
	 ESadOQ1/pFEimjN+4Xoe88Zw8V+LFGedFPPJO2INCmtAnmO0N9SFlKAvuW04HlDjjb
	 WuTUdH5OO1aWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A972C021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174043733362.16646.9050769871502732213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c5f2f0183c06459159a6f82282445b1b5c0d5a5deee0d0248e5973641fc4ee
Date: Mon, 24 Feb 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740437333
