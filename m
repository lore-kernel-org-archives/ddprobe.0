Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB02202C48
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750142394; cv=none; b=lbC51I8XDdtRaqoZeQkYsQqK8IbUYcTquW0wsRVZoaiIXtcgrMl80IIfDEHbqHUIEEz9sl1WblJx4uVqvtWwZ4xXfCOKKe6R5JlMJfTyIyAfcBeqUqOur9LqKW9A+PtGQonFLdK5QDT4wg8BA1rcScIeXBYlnvvgyezKqt9Hf1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750142394; c=relaxed/simple;
	bh=Sy1fdIK3T0szju44Rs2YVjaDr8OD8xely98Yawrgxdg=;
	h=To:Subject:From:Message-Id:Date; b=GoC+aRiw989wCneOuzU2pYDIah/0tKN1q7tMVHeRwCkOYIsALXM0TnqW35wvdTuxrbfGAqxeraZyqThqzhyoVbL9/phhtYHR0va1r32WFdBk8ZAvH84XnUj6SR4Vt51EHPC8l4wouyetv+J7I2AktULrmHoVuWrBQtGFLmhSbJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIr/JZ4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIr/JZ4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B2C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750142393;
	bh=Sy1fdIK3T0szju44Rs2YVjaDr8OD8xely98Yawrgxdg=;
	h=To:Subject:From:Date:From;
	b=dIr/JZ4nwYQV/bSkkyGfBG+lb9U/00W0y9t0jYsse9Bclw7OkkGnuvaaWMzPLCDqi
	 vJ81Ozwj531Egoj5vI2U4/9ZiFgLbUg0V5BR5S8WfTPS/42AtxmJT5MtrFF+zdMGan
	 xFwsfFEG/dRZ94jxNo/1TUo58ROAhaY9SbeouVvQQ9e1EbhpsAusMCuyR/MIwOIwtt
	 1GevxRP0zbo1cSHkaIkteOx5qr0B4uokXyrbpgb/WQM8lk19ZKYfXSxSzk2V+HltYX
	 YWyBTxkV0cAX4AmWbCvKRzChLLMaFCAYlJO9N54znkAmzlihQEHGX02Lz+GwChMHEJ
	 /Nkl+gtgu9/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F7C7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014239357.8145.11424968289693247928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8931c45ff19ac3b2a58ca771542067a472a6e7fa5db4208974d57fa8e36cec
Date: Tue, 17 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750142393
