Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F84D3D5239
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777037254; cv=none; b=l4tDh8Cv65K6xFbW3Ft6uZBLwXBGCY61qbh26J9jn9T0ixSUV0L1fZnfOGz0RqdbNIz2/zRDpUvWVJLy1v9ewStGGtT5EV09liUrcK6dHSg40VjaopfSX0ArGaxoVXRMx8VJpnRph6GCWPQA8mrC0CI9pQKURrZwTHZy03cxo8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777037254; c=relaxed/simple;
	bh=Xa3B/Q3xmPpTZwg7GSKtxzrO/3rih6vIAdJZl+VGFfU=;
	h=To:Subject:From:Message-Id:Date; b=j5N2Lr9ltQ+5Zzc4yeiffrf0ndU/Ucf/RLZNklt5Z2t008yyZ+wgHp7BeoQAGDIpwOhCZcpxYlKWnCKZOmwU8zD2RNi8JD0gcJlabqfa4R7p7sX95tOdfnl4iCPHlWm6nuL+HcYL8yMrWEZNT0onVRBCtgRvgxvIi0g5ZZ0aO34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGQlsA0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGQlsA0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86B0C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777037253;
	bh=Xa3B/Q3xmPpTZwg7GSKtxzrO/3rih6vIAdJZl+VGFfU=;
	h=To:Subject:From:Date:From;
	b=mGQlsA0xk2aeKrMU0GZALd+X4bhVoi1rvoF0vmjxH1DSdLHRDRjHjCvsug2AuV+aB
	 +54z5w4BFbti4e6IbZWMtzOfTZFRTJn49tYaoSm5mmHZq8LWnvHaBbSbP9juyyPew6
	 ZAsmN1ao0eCOMwzLzVp4HLS0imSAbaoWG8QyveBSlxDbtX0qqbgEldibgG1aipy20F
	 yxhK1o080WHcJ5+I1DSHCzOpwkfdL6I1+DvtAOPB5Kg87hkZwMncZy7L/zoFEjc+VZ
	 lddg0cisJnr6xWHUHDUWOlI1Sm7LDsRX5yL3dUFKbpyY5AOLqB4W8kvvSzAnuAbSbE
	 Hq1UnVMLTmdzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E64FED3CB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703725368.17723.12795786613791585606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff8364fb78de42edd3a2804207b3dda127d820434d2c0088ae4e931225836cc
Date: Fri, 24 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777037253
