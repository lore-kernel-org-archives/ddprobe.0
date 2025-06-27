Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3B21DA5F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751029194; cv=none; b=j9x2jBl6Ji9krSJtg8/LU13QW0oiFLJpaXBXoCm5qwBdgC/4u8zFZ9ibzFMxET/aKC3x6HADUePj/dGFmRdDbYuj4g7ThIPLhQqzhSwWeXP1cjlRAhjkRMPG6RIxV1eq2YioE/4fdT1jMOp19k0mXrXIBwWGhHfWTfHRVmFkCng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751029194; c=relaxed/simple;
	bh=MYkO+e82zEHYgZfN9Pptjj4qhtTWzSigKtkUi12USqE=;
	h=To:Subject:From:Message-Id:Date; b=iZzvFNeO1vxWubZuy83rvasNZY2gfv25YTVFlQzwR4ae1fPhQQg5nSCHJZsxyjGoyS4Gf7wuaywEvpO8gmtP+9W5MOdigWcTlTJUMQs5ObUHcbOqE4AjyOUJ7+wi4mbRaeKAaPfgHO+IuAEHf18ji0ibzQ4Z2HK7CQgi3yy/5C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZU4LVrEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZU4LVrEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78F4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751029193;
	bh=MYkO+e82zEHYgZfN9Pptjj4qhtTWzSigKtkUi12USqE=;
	h=To:Subject:From:Date:From;
	b=ZU4LVrEsvdu7E7T8xti84Rm4uKyNvRK+tj+KDcUDc0RFR1ifw07/AcXxPN91yEO26
	 KqknZW8dtaeyay/6iWyFK80TkG/44zRS2c1hQX8LHz5G1rztkYcAhg12mRMhJFcBMS
	 mMOk4AddztVLBbgGY5Bk65cQ7ul7oRtefz9gpSecWL63jVRw5l4NsziOY3zERJyrYh
	 TzZ4r8y9nM7+FwyfimyOiVzvP3KBnaqKQc7AdUjFoOKybWOFCgBxT8mKWeBmCYQKpK
	 l1EmZfXpd2GuIqVcEYAjiTvW/rZXtTZ+SkeppZcu2m+KaaSXzmz0SxubluyDjrazEC
	 AHF8wI3PO6XNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A2C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102919359.24283.9730898433114676232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03f50e8e47d836c2d41ce5df5ffd326be23afb669e9cd7bc96f02f3a65e5aa5
Date: Fri, 27 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751029193
