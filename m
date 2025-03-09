Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8395314A85
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741488534; cv=none; b=DPNtnKO9hPtdUUgBjvZY0VDZ9O8Mt8hqFU6fcxNNbEUKoXfWiPsnRTC/GroYB1b96JP5oW9kZpQmaAr4VTystlZwQYHLKLaVy9bT7+pWhPIs7K1KZ3DOcJNagWWtNkC7OAJiix8TTsWIXncVIjJd72esXs5oXyYaAKLLHS/aWtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741488534; c=relaxed/simple;
	bh=EGCSzaBMzT2ZbCcOtyRxdmHKo8JejZpyeIBhewcZ+as=;
	h=To:Subject:From:Message-Id:Date; b=QS8fHOPJKbsRQzdS7x8/qzyKk/O0w3XagQL/U1IeFOb/HFaKdxSDnVcKjScBQ3PdgiY4OWo4Mx8f8J7t3aOYaooBhv7/CXHuZ7ZiaJx3B1ksA7mSmwa7FwX06BdXngTooVwyJRUi3y0yzbZFEUrCqQdpTTKRvCPrbuQYvDKhry4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5Be9I43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5Be9I43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4918C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741488533;
	bh=EGCSzaBMzT2ZbCcOtyRxdmHKo8JejZpyeIBhewcZ+as=;
	h=To:Subject:From:Date:From;
	b=T5Be9I43aQoaxnwGE369/yiweaSlsg8cXa7c0GeJoMsXL8PnKFu4OOg7BlhxQAUtI
	 nm9g8J64b+Oz46GyKV52BsjQ9h2P/VyoKBSzzMFt+rLkDYNIBJQGyA1WL8PsNmn5Uk
	 C+TB6A4qclm6emGp6dHEURpmVuOH6o1WhCmCaJOYMTkhkpV0v03YnHaymImB0ns5/j
	 atB5S4GU4fsOIBxUSi35VkS6QOY8L5U6V95FVwdbGg97Glw0XRB1X8V13bag/hg/X6
	 qUyxFUN1epN5zb2x3L0pP5QpixyUGgSJ+Vp95YT+gByzEcEqAPGW3k3m11gKY1Iewt
	 rsEZYtqPlHwjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19BBC282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174148853362.4383.6356522546846376756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47447b205d120d6f66cdd6482c71aa147be45794dee0d223c114495725df930e
Date: Sun, 09 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741488533
