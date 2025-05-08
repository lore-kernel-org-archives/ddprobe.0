Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA602253EE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746713995; cv=none; b=hs7tCOUqRZ66OZIGJH3e+nf4Gn/HC0WX4HlxtXPkFBOlme1kg+VEHJvQTlTKh9xQQMtZkE2TtVa0l+PiTZr51Z1ewiaob0/k2BuZDiGzezmF5fPGmg7ke0v6ts6fmUjAHO96nhqXcwFU+CnwgaXOUOhPu1T2PjEpl2K1AfPYO7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746713995; c=relaxed/simple;
	bh=H7MOuzMmgzABzx2A5eY6B0IDSmv0KvAzRy3/n340kAI=;
	h=To:Subject:From:Message-Id:Date; b=uejBBgPqBXNJulgQdgKxTHNOwC6IIcBfGWj0yaDOLhO2rYUdynwqy3NIK0B19LYb32aKiwHQ8OgzqOKqybfQsQq+TvlwOO2jI/dMpvN36MO/cQ7c0b87taGm0DnuJEInxpxnSEUJtjhsinz/JVx8/xbjQdhx7PNe+N5ZrhwLqGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hpbfy+UT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hpbfy+UT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A259DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746713993;
	bh=H7MOuzMmgzABzx2A5eY6B0IDSmv0KvAzRy3/n340kAI=;
	h=To:Subject:From:Date:From;
	b=Hpbfy+UTUzsDIps5+CAAqHbxHdDm7qOS3XqpB2/2JLyGAndoMBC/XwoQoNHBi/thQ
	 Tk731e7H4aO/9nuo1pCxgEobh+tRo/LYg8WpNSaYeEtKtlnKD9UhTR+1iUdg+C6wqv
	 uDj4ZhVdKwi0pS8QQqBOPOtMNbXhPp8s8ND3TtcaX3XGSIAYjeeOIB6ZwuVMHkedv3
	 SaajSv7C1jRH8ExgTJbQ8yDGS5oa8TlY6VWg2Tg2Jr13+VWJPYaUqr8rEs2Bitotqo
	 ot0M2eHNwCS2XJy/M7TuqkwH+O3jTMnxK6Pp8wfwij1OQ4FLblZTaKYDel4o1pvITS
	 GXye//+msGePQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004BC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671399358.29170.1756408364050147268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b46f508ed436c62c18e47db576bc1b2de0b85b47d3a13ca5b3f41be9e20ebd3
Date: Thu, 08 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746713993
