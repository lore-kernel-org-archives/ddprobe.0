Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E9B1327FD
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712349497; cv=none; b=j9mZ5xHfdMzLFxQtdS0UebUgic1WeaBWCkrE5uepCK9XtarxEbbYf/5v3frENGUBmHTmr/kfC+i6SmXE/cLaG+e7xKE/3neGnHO2d5pY+wMr+3EPH0Nbm14Wj5IfF4jufKTeRflNXT5cpvnigFqqdY9KSponTVyD0AYR7SxTmk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712349497; c=relaxed/simple;
	bh=rmOkjIvJxauun2hBepDhJtjuwIca+sGEG0Ae4lE+30E=;
	h=To:Subject:From:Message-Id:Date; b=BDBaU5ToeW0q00zRsrbILncPEEjRazVBAlg0n9lgdO2mD80VaMipPziavnlLoGImeFy1UsbLW7ttkGrSBzDHsgNA/18lfh9VTPhFWlqVCEQzSfAbfsMWWmwIWXrVWlSQBlPVmjtgPiVQHbGluRSa3f5LUPiRBoRgj1/CQvU8+tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEWxVkVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEWxVkVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748BBC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712349496;
	bh=rmOkjIvJxauun2hBepDhJtjuwIca+sGEG0Ae4lE+30E=;
	h=To:Subject:From:Date:From;
	b=NEWxVkVPw4lEIujkMiGQty8O0bJwejuzRhS4cTS7aWXpGsiiPdhJ31QEAVd3KyjZX
	 S33x9PnLkeW9bakiXm8p6UADiZ9gCNzRAiPfIc8xkXZossenvxMdqR5s5HipoaGAT+
	 2dkDJJPvIqmAufw9a8tHNLWg89qBSlKhDmwsyt/E32QUus4qJC9iAkcM6b889ae5Ap
	 1D5lw21MMcdqnifkafVA5MzxIk/l0CSViTns6mKwA610YLww2L73QKGOE0ulvyZSgJ
	 P5a2tGwTPTnqaNILnt7iJOIM4SM/h7+ntYgerBaKqS/GVujkXQW2B7wHVwBMHbsJzH
	 fD/RxK1C/8cBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D29C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171234949638.26130.10866367869137507042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237dc0447328937101acbbae474138b804d83b7baa0d5591459e2f3d03b4c284
Date: Fri, 05 Apr 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712349496
