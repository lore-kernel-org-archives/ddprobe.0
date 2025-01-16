Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1DC1DDC12
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737041754; cv=none; b=R8H3posD88w4WraDhylwj3HyjCQi1gTxJ9MIEzxynvbCZ6CCGcpxSfdjlYsFh5MHNqbE27/T+ZRTr3QEiIGuyO/gpzwYx3Um9v0BQka3lOpZsq9haTSUO1DP+ssJy0pLptLHTSMTCSnZSK0OxL96ACUyp4IDvdq6/r/hsMHeqDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737041754; c=relaxed/simple;
	bh=QY2H6CVXmwGBelX10hbYMBsiHfkl8Pe/OBSt3Lr0wto=;
	h=To:Subject:From:Message-Id:Date; b=ZKTlxZHru0t3s1uyf3cvp8tQzkuWqSqEZv05E+9KllQHqup8KFZlp2oxvXalLvJkFAu6Q3+2mAGUM166DeB6cWtdP3/s5aYVyVKuElgAsVX29yX61M6xUS8DsQ0RmwSw3HUDtY/mO9lH/zjczsz7Wu0kR9TtH9iV817OIb4qn1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuYXKAFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuYXKAFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AC7C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737041753;
	bh=QY2H6CVXmwGBelX10hbYMBsiHfkl8Pe/OBSt3Lr0wto=;
	h=To:Subject:From:Date:From;
	b=FuYXKAFYtcFwcy4M9AMDyjV8n51d7ZXxsQ5N8rw4bZVzLMX480MdiynznmVcFfKwx
	 7OiJzyotUtC8laz4SrhSJxrrKzKBnd7QVUcYBgEQM1779pQ9okIWdkmRxTa3ClvFnd
	 qplq+VTzoULU7J2FpEIjhXh9q8eBUxFUid6Tt8jxfsO5E5k3JYNcYQW8ogwnvLP+S8
	 G/rusdTF68LV/xgda81DwDKdsUXddS//0bG5pjqrA9JUSclcD/t8b71Ox2nlQ1pUde
	 4V/uKsymtt18/srRS86iilZV6i7lXoitvz8BsHaGqVnAGffrpdwCMgY0JgTFn9iXwM
	 6rYRTz7sl+WLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200BC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704175359.29495.9623061373162016152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87daa2ceecfab8887b9751394bf221fdd3eb77a16ea20bef57daaa96c062bfdc
Date: Thu, 16 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737041753
