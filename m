Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7134436A
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723581354; cv=none; b=GunIZrtlD5/oEZHVW7QxKPG1JCGBeCLabEdeow0jU64muJeYLq3eBBvxlpxvcj3HDZ6ISC1qbcyLCTXavJPVnUGlgtZV4ANpIzkXZMYzkN2cfr6W2dskXmC0RKZb89RVakgD9pFGoP6dbe5n+WYZHFptTnmFQEs8ephG/a2tZG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723581354; c=relaxed/simple;
	bh=kiIONEU9XoYxbMRUOF5by0EPifK8vJ8z41cd3xdMDng=;
	h=To:Subject:From:Message-Id:Date; b=jFw3btP+gqOMgMNwqTimSefLNFaYFQlk6uG69IeKFqQX9Whv/I20ry8uzddnq0g+2cgb6U6S6sVxE0LZdWf8SrW4KOAImrj1AnjC8QF/sM3hBw7NqLFlbMMiY3pyEZHD0d20sjFinKvTZgOj9vwF2QlXgm4ehdK3HZeBanxnpHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1VsLDNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1VsLDNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3D0C32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723581353;
	bh=kiIONEU9XoYxbMRUOF5by0EPifK8vJ8z41cd3xdMDng=;
	h=To:Subject:From:Date:From;
	b=o1VsLDNrr2mjB6dCVpmA7hNNaX64+Q5sCLCDFmvUC7GoR7PwQkJHmpYloX9UK4x/P
	 9m6U5TRPcMJMLDsU1IWkmdX+cJS3Dh70u4sU4+bq3NluXoL8LiVNlVxCCKXj6ziM6S
	 8dbsePVRHh+PcnYnQca31958zln3Hqf3JEnEgAL4b8RUT7wFY69dd6toTyPaL9UVVC
	 EGnZz2NXlbK3e7fpNHJeaXIqvbSIR0kndeIVokpjuPsqso2J79XA+8WAtTypBWr7uk
	 ysOGpwJqEC850HsLVTAao86bl4tLw/kXYKInx7+Ly0LZDJcaLuvWbXJvm6xDn7fVBv
	 MZ/ZTEulPUBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C676C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172358135358.7721.2215074747190077694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0637567ca13cf05605e9c5cd6b8492b476a8b98ad673d31ff2008ec8804c8d2
Date: Tue, 13 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723581353
