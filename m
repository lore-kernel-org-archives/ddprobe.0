Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E743FE5F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756306194; cv=none; b=XYxycrZoXuppzK6OS4h/tMcPOm5+wdvXkF/orDceA2sGL+MVakrmWXGQPzRAFc0cgeb1llcPyxKwbdulbPbbk/PpUE9peNXWyU+8LKpIOzRyqcoZKe7WU1VF6ppIYKpcDdPYOdmYdwaBbeaNo7Us+KIB6gen5xRlCUSCOqI9ru0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756306194; c=relaxed/simple;
	bh=gI5wBox7To8aH8HrPLWdoqTF/3z1VJyianJ9DO0ZWtg=;
	h=To:Subject:From:Message-Id:Date; b=WzL2ZICCJpsc/S2dDoykJmjFzUWOT+zRpNQUX5Iklmg3/j1iyhoeC8K4HVEJcymR2mcASFtwiC5tk1mksUE7Houa1JGUe+FaHw8nJyTQkaWlJ3zpWkXBDnkiZ0Bwz2QvAXK10oW+UV/ZXOJ32aX0MYPURc2WsbZudkgykELV8sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgW3dD51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgW3dD51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43F9C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756306193;
	bh=gI5wBox7To8aH8HrPLWdoqTF/3z1VJyianJ9DO0ZWtg=;
	h=To:Subject:From:Date:From;
	b=TgW3dD51nTBqP4INX3NPsDF/5qr6hKOLwIy6WbsC42voyzMGjbya7dyGWR75yxJUO
	 khHuIZ1LDacYG3rYp+GJfngYL6ILSP3bRrnHrOdjLxTwZtvPdsIa6InpNdwTqW2mmg
	 FdNZAU5FATZ7r1vsqHupcVTTI+xD3u20NuwpESUMO8QjEUFn4/W1HKh4eFsj6Z4wLH
	 bL2GUHg++67KiR95jjnOQrLNyGmxmQ2+eiTRp9cU7ROm1RiGZGhGrcO01RwQ31+LYE
	 rJJDZiwCCTSHyxlNsnzqUyFKb34kqzv/SUTZ32ZqopAi/FxL5WdsBVgv9iSYwGSPfR
	 fhHptjNHs3PGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB5CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630619358.16916.17127556856799076921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b13ab8749cf708ab3e11bdf35383b7aa362cbd4e842c133d77b079ebe514ea1
Date: Wed, 27 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756306193
