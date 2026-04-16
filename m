Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2BB165F16
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776359254; cv=none; b=mMKXaP09OPPHOYxM3qtJA7AvkUYfP7IvynQDqCCR2bD7f4HfZZNbpXjddX7BVlemt++9vzBu6Ogv5LuArUzvie7LdELQ0YJF1vxHUCxQ/1TjyxAaoQK9ydsPZW3z10gt60CK+IBAmIr41Wl3BkrIefTT1OCZMAk7MV+faVeP1C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776359254; c=relaxed/simple;
	bh=e16e9voTiEXgAJvmtDTPRAUa7G6Easl9eJIw7QcAB30=;
	h=To:Subject:From:Message-Id:Date; b=Bk2S/j0sm+CCddCjsXDB73XoNoB6cvZshjWSQGmOlsKdcSjwD1Sq4gIaa3tibjLpk9WGf50Ac2JXl4p+igKxH/pqCiux8OE8o/iYSbV8hPvc2JBaGJdmqOUah+rZBMZ8DmzS4mFDfC2NZqlV3JrAC/QLdosts44MfmNWp9XfnSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhR6gfi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhR6gfi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD0CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776359253;
	bh=e16e9voTiEXgAJvmtDTPRAUa7G6Easl9eJIw7QcAB30=;
	h=To:Subject:From:Date:From;
	b=KhR6gfi6cdDW1vyk2MngmGMqJpJXUhI9cKwsbIZzsMjZ2Gx1vPVw0tqNlPZcN22sY
	 Ap73VwmKZmC44cEWFEodhF5zRieVaUYCW+KE1BQO0htLgGrN6983U26tJhV01cUHiq
	 L57jKgw9/mZquXKVy2kkxiHULKnPFCebi+GQhqmAVrqqWneD1CSNgJnzvkcaeeD8+0
	 2BEFx42CaJxdArK2Pr3DeP48/z4S++AHEAPG2YFyHgknZTr6EmbNXP7Hc0oV4Du53O
	 VwFQMVSp6fg2+pWLBTxjwTJ7M/C6R+XU7UCBNOpxALKrWbJlSRmC/0oZyU4KaHbk3Q
	 IscnxUOzYgsVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE584F8D763
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635925370.2038.10285090242527734067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51cd10e55bfb3c976dddbb4f179dbfdf5c51b283d7d5ee2c3f16b192ee01fbdb
Date: Thu, 16 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776359253
