Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFF71FC0FE
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749073194; cv=none; b=mEL3lZeBRB2fm6fExgwUhxIH4kQ4WoX0J2UDLWrznrTNgOBrwFPoiaLpLfeGcnsAyLF/SnwnQC3yHBobxinsRJ+qkYbQK1dlnYJJlitWJlMHOTjLTP6w8Q/W/RVFDOEzn7+cKYOdaMg1SgQ619KpvFrIuWSqC/GStLschGRFbOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749073194; c=relaxed/simple;
	bh=TEpmcTLyg1f9t4XNfloIWFb9m1AFa2Aph18FIYh7LN0=;
	h=To:Subject:From:Message-Id:Date; b=u8OuR2eY42pxVca41M9uvYrczd316CrsavHu0kF+knXIrdq8VAv1ErBpFvxn88Huf2Mo1Qww4yXzt1Y365VUoj4AjA1IoH/t+/3d9IjADET7FlnaoV9lm5BgW0uJSP72Yndc1X7P4fOWGwoFwLFDYLzXNQ0M3G7o82+m/RzHyFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QITkcNyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QITkcNyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A589FC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749073193;
	bh=TEpmcTLyg1f9t4XNfloIWFb9m1AFa2Aph18FIYh7LN0=;
	h=To:Subject:From:Date:From;
	b=QITkcNyJQVPTx/CZzbqrl4tiIw1rYBUF0fVipo5mskJo7bPTXPtuV4MGrChuevNwS
	 xj4cFsp8kLXiX718jo0bsfMbXBXNRO+ChDA46/EtwTg90ZgHIfYJlA+YiCJuRmgZ2M
	 vVLpLdrpazdJWb6AyJQMTB4g97BWtiM8iFq35paAdBC2AgJsJEFJFhMGSCD+VK0bPO
	 njTcZk6TPyIWtqhtajRfyLZTto1s5d0yRZuli6FURvUHhMSUTAmxymYnLBnp8dx7hN
	 EhFTakhZlVjVhq93SwgvUhjriimoOquhMpprGvHbL4qimo5iNhZE+mDgD+I7G3JkgF
	 +/Y8463qRIp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B82C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907319358.2469.3299942926117084931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be02ec7482bb77d23473a50f901b70baed38b044d1a8efaf628a84d5a2a348d3
Date: Wed, 04 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749073193
