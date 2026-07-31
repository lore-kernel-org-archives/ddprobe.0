Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDBD2E738C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785540634; cv=none; b=Ckhy9+SHUnZbJVaOAxrPuzhBkxyeSYfQJLD4yQQM9Ffo2sdMxZ5TECNAHFeIXbhaeqXMrX+I1mdPdcTJzbbFMCKbusG7U4bEClsXiP7tKF5CWeBR89rbr5TStv/YGUroffQYd2xSjEIUEfo3PuhjOVmIL2mT06UifAcLauRLy18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785540634; c=relaxed/simple;
	bh=URSdyduYRi826r6ckqL/TOXP5yidkyUTkE5uzEFlIjw=;
	h=To:Subject:From:Message-Id:Date; b=hSN08MSJ38eOs7BnqLtLMfrI49leLAnha3c2mDk202tHk2fAUOFpeKNE739C0/ZBsofTMm75O6ewgzsVmYWgKuc1jihOEmlO4rPVYeio6wQmP3epbVM+v1jQo5GWpeyd8rwLq/pcJ1akc9b8I/ODphA/9YjPGFg0rmyBe03rYTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSyWxoaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSyWxoaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A75C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785540633;
	bh=URSdyduYRi826r6ckqL/TOXP5yidkyUTkE5uzEFlIjw=;
	h=To:Subject:From:Date:From;
	b=YSyWxoaMpKrZqAOj7++7SwDqQpPwl9rFAulbet3zRPZOc/4bO9AQgNgfwkEy34Uv7
	 RQqB5RysQ77y2w7xUaFbfNgIryXH0QMSVfojW2TyFBOeoPpp6khwFz8frj2JTAA1oU
	 K0hhJaXb91yllFrYC2fqHez3te/NT/FQ0WASX7q41M8pgGoClB4LY4c56K8xh+IMcr
	 zeXVzZvVBgKLv/iVY//LjbkbWvEBzeOAwROiNHh2Iqy7gZjONplNyIMI5aTQWts6Ld
	 9WlIeqvwPCXZplTgcFaiGP9w6HirhL/XoCWkXc2xjuLvH0JLiL2SEQOQC0aR8R3ej4
	 qG48Hc5xM7ppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE333C55171
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554063368.6549.10360224448842380663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39305c05f8790083f98c4c1c9a970f2cae0ecc4e8b013cf3d3c9641de1bfaff2
Date: Fri, 31 Jul 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785540633
