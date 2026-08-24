Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4050C2D0C72
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787578234; cv=none; b=tPLdUEoqT/XmSMQE6DKToNr31GnzHK5TE+ovt/AifrSj8z8L+HrT5IbvMwj2C+OVNrfUINso6yCtp/fdOSKRshymI97LdYiwJE2ZMNMctSn8fTxlGOo0QJ2+0k/cL7+8B3pxGhwZZQnFaC5kkPKlIeSlCYcPyU/mDW54Sn5UmKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787578234; c=relaxed/simple;
	bh=rFpxjZplay6h4lBz+tpxTcM4xIQqIGQRtZioT7TRHQ4=;
	h=To:Subject:From:Message-Id:Date; b=tgPnakyAq37l3zsVVdl/0jCkELBaPar9LDQmSotF7B7pH1mEMbEmi82WiisAmWm0K43KqMGmN8dDfwDJ0H8GLUJiI0RZP0/md5dfoAW1fhDZ0fbOPb6t2JEe8O9MFwVJQ890me8mHUYw/EYJ3PYuzBqya6m9YPLCDlzWb5BFsaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3VmswvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3VmswvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE53FC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787578233;
	bh=rFpxjZplay6h4lBz+tpxTcM4xIQqIGQRtZioT7TRHQ4=;
	h=To:Subject:From:Date:From;
	b=F3VmswvB3Y5LA12nGEtTerD8+FkXrAStFcjirisoKoGZAx9d8UQv/gZPsMvfHTUCU
	 66xKuA8kBk0HkCoyrLx7z8GLQJydrYh3jeVk9YKWoC2S/DDK9+sHcUjnngUv+OD5ip
	 XdqkWwNUoHdnv1S7AQXbpnFgTDlPpbS9v6edoV6KcVzTRquEu7BBeWiOcODPkvQXv/
	 /R6Wgxt53JKZ9nychPjSrOnuLVPzoODgHxrrGBPHl+YFZrSSAame/xcsVGRjKuEiRM
	 bVBViAeFPePbCS4gPwTTaF7BYjXnhwdqC5bmA/VNeBGLvrhdAC2MBRhuuNICf+YZ1k
	 +Tfni5T8ZC6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC142C5DF9B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757823369.30636.8265682444076553905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d37f391a1e1f7c076976be291329494b8d3f6ed37a28a9095d24617de55f0df
Date: Mon, 24 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787578233
