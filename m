Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED33136351
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730537154; cv=none; b=KIt8ovFJkS4xMR9IXNSLEPgOoADE2uAfAkiY0xJcm01ozNpnAwRfSmLC4XnyhFo0BRMFWaY4UPJ+/xwKvVKmyQMcoVi9HyI4h0z3rvrijifMB5/hPsv+yviNRiTsxQLDxmD8vJcfU70Z5W9hSqVpHPa4EfIbEmT6vL4OQC81doA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730537154; c=relaxed/simple;
	bh=yh0sGUK+6sssFXFMORdTZrj/MtyIaNtO4zrXmJ2XG4o=;
	h=To:Subject:From:Message-Id:Date; b=pHlwwX/iJjgUCmQe790iKbjoiL07TZCkWWifVTnU8Xw42OfCBv5NWTWq/NvxhieQVXZ198CKJ8+8ir6sGC9Zhugo6VFSRpMRAmSi/+mjS2BcNr/0KROpEt8QnTm/YB0k+CYbrIT+uBysEPch8oYxyQdeyrk1KrvuAHdUf3dVqh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLRoMazw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLRoMazw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F5AC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730537153;
	bh=yh0sGUK+6sssFXFMORdTZrj/MtyIaNtO4zrXmJ2XG4o=;
	h=To:Subject:From:Date:From;
	b=fLRoMazwpctDs4SSSSfj/aZtiXV6la8Nh8o2/JMlAIkYiqbE3aETgsUNE4dBlq4Ys
	 qKFVC8+gAjnZB7ukctywOYJdRK7N/xDDCOszGWQrMudUn3gsbATrfmv3m177X3XtAC
	 eFfvLy4buIzslX603XXhEK9mKr/P1tcE6mxtBrc7msAVlOfB7g4Ibn3BKHGLUFniSo
	 FMcwd2HEWwGqW69MfSV0/tjIBUZ9SeB1Xe/9fMRGKj6sd+UESom176tKCt+Ofsf3h6
	 zYFARHd+6f0w+MmpLt7E8YuD868dYz2bZyDZfKRB0bJ9zr+XsSEa4egArVKITMZfYN
	 zMfW/El8OkvUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9234CE677EC
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173053715359.25932.5727697605803668275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97599ee78034c694339ea46cd74e3dc793577c6f4060679a0658499e331b87d
Date: Sat, 02 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730537153
