Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3413886331
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776124654; cv=none; b=kkRAIF+B+0oS3OLKrrXeqpSM4+dd2V7g7dsAQfW9ayowd8GzBX3HUfKjb5QOxIzYXVwjDDgASdWbv+SQnY9bigD0GQyPI8lrH/6usJOAIJrAOORV3EaStv1VcG2K7qhX3J0bQQJy8Rm3ZIXyol7qvN6B7RRCwKPnQY11SaZ2C34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776124654; c=relaxed/simple;
	bh=GkrQPKf9ChWxcM4gkOysNxdSuYw0iFTgivUgmwT/fuA=;
	h=To:Subject:From:Message-Id:Date; b=Sd6r44Sq0x6Pd96aKhgNbjY/n+NBOqeCkWgq4COBxkRyXmg157LjSqRA3T6SjLQLbl7iE0zMqmjgSbR2FveUolHhHNLRG8x5LAjshfLUupvIIYZpFhV0dN+cjZ2NktpG8zBBDRL6KmHMWPGuJ8R6VseUPDufAUhV6I48wuqUi18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovwGMiQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovwGMiQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE018C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776124653;
	bh=GkrQPKf9ChWxcM4gkOysNxdSuYw0iFTgivUgmwT/fuA=;
	h=To:Subject:From:Date:From;
	b=ovwGMiQomv2emv56L3ae9LY0iWaKZdSL2uIPmdtFnEYwphRmT4xerrTeIUYoNge+K
	 GjVxfMQuV/k0RbJrp54krAZrhuBpKBo+z4q9oqiEgKsfStnC52UMgLKr2xJbLhUluW
	 vTHRtOBlpDwsbd+PdOu/olzM2UsH724Hq5ueITYsfeNdemrqTJjQbjtY6iKgaEArBG
	 V2BOzwmnAnFhL5DNMF/ygYMSBSIISc5NnrJtcPE246DaUS0fpzk+PveUI0pLlfnTOv
	 N7t8VqmWK1qxMKB4rTu/HDF8mCaCCoP0YvjjpNE8P5DlXAYwJgR91+Vur5j9XSavcT
	 0vVZxioNIy1/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8D3F531DC
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612465368.13367.5848159042654045121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc4f9a1582f9e54b1d156c939904b957b674d85dd393ad02897f409f09f45ac
Date: Mon, 13 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776124653
