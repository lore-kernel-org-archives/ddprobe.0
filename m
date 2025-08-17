Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C334156F45
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755464394; cv=none; b=MiEd2jhF99QrP7Ibzl/3CePvhHsUo/qm66GWqsXr5Ov6jLPoGJ1Pz8NlXb87YiOPV+E5vM9rkfKFmZNlbH/z37GANrjp5OR0G2Aw0CbtHu9jA2CUa6MZ1tJdlQtiGo248cQspm9i0e2US/Dk89GUQNkW+2hEiuqu1sF77piGP10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755464394; c=relaxed/simple;
	bh=mAbegmpKAZutD6DKMhPkZFT+4ukGcYBL7LUBQoOrN+w=;
	h=To:Subject:From:Message-Id:Date; b=OwltbWPAKGV3CXDbwAH+kBWiNiA8dkUPyFVbjiiugJgJXZo/dEdwEw8tK+RXIhY3q46qs9u+awvDbMmknfIDMI5UAHDVQ4hUeyu77vgg5/vBUPsmHRFin8kgvS4QyCVP4Wf1G8aaEa/bLnYMwIV1zRdW4kII9Wo3UdfgVt4bjV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jClB9U8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jClB9U8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D98C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755464393;
	bh=mAbegmpKAZutD6DKMhPkZFT+4ukGcYBL7LUBQoOrN+w=;
	h=To:Subject:From:Date:From;
	b=jClB9U8fTyKkGLtXlheZ9RDU1LvKWnehiOJlZsbsqsKrSr/5A4XhHI3xCvaMfk+85
	 sLLDn/NfhkS/Kwbq1FxHVyxSFwvCMqlNTJlw+5x2NtTh/S55Vcf9+2/xiDXFF8w/Hf
	 eVWIkk5zxyOL7tr171AaSnbz0jT90cHQn36uLv8fhhF6y0QynxXuPwxoD7fUTdwtz6
	 iMo74v7a2eJB4aIG0S6F2hXXbDo8mtUjODpnIWzMWd2u/EsiVfcpMGXv/8KAinxU+h
	 NpSWPdN1hEfqESnaCsZW8CF8I2xbjsiosKJd23hRwmg7PEFiTvrJ4ivaIDuUrrcS2D
	 TQxnGJ7pbdxnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132DCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546439357.7241.8739185535001387461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7532ff1240e2ca1a400debbee79663e6b245b058e19aaf5c6c8af64b13abc922
Date: Sun, 17 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755464393
