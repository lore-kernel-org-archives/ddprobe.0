Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F991DF25E
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739136954; cv=none; b=M4o/nJiElHSJjZyz5EiyURircF+3ZpE9/sIEV5wZVFrkUhFsHN/I0nUxijZoTSdhryI1n+S/IZ2cTY3uWR+nrIZpV6aji15JHArdUOU6aYngdP5xF7h8Kk9rY7RWnM5wecFwguYmKYtK35MPW+WsNV5+3SkvvTXijmlOQl6eZsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739136954; c=relaxed/simple;
	bh=qx2/MMODH/8y6/MHOn0OUbtIGr0LWD6ku8vsg5eQzSQ=;
	h=To:Subject:From:Message-Id:Date; b=PitE5GNFAxXA24ITxwT7/zP2zxhpegz3XlO3IFqIsDldLLNbzJelhtgE+Mc6yD62lsgsioGxAeH+F1Fd+FCa4nV5QxBpVD343XBf/lRoN1+Tz7IZ2l3LixoJELoFP3yCxy0FnInXRiFkLWuZ23ITQpkB0YGh9Cz0FIRL/viJK5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpTj7/eK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpTj7/eK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8956C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739136953;
	bh=qx2/MMODH/8y6/MHOn0OUbtIGr0LWD6ku8vsg5eQzSQ=;
	h=To:Subject:From:Date:From;
	b=kpTj7/eKHVzyppiKUztYg/EZURBCCVkowI3wzrj2HAW6GGNlKNhIL8vNjxxzR3TfL
	 U2wYWdfTLVBFJyXTnBh9gPW1I2njZQyTvN/CdshuegIEQZC/nO+WSQadsAI1fFxK30
	 cn1Xhek5lep+tgjkFZ8kXAQG33Jq02FwgQ5xCeI6N6Pwo8auI/ljy7mLTji4oGR/W0
	 lfvNjcFutSGr/4ljPKFAKYc0C6r1plxjQN1GDltrhSyrxlfhJ2QM0W/50lnh8Ew+t9
	 Tb1vr9EHrrW+kUtH7gESxD9BcGX9N/7nUd/vIfzzYVFwiQytgF4NgIOxKeBRe5OVS/
	 HSuTvPNMRdrCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9445DC0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173913695359.21220.7418183190221099581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2cebac9e8023154ddcb52e631b0da05280505523bcbfb0a03850b1b04b835a5
Date: Sun, 09 Feb 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739136953
