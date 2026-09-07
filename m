Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5EF4CC28E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788787234; cv=none; b=f+PRzD8mYZXZcm+r4SnvKsl0QqabqZd4KGjw57IghgdFdbzqrb3cyTWPvwQVfvMoz1pzduWEAm1S6z/iguqaIAUc5bIT73VUCoj9YvktH+NVdhSiiQVTKDI0bAh0tSjKkY/HuyzuREQ/oC4czB1OylC/C2OMR/Lq22AxukAj6So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788787234; c=relaxed/simple;
	bh=5rOJCMg9B/FeUQXPd8DYYCPXz7jeRYs9jZm8glvM9SI=;
	h=To:Subject:From:Message-Id:Date; b=dGz8QbB9RGolRUcTiiEZvisJbtlOptZKGyo+EIyzrbLNE+FEKhlQm4KVQjspi4KkMZ/w+SrdkZ6hEfiD3e+TUjtS4oDDbwiZydUdx7/cVBfiPV2xKlVhQ2iYhQGk+AefEcfXwCttkuoALlyrjnx1ujAr2DbFOAJ9CdE3itmPqH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1Ig0XPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1Ig0XPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4F5C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788787233;
	bh=5rOJCMg9B/FeUQXPd8DYYCPXz7jeRYs9jZm8glvM9SI=;
	h=To:Subject:From:Date:From;
	b=Z1Ig0XPeEZt8w2jO+AyotzWNQHrxtJVl/iYdUHMniErCzlNGvFkyLEk53dls9LJ1z
	 IRYoYthO14bSXhN2D1p6Z5UcIkHtwJAWSJNQP4EQWzbciMfnBbpNsGswSi7KNP6Buc
	 rPCScEKc27PCj6l8VnwKjLwKV6fqiXQF95FDIlyzk7PqeiVm3EFrKV8dyvuUJkitnC
	 pg7zQDWktMU6rZLoF+uxWeTzA2EQHX2eI4tpCYka+vG7UQzgefmbwGUekWnaNWmdCw
	 ot4RMccIG4Av/BeoystRAxCP1Oe44ByhRQIQ/aE/p/sjIO1s7BiWRxB5pik64d2VNG
	 01HOa1YtRolEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACA1C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878723375.25051.1585103486804231608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9f6bba6b96e360ae6893667fb30ab85275414365b35c42c233211fac83f4d7
Date: Mon, 07 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788787233
