Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B99435972
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764295374; cv=none; b=L0R5y3bRHFBTckfkB29fbB4ElmqRUsve6/JjqehQ6flRSjVkjHSii2xHfX2SFA4WXlKgmhHdcNTJDY5UTWEQNCIBCn96prKyfU/qqsIdbFyCdxDQogpMDccz8d20jfK2ApCetWIpaw/O5zhW8l/SzqJ+yiR1ap4ZxFKsOwhMM2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764295374; c=relaxed/simple;
	bh=MmKNvpLwEAoCLf54XZMZQTrZ+mu8Tpvb0VVoQ1SP5/Q=;
	h=To:Subject:From:Message-Id:Date; b=BWGW3u1i+FHyy4yEYLmsRLhxtyKA7HfgdDYlE/RgOGi/bvG7BXdFwqNr4OdmBe5LG8i1c3arrlBgNlLmqTnR2wWeySBpPtsqJJsfUDLm6pJPOLGJhQvqzJ+EFiNWIFMA8NhqYp8tQPZKC0qMRDSXV51R37/tHFNErrbjjdiR6G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaeaY5qI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaeaY5qI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57D1C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764295373;
	bh=MmKNvpLwEAoCLf54XZMZQTrZ+mu8Tpvb0VVoQ1SP5/Q=;
	h=To:Subject:From:Date:From;
	b=aaeaY5qIwajV35F41+XkkaJxq01mSHpgKAettTx9cRYH1f7DjezRpuPAUsANXqiil
	 sISM12599DJQRwKpL9FqH+/Ee4bzTVxfShc27H9aI5X7tFoSyiWpWcG68PN7052KHr
	 1MkOsHe95KZm+Y9LV8OAkAvRbAW67hoyElmqu8eGh0/Gh92aDnt7b+Z6XxiaDblLqG
	 OslVgRUajvXatOo51He82GzBPCfDNqCgbos+uH/4mgM99VhpZP+DsUJ+I79Hm47Jy6
	 h6oVe/y2JYCHR58klPfq1RWSg+8rFlpd51GKsQvJzymSp7HyQLmSJPAMqhduBjrHc0
	 QxQG3GtF7qf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92916CFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429537359.19559.6691767477436079404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9591d7c778f4e7962e9b4890b800bd1c9793214697cfa176ff28af3e2af5ef4a
Date: Fri, 28 Nov 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764295373
