Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4126415B547
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 17:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717004063; cv=none; b=RJ8S9/igkKK4+UwsIs1AWkRBtYdP4hoM8SiXMMmecX7hruN+Dk/DUeiZ6qhnECaeWwzeODgasVTIZyO3b5l1TNtCmfKJNwYLwFbYl/DIPpSMD00cun0ts5yF897biCc0NxUfOGy+DodGi0xvh3FvLcgsZWk3W7DWNyF35DlcTH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717004063; c=relaxed/simple;
	bh=2mJLozXZCoMe9GXBpr5a0Uc1AJgFWgz/+ix6eJVpKH0=;
	h=To:Subject:From:Message-Id:Date; b=sA8dOVzGK7eruD4ZIlPUqzAQaISR7nea28+4JGVbgTzMYrtuFGylOJXvRIpSp8SyOcui7rsPWJAE0+7accFC4PDn/RgWMDREyw+EmSCx2f/7qLTv2627+KfE1i22j3aOW1G6zYZTbpeZwTwLAR7y8Vfs+43w0x0n2WIzRNoU9Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsWQOlPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsWQOlPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B66C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 17:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717004062;
	bh=2mJLozXZCoMe9GXBpr5a0Uc1AJgFWgz/+ix6eJVpKH0=;
	h=To:Subject:From:Date:From;
	b=NsWQOlPVkgmeqFzTfK5L4f38pxN4/Sxu+43T+rjUrrmfG8JeW2NYd34WZd91LGvwi
	 ZwN8DM1WjZa8Y2INfC/NQuaY9D/SH3juwC21lJ/pf3OLFF/tnp8ToQDl81sp9aj0f+
	 c3eoZg/4arCNl6mrTA7In3j89vcZOImnp64O7kNadmlK562EQceuZ9kkOPHs44BDVy
	 QG6QTNyNm5zq5eQhDHarL7Ug3sDOjQjtGHCa/SZKCiNwqd7Homzviy88MrsNfrNRbG
	 hzY6bOwzgeYMly7kUPwInOBVESq/qDj4bN2yQYj0Z4TIbV7FZbj75ZuKNlJm/n8GIz
	 USPgvBEOEosfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF9EC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 17:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700406276.29766.306144551582793501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ffed6a8ed58a33d28df3ef6c2825d0e21fec9de4c7fe72d99f7faa45d5b751
Date: Wed, 29 May 2024 17:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717004062
