Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AE0367
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735778154; cv=none; b=AUa/W8usuksxMIJNHs590ZvaRkLgkfSygBENQxg2cOv8Ilf2oV078AilV7dGhRT0EyByqddu9LR+K9dSbg0KFEclJV9Gxy0eI2EkbxicmKPcBSkHmL8HV7C6ryfvxEH6siV6sxjJESM7GtwmYaM9ej2gTU/YbK73fhe2XFvHS7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735778154; c=relaxed/simple;
	bh=OCBGvAdcng1hFpUVB6SSfTH0CHEeeMM3QLAS2dtVuU0=;
	h=To:Subject:From:Message-Id:Date; b=P3mUY1sJ0RjhbU1ajTp+1Z1qsGDZKvqz3c6mu9kk27WRM+v3EbNJWQbN2bjjtRvP53aIvgukjDYKuNVYCmWf2VJbirsIxVdvBH67CpCdYbVLfsYdbwIcN7b2Drp/fURl3q4O84bt9KibQwVZbQysiTzOPDA/9WcMaYpy4FSY/1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZI5g/0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZI5g/0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFCBC4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735778153;
	bh=OCBGvAdcng1hFpUVB6SSfTH0CHEeeMM3QLAS2dtVuU0=;
	h=To:Subject:From:Date:From;
	b=VZI5g/0GVeI6ibuRguEQQYafHdVcgRXE6v12zq5qzhV41lwRB5VLfT7bSFAodIERs
	 um2296Pr6YjJGZJ+mkSEU+CgJKWnhYwbIujOxhjoziNRkYhUNHII9pwWcDtbxnzHcj
	 3XTKkhJzKQCwRgri8i/bsPdjEpgAJifoUUgB8oDGCIpg7hDqXwoI617PbGs2x3hEsM
	 j+VGlwj4T3Ibu4Q0HPif1T2SIeSHcX5+dT34ckDYU1MFn2aAbkrDAEciI7WxGXnbyC
	 R+RhfpIfGRlgMIaRKic0LthitcPeQsJJHi2zP8OrlG/Lu3O5ZPH/bvsjdR7omWlPNF
	 kiTLVVsVpHWYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1DDE7718F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577815362.32078.1253530335830193740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c960daec9e81b1c28fab0869691f89358025de267195dc3da93592a9eeb5af6
Date: Thu, 02 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735778153
