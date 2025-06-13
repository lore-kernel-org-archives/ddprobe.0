Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3710E24EF88
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749791994; cv=none; b=rGO7J3NLuxTHOocBdmWFK9FC1D35TOSC4N7HY3V5N1pIHkiNexi6zvG5h5nY278RnNWeGvjmdZFbsj7myRf8v4ntUn6K6YtNLwKq1kdeQ6MMCYWSBmVPLTMjsWC2oWbmZezNi3JMg4ZV1gaQve0bQdZD4ydCpWBpi+fPNjZnuH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749791994; c=relaxed/simple;
	bh=zPPtUpj2e/7ceYw1JS19ruZsVp/KWHMXCK6BD+p1nEc=;
	h=To:Subject:From:Message-Id:Date; b=mmCINGeEW5Z5b09uTHAfuCAdkWGfR97DEWxR1Lk3DJPb2tlyyYYQkPIXtdNMmbu/0pxZQO+ymRNOsg+F+WVR+T63UxAt6Kvs+jZ4AawS/9RuqG6hryCkmwNNb7MAcuwMKeabWoFcHPjbPEvA7/PF5PZQBrHEoDnC+Ob8oTwzLNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMcxPqPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMcxPqPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58DDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749791993;
	bh=zPPtUpj2e/7ceYw1JS19ruZsVp/KWHMXCK6BD+p1nEc=;
	h=To:Subject:From:Date:From;
	b=oMcxPqPPu1YFPGwSM6dzPCVTGGcJZj2/R7nYC5kB6Ch2TdlGULmesjTeFFL82HgY3
	 4YXeS5YuAtzox6p7/59TQyL5MFx4zVni/ac8bic/wIqHtsK0Q91K0990P6ekqhQJ3f
	 YOTUQ25y8fofVgmR5q6FWPMcCot4xFYHmFs12oBVaY/kZ2oq0X5QmT2xLxM483cD/S
	 XhYtjtA8NlthdDXPPjhj3opoB8ERjRlbP42/z/tM/vaDRiaCz04cdR3mL5gsqgT83C
	 fvUOu9oUrnno6uTF/QUWSLV5hj8Q7zfu3/WmW1ehhYzxpKEAbSKu4tSHDQzIuR/5iP
	 q6hXTp7jsAboA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D97C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979199358.17592.4756553758175135926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999122b8ca0ddab944fb862d791d6359c57eb1c41c56dfd71482cbe073af2d8a
Date: Fri, 13 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749791993
