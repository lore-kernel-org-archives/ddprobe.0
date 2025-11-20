Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2674B26FA77
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763608314; cv=none; b=R2Bs8DPKyRisD9ZkGtAHMNX2Zio9YQaj6qnLjhEW9UkxsFvmG6s48JjsmBBmmsSM+5maSUnMyRKYgtJ3HcHygdMzU65S4bEjCLTeTcrOhZCJYTb+ByL7gY0xaBg0gLq1P+m9FYpgwwpvo/VWXn/1s8WC+YY3JvrFccPnXOheHLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763608314; c=relaxed/simple;
	bh=CRb3v2plrdYuhRramcIsOehRVd5SXU7FQVADS+plSeA=;
	h=To:Subject:From:Message-Id:Date; b=duk/MfA2HjwlrJyehqxDFNojVO2yF+LH/+/vPRBmCqvu+GARPfrrLr+qHRq6JJkOiJ+3NV5Woc9IdJemGaCbYI/TbzQbpbtqege0j+iVahakyoZ+CgR6cEn5HUdQ1VnKmtAmn4fiawvgYd1HYXU2ALUXQtQLVnmURWTaDCnq+yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMPWK1tP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMPWK1tP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77B1C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763608313;
	bh=CRb3v2plrdYuhRramcIsOehRVd5SXU7FQVADS+plSeA=;
	h=To:Subject:From:Date:From;
	b=XMPWK1tPAABCvUm6fTHjb0ZPqt0HooCF8NYhj+Y8EwL+5q6PaRnsU4XJDEljfjCOH
	 Xp8peY6BppmAti242Pjfbri5eFhzsNa6a9785EWvTAqQ1zBL+b4jcK9pQb2DW8+fuW
	 ciQgILjKmbg3Jynk2zwq/lvBdaEnagfWUU7hvsfOEIHA/52sr8nmVDu+4+9JBFdcme
	 nfGNJlP389vWtFNnSpf0FEiQbHBKGCylBFupQRj7GkiYUIjgJUYL5/csVUnYFXLR6J
	 +C+SUMZqf4zerTTcDw4eCrSUoPHg5nGHCs0Dndb4MdCycTSA+xN3BNijdm6spPop6j
	 rIOsFBRuC0oGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99455CF64AC
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 03:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360831360.7991.11357870091531911222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbff9c398c62ba5e851e799fc371bfa0f856320da7e5ff91a91c4113c1a16eb8
Date: Thu, 20 Nov 2025 03:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763608313
