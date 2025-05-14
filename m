Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDD6225A32
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747214395; cv=none; b=YrxGU8EVnqprfHvPo8MnC9ij8r/UBGGv575tle17yBMctIfPIczyfPFxqpd8f5BXNGVvI3/ZX6yLOBmNxluNM/TWY5waRGvtlidXghrILleVbdn6T9zAxdKF91PkjczxkbOgJf7kUSUGWq5NVv2XnP4pQj4crdsWLUEfZ8PAwIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747214395; c=relaxed/simple;
	bh=Iv8w6G+VUDF35+O0ZHPXB9YkLiDARrKx2fzzwrQBzLw=;
	h=To:Subject:From:Message-Id:Date; b=TMBtwrVFk6seOrzV6u1soYjtPEqV+HL44ClCNIO06Of9/QdjExc5BJAY+u2EMcL/lDtm1iPL2FECXFv2KRgL+w4IsDfV+iWRED9gVNcvBlax/ERXV7PZEzwnFZJD0IjgN3pJAjekbqk5rbKNToto2ob6MnUCVUak9PVzTxHubvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AceKuinu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AceKuinu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6F2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747214393;
	bh=Iv8w6G+VUDF35+O0ZHPXB9YkLiDARrKx2fzzwrQBzLw=;
	h=To:Subject:From:Date:From;
	b=AceKuinuF+lDgiMbSIbWPIgFBGInNTmI1IR1jGqtDWLikS7h0PiuQL2HPdEdHyRxe
	 EbjXy8xFlX53vusrlwAB9g5OOTlF+wr2vNP47GhkL/kwyXw6BoPyIYPvDvMcCkWHTA
	 fE3lCEDj/KkJFS5UVE8ZciL4CiDIU/ygloReTb55CxPL+HdMG89H1OruMS1JxKFslo
	 oKrdtMxO+ocQglxJYRkVdE0RddBZDQ6405YJtC2DdhUitV1+w5qSWTSesWi4u5nVNy
	 mLaRZ7b0H9PMPWLfnRWUMtSRwuPmMPbaX3BmP4cZmYRp16R0mAB+/17ttAONCJROT/
	 dzF+KOKar1kVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2EC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721439358.18390.11003975494751790221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cba5e16460da3f058b20c258343b07bf69138ef1fe0962ccc7cd15e885202b6
Date: Wed, 14 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747214393
