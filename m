Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1566E9475
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758608394; cv=none; b=i5tveoANV4HzIWAKUh3RSFduw3XvI1Xy2v8Vq7sgIUB2xWWWfG2Qzyp9asm+YL93J6hxGkzhRqhBDgxDqY1YAbwAYFhNLSy7L9oyLCdVKnzGvWMfOHlbHMK4CXsmv61Q+rFeGQDH0QrXSRsXJGOlHLpwnzDy/Lsvis+iZZG2yr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758608394; c=relaxed/simple;
	bh=y91ttsONmN9kYJZ3NZcY4e+qPQehNDSubkn4zN1n6rc=;
	h=To:Subject:From:Message-Id:Date; b=Ef1SqxTcFRxl0yqXA9fYRzCfjTA10D9wfDqlpFt4yicrDCtm3Ppmhp9SpA2UiC7kpW07Mrxkjzwugv2Dk73C+OtNYDA3LbJPVr7cwOjEOxMSf3oift53vimDV8s/Hx0otfsQc1XmZiwkWkmKEJx62fxGUuBwIyc+X6kSQtzkUL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFBIoS9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFBIoS9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2788C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758608393;
	bh=y91ttsONmN9kYJZ3NZcY4e+qPQehNDSubkn4zN1n6rc=;
	h=To:Subject:From:Date:From;
	b=lFBIoS9+EdiHvYBaMOdnkclEW391FZ0tTGFdwwhQHK4hKvaj5eZREYiv4asncxlDX
	 2zAXT+Dqaan93SZU7o7st4vFgxwTwfX0NEPSZlBmqEv79Wm/L4LYh6ZVzBjjrOt9LS
	 EnwfDFTdG5l76mEMjgLBnCEetBLw/yER51EPJwoQ046UDJp0L9zZjjCp14IDA0T/hf
	 n56BI8IJpjkWnS754eAfHreQK2rCEL4jcFI8xdQbfZ76xCOldt7B8jF+pJEG1yiwFn
	 JQCWiZvswIh6B7wFlYr4Ekhfe6V7Pf4iyfZumPVL/75UwjqOuPRbRODOueB8scsZa6
	 XRXcuO0cQ7fIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9015ECAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860839358.19098.14185112121981543779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180d8c7fca83f4159ed0c65b805fb1481fb595c4d760c814dfea064102fd2eb2
Date: Tue, 23 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758608393
