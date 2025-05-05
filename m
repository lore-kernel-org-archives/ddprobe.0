Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A2A25D204
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746469795; cv=none; b=VGFhUAP+BudLOaOzSe45+SDnGx+Iw0XFVroI72ol6IlFS0DFUzzNdDOsN6Qf21gnRJYKkVK2VoanQRIdDiV+rbBiMpAoY21E6pV2u89e+wCc1t9h5zq/ExtuqFH1n+ND1Qk5zOIq5fw8dpEmKEzeWUDBEr3ZFDOIYrjZygO4C1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746469795; c=relaxed/simple;
	bh=oo+rYpjZ6ePMw/Iyw6UeN77bJplQ34KBEGCPoB+suBg=;
	h=To:Subject:From:Message-Id:Date; b=DKbJHgx6ex94djix56JhVKkvK/peYg2bUDxXniniW/ppy0K7oB7itKIYfWB6wrtJcpz27x7hIGilpjqmWD9I3kMDWr/WYNKicfBLJqardqeltzwxgb+xcUaGNSOjLYJQAXQ0XwSOddnaCLk7c/qXhW660hMmxWBpiUdnJs1RGhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHResAPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHResAPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7EEC4CEE9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746469793;
	bh=oo+rYpjZ6ePMw/Iyw6UeN77bJplQ34KBEGCPoB+suBg=;
	h=To:Subject:From:Date:From;
	b=SHResAPb9VnhPAzyVodrSgNYYtHyBCFvJAXgovLrCC9Dm+ExhlGj9FwQ+GxX2YXHt
	 c3M0HBTh4efbCKqRdSOfbmCy5FOyViwkC+8ytbot8IuArmMbLlM2V+0Zj+EY0oMWId
	 l/+miVgIJx/dQV/CGulLdlseDJ9XG0UlRmFvtYGisvCe3EZzmFhy6N3P74T1wzi9Jz
	 qX9hZ9zGykjVZ4yFbB3qOfPxJyJSorUmhWFV4/VC2/eNBtJzsaVgiq2TnMkYwQKTAa
	 3asPhdnDgb3Y9y6GWo4e2wTEkdaJDJHC4H3rBOB49E9wSVoLTsWwaVf9xCg+Fsxync
	 SzDtcbwawgNbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F5C3ABBE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646979357.8372.1880938563594993772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c20db83735988081b2c43d6a5d737d5c6857d1f28add544a8bcc7e1fdac72ad
Date: Mon, 05 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746469793
