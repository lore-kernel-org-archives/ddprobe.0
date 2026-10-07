Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A45D4BA1D1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791388834; cv=none; b=ifV+S61AHI28M3Z6a3bwgX+EGCJRs9KyUXLaPt4BLs+iVK/JRWn+i0Ul9Z6pMyhYhnSY7M5RB8aAoiMNupdNrqeqZHFNuyozPwwuEvUDWC7VVemGZybTXl9I8SaXB8vTxk9wiRKDco8kcq/d6b/SVXCa+wfq7UYtThdncNMLLHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791388834; c=relaxed/simple;
	bh=FuIZN/oXPJKIERg2zVBI+t9XEEtjX+ujp9DU6vR2Hoo=;
	h=To:Subject:From:Message-Id:Date; b=CKsG7kBXzQ+p3w7B932N8qrW8F48PGTPgtXQGSR6dTbnWbqZ5wY8LHzcdF+WWy75qt4kcrluCViZ4bqNON/mfSh+5oLmdPK1RuyHRuFKsomvx5Kq8zLlP9lk4qUNNCq/ppT6LCNygkzSnFGOOi/oPaMZbpxVTGbbRSIEn+pZDyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QT34+T/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QT34+T/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96D7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791388833;
	bh=FuIZN/oXPJKIERg2zVBI+t9XEEtjX+ujp9DU6vR2Hoo=;
	h=To:Subject:From:Date:From;
	b=QT34+T/ov59UWWayTkL/xRvb4NiTf81kQ5O4R8bfG+QLSWcpm5RBy96h3nhRNpy/U
	 CHzQ/bv8DtaWNiyWkrtYnpw0JEA5kUaoSCAmVFAEKWjicjW4elGDsn4z/XFf2wac9j
	 7f1mS+OVo/VDUKjKCd6NQtz0m3xcDByU8o6HdlgmE66ZfdjiKBiuBt3JvJfLXPtGyk
	 SV140dhWZjgfhIl78idNrOVFWfznPWl0VhpCxt+ntt4wlkxe+9GmS8IGW+6lMK7+I2
	 qQiaxCzP9Lwl69jpTTadNXQzuYkfOc6B8jOE2zvJIBMGbUHY5MZtlPOdWWfhQrjgEX
	 rv/1JV4hSLTMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC118CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138883369.18802.781426182860976779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e04bca7549fc69771d06c033dc58f2856af3282357ac323717ca240643fff8
Date: Wed, 07 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791388833
