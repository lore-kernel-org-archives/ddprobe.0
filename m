Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0D140960B
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779820354; cv=none; b=ddO71c4ygbm6NM2GRqJ7FWJI6zmcrGFw++i62lILz7xX3DEIrEyF8pjtCYneAGM5J3kYBsS9BOXdfb8nuHaSdOUCgsyfVEDgCSFoMC57Mwm+VW4qp25AjmR5WQpNqAnSEdB7P00ktspUvCeOZviXtMxojq6iJeObiN/FpKwI2k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779820354; c=relaxed/simple;
	bh=+REYB88h0FLhC3OjW82mHSj63Bs56r8ak2bcrPYMgLE=;
	h=To:Subject:From:Message-Id:Date; b=uN+KAUSVyU0w2CnNoGaF0qO/npVck+5i76ZW15dcuyVf7wYohiKoNyJPVHDDKHCxvucm85BZaqEMxr0fpSz37QMp+uOWSvaEX2GhOeEjkmdC8bIrT7ejAT/XZDhMHoQPVIQIpI7f7IFkf95GVwxsiOzwscdmJqEjDo5QveEvYAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SV6CsPCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SV6CsPCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7ED4C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779820353;
	bh=+REYB88h0FLhC3OjW82mHSj63Bs56r8ak2bcrPYMgLE=;
	h=To:Subject:From:Date:From;
	b=SV6CsPCMTxRlFnH2oRG1BoWQhRgDwiR/UqiVRxlkF4peNdM548ptNdBOFtPGxaHlO
	 6PXbsMj8vp4eLE4SjFfbWoTV9Xgm+nU+uEc0IIyvJnBKBApEHXdrU+uOc5dUKsKeOP
	 8pw47Kg5VynvS3npZLjO2tO8/ikvqQahsqU4ypUxjoL17bBWf7+8WJGlaDXx8reca2
	 XvSxVQUM06JeAr2dcCJa2m4MbaCVgMqLfdTg9hCgIQr3CWbzH2ecc4fKffBFADchT7
	 feyRaKQ1QKPqISySJrJHWEGNVspaTuJZhKxMk91KnBvdUiEZ2EWzai75PDCwoN7Ixy
	 JF09stSGF37sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6D2CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982035369.29098.1888868388241583608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ceecae14395030a1ebfec5ee6a6425b4d13507fcc42cd9728a017a3ae3ebec2
Date: Tue, 26 May 2026 18:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779820353
