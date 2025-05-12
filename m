Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36093293B4D
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747054794; cv=none; b=ZATxDvohCxqh+BdcTL+SioH6DXcMiP9kzF5SM7/LivZDlC1QbQ2eG2AS8wvMl5sWQHd8edmw3gzhj4Gi/dlsP7hHcZEb81r6CpU4Hp8iuoOUl9b3eou0x7sYXLvI/BK9i8gfB76fPgAxM4YqcjRAEi0Fstb1X7TycXPK3UZ2rXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747054794; c=relaxed/simple;
	bh=CLqnMhEz1MY0yM1RbMW5AIiXOvhBUpwoH+hMTknLEfc=;
	h=To:Subject:From:Message-Id:Date; b=J42/SO2gjqnjPlBcQDoW08wE/It4pnf88UeyFEAffRgjEt0fHkCk1PSn1lfMhaDcgcpTMaQOq3uymIDUuzb7O0aqNQoOG/SaH9LhBBqecnQ6sZCZMFBls+u/Nwb7ss8nInoY5J9dKTO1BFXdRnxSIal+MUOAhkwItbQTwd1ZEno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpFL2yph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpFL2yph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747054793;
	bh=CLqnMhEz1MY0yM1RbMW5AIiXOvhBUpwoH+hMTknLEfc=;
	h=To:Subject:From:Date:From;
	b=UpFL2yphDpGqUzhJ99UUlC9wxjTAvr0FepMFhVGPXPpf0O7TZ8J+MYXHlaSV4ceul
	 WkhKSjPPUIVSytpRCUjKFOfBw/f1yOhnrVTG2guwIsX4S6nx7lWCmlD3Ya/OX5KyFl
	 6JZlMP2qAeua7bhis5NX4yk1yuwBI2wZPk5FEhmnzVtaa36P54va7XCYVfra5T1cDM
	 WTK++DbkNzk1wO/KsKR1TBqWfHDgfykkZhYHjaDD01HIfUQgXX4JmE7o2UdL54qPdw
	 kd5D1id6iG2y65SjIZVNJkLMWzcsv3LYGWxYqF21jBjC4dXctq4I7oeam2i568xEPj
	 i6qBVIxAQgLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FDCC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705479359.12795.1660491661144706606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdec9765f1d452719b7964d690f67f9b0c00b91bd8e91cecf15ac64db106ec26
Date: Mon, 12 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747054793
