Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB68B1F416B
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758988793; cv=none; b=M9/D1xNkyM/vhz9NmYgtD45FESDfkL26PmabZZ/tjmhR3tuPMYY+jVCjOTasHYe+vrbapNAqy4AMcthmpjLNcY1zLovOUkoCMT3yEg/bpvR92N3KHkN5nVupe6rMOZV/d9LxVfUC8TFlNjsILKcEC9wTXjVCV3qPyQSywXZ0R9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758988793; c=relaxed/simple;
	bh=trQnkROpR/1sA3LungDdMGrnP61zRR/ZBo3ii60tmCk=;
	h=To:Subject:From:Message-Id:Date; b=mfkf0iadmUzS6nzcnn5ar4aNzKPORmk98TUgNwYXtThIFhAPccg2RhgMbs+zQyy4gZoGCIrSrgKqPdu3oIEGmaIz/vfxmW+6Ioi+GT+aXe5FWgrSUW9qK9E6CJnNQuPgNSACjnZO0Kqf0mbq0kJMWt/EEMq1xFHwFYbH5ycjFfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nl/JblIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nl/JblIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CACC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758988793;
	bh=trQnkROpR/1sA3LungDdMGrnP61zRR/ZBo3ii60tmCk=;
	h=To:Subject:From:Date:From;
	b=Nl/JblIMDZzFVQ2ivfotQLMx1LOIJE/3WxE8xAiXvmqLI9yaWD4TCtibIMuomjd4b
	 Qhp5TIHZYIAGclnxpx14vqUxChfqerXq2gGC3316jDNx4Vq1CIdUOlv4QSUbRTZ3gx
	 XM0U2YfEzJsPPBodw26fgHG6YyaueVx62yP9heChVLXMSJ6WIkQ5qzCYoNb/FjOdA4
	 NdX3220PlVMFPqtxy7s0e1xtkuNuEYZjOKwp1+z214lvinZAjqq4hkwM8ZHxFnRZU6
	 pFtj/1a3lIoniNMXBlMNa6qPzlwWxDwoIOXR8nKCW76WiXr3JL0pEdcWmKUIo/ANDt
	 50+GXp49bbyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975C1CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898879358.11081.8014423331615156050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fa89470a1cf5039c91fe423f8958a68da9fb9c719fc49be68ccc4dfbeb40fb
Date: Sat, 27 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758988793
