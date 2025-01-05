Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B2229A0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736040354; cv=none; b=Kfthdpz5NH/VdMuO1Zs/U2Gwmazsl46dTOxWFe44hDnIw81Zuw+sB9LWOuq7L5sefvQvaGIBSn7BCGLq9XdNdAO2I6gIjJAg0w9it3SrgricZBHdpZOciRq2rND5z1Ih5QuXjbItXuKQfDFVEr+Igv/d4z8XGY61BAV1y54fCDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736040354; c=relaxed/simple;
	bh=81E2uFLSj9QIbmZdPsAWhxyPhTqROs812OMdfEvsIL8=;
	h=To:Subject:From:Message-Id:Date; b=nXwaHAKkPkHPipQ5UGIH0GIefIyJF1G/4vaHfx5l7zZ1AiLh+E0Mx2IQLjimG5u7UIIEnK78AqIfPpYSo+He01uOXva82B13fNbtyX8sF9K4Ythw+jh6oDreH3ko212vov0Q3299JKEWh1bwM50ndq0NrzNccob77Jz43GB1RFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVXCsAin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVXCsAin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4C5C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736040353;
	bh=81E2uFLSj9QIbmZdPsAWhxyPhTqROs812OMdfEvsIL8=;
	h=To:Subject:From:Date:From;
	b=WVXCsAinTC1Fug/9mbU9InpCAngGXxD6VLcH2xWVlNinfH8vqyVL5E3C+PWsDjrK6
	 ACgET1lPDOzk+82oXtst8nkkWyMDO8GEL9G5N0LDL1z3nLm1D9Ch6LqhArql6t3mZC
	 7/T0Wfvpq2eMy/x9Ez9UPgxA15Eq/iceYKug84VTBbD98a+hDbihc9kzqIqb/t4JJe
	 4su1Qi9M/GEp2N0O4Az7JD2Cb6MvYte0hmugp3Idkpervut4YCtO6HiT67lDhHUFta
	 5WmNov0Fr00rRaJcqYbmrHGnsh1TrQskPzzaDTIPIKd0I08/dmv9MJ1tzvkCGT8yXJ
	 RXDGkVgTllp3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9835DE77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604035358.28637.16924157801412224225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3821cf5469aed5beb2bfbb80fe85883e646a8b71652843720f57132fe034764e
Date: Sun, 05 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736040353
