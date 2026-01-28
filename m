Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A0F367F20
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769613234; cv=none; b=p2FGzylC/ChAwUjCCJOSBeTl42YA4M0UsUPg0SgXxWdvVZcmFLva4wQWaf7S/QQROV/wkP7VOaKb/3VbsBDLGcW8vdCcGPRCC0/iHa5RFJoAQX+wEmLWVPm1FkjFp6rIHcheoH3mFJD0EQr2Dm+twyOeGzucVjWEJdRZk12gnEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769613234; c=relaxed/simple;
	bh=1jIHvOvHg13Msfbci0xvfnbl8B14Ic5cskmmuPcUqyk=;
	h=To:Subject:From:Message-Id:Date; b=IHo8u8M4IMj5veqLL5LlIAbvbIG6a70IBoqWKQ839XpYuHvQyhFyuEioZGb9wXrv0I7u3kg+G6xoQx4hZ9Y/u3bbhDrd/z/MnSsOiILNf1qGfwM4vtMMb5JXV200Yb8fWPIu9rE+yWg2+k25ngbm6cNH3zO4po+hPBiFrkICJDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJn89S7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJn89S7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F968C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769613233;
	bh=1jIHvOvHg13Msfbci0xvfnbl8B14Ic5cskmmuPcUqyk=;
	h=To:Subject:From:Date:From;
	b=EJn89S7c2j4VX4kayV+p2ITL9SNbFOwW2fCGS13mIgqqYIb13YriM087EZeyM1urO
	 qGuqgPMOJfDF4LrZ3JsB9ofuuWozyp4LQNSgLqL3CzPUZIbkrbAjWU2jyIlCSBof3Y
	 6ho1LwzFz2doSEGFHHN4JfpmTvCrbLKqeKp0gkx3z2umnHMs02G4s1Lr3WC4mvzDEB
	 yET+/zq4afrcQkcJAC7AAqyJ6P5wE8Vxwr/17qg07E3RP5hI1uwjuK95WSIB62jmwL
	 6hLhGb/HRgmLmczw/RRUiaU9+Tlf0ml8axPeduK1iaLt9pHMrf/DG40ToiJKjyx9RV
	 8UKtE4CvWWNiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087DD3F07E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961323358.18166.5056669477963532053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a817e3db0d256dfaaded18025ce62af92b56015c6ef6c3b6220abd55c5271c
Date: Wed, 28 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769613233
