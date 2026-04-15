Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BFB390C88
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776258454; cv=none; b=jqTb0m/2VHMKH+pNM4IH60dWiCORAnAHiJnBJUituSgYb07RS4Fugljlg16z6gcExPr9hvlKxibddszZ1T318rQ2M04tnnHijSrnR+SyobBG7in/nhzmaatSZb6VxmcByt3crW2HLL7Xihrxx8QeEw2LFu5V44HFAaCyCTIuFTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776258454; c=relaxed/simple;
	bh=q51U46f7C+rL9oWfw99QUyenyswECDAlTDJDFzLpQC8=;
	h=To:Subject:From:Message-Id:Date; b=jm29z7dboT3q3+Z2yyRWb1tBPvHRP9nCJBtaLxErKOMnHToseZF206Vdzr5VH4r25w5iIEs6M55+cVJeCBtbuVEr5Pk8NDPIT/+EaGZUu2NTAlhJpcdXp+1F7iG0cvFK0Bu+qSDUCe3zYiDZNZDBeaQHGx1yeFKTfFDgQMtd3CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9QkGUFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9QkGUFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8C8C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776258453;
	bh=q51U46f7C+rL9oWfw99QUyenyswECDAlTDJDFzLpQC8=;
	h=To:Subject:From:Date:From;
	b=o9QkGUFDlXM4LGg9D11MZbNjFIXo7SW/6uSZt29g2Qy9823+nzO07PllZkMM97ivL
	 5B/u2G/wI9xm7aRy7U3ahuM5bmkjp0y0b0So0clRG5OoMysqfDfNDGCL5qiC2UnTTu
	 PBmhdWdmb0dgS6MrnP0wCGVQuo/H8vlsmUdGl/vTBbCo+SQBSFTxJlhXaphg1sBAcM
	 CjE1xBAF3IPHnA6eMYx1CMGguK6AHaor9nIGHZ7euxLKxhkU3Pjrh/KZp2Je18BLOq
	 G3xWHN+2dtAZxw0TnrwLugYpOI+ygoSXNeS1LuXIaM1WUHUdhr9XWHMdX9P/wOhZSY
	 4849aNbheE1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA6F419A5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625845368.10520.5674458551155398432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 242b3b917b6470011b44490fdddfbe392feb3dcf5f41d63530c6b97075ccb92f
Date: Wed, 15 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776258453
