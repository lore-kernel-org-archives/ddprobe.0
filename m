Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC1B13A3ED
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758571194; cv=none; b=anHOtvsa+Y4v1KgGgeY0s0ZlSylQ+pVFe3pLaQvyYbVURClibvyGnFYNpsc1AqqkqCarvT1V+X7jfY1ho9bKwZdlAL/L7HnY8H/DtXspvlqfRvCkaZU9wxJqm1btCct34I81wQX3AHuXaWdUMj73VUykA8BKr5m+NZWDIbr6H5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758571194; c=relaxed/simple;
	bh=uMrM/coav9cnmkv7Fgy21+yxc7cJMlStz6CMYY34AjI=;
	h=To:Subject:From:Message-Id:Date; b=IGcrm1mhEMR+eDGhf7pgunQVLrlmsi9Ut/TR0ed9fbrbJFM22eG2aliWeb5+XJDTCK5SpDy1cuFqs/2KrO7q29/FEbuiGbxO+Uja0XDE+tgGKmDtqEB1Q8TDqC5n9NizmMe0RfR3EJmr3W+efLMphlld2uhRFLPvWtg0ieFbF9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3W/tNZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3W/tNZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06DEC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758571193;
	bh=uMrM/coav9cnmkv7Fgy21+yxc7cJMlStz6CMYY34AjI=;
	h=To:Subject:From:Date:From;
	b=T3W/tNZnFQhnHR87m8v6v6HgHBVNmvlIl2BsViXfRMQTkkK5Bz3upPtJd2vhikYa6
	 QhjKjOD/4jheOcpkkFC4CVZpFkrxnFP4SBSG+CIzzsbE9HKO1V/aCLUccpATpcwV1M
	 L2sRmq+SypUHxvqg6Qel1oDBFlaZKq/DOuEfSYTp+7FKbWjO9lavOdE/oL3iiTuvCT
	 vEchZ+xC21QdJZ3g2JlC3/1XwmkvSTLiUwcAUJNgu4sC9LDEz43MK6Atx1gdtShEX8
	 N1MIAEv+5cR2XapYOT5lkPqkAIjKpccsYZ1uAeTc+iWKvKvY33hRBsPFouKnOHqJLk
	 YgqVfe2pKNl4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F66DCA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857119357.4099.2210530562228895079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413edc99dfcc3ec894d0a372e408e7729672312b75be84c345a101b2d1d77a87
Date: Mon, 22 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758571193
