Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112002D4B68
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753361394; cv=none; b=X2/iAOF0xkEZrpfH7j+gVsIMmi1pdwalV0/EhGFwIZ1P4/sMVTCuy1j6btAKxMAT/HGrAv3qng6Pc5cW2b45SGOLlzjxA0DVWVavdiwicnWki1HTCPuL023OptaOY+DuIV7byv8Eq2+DQxJvZdQM+wJrWxNoHTQZ4nV8xsRhpv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753361394; c=relaxed/simple;
	bh=eYo/E2GOrH81z15wZmOcBOlWqMm2u+jUJ1bFXf/nO08=;
	h=To:Subject:From:Message-Id:Date; b=TNUC0Oa/HHYJxFrtHfsG1yOBBQ9sW0EWeam2tt7bsQACG8YpXffBxdsb2pSPlhdNwB7WGotUcpQzg4AMMM0GfBlpGGLG5Wvko4+x2vm5xf4sL+jyLsDv5335oA5tu2tWWym44S7RmwIUYiKN201Mri9HPr8dQY6Ci7LE2/Fanuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzeJSohT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzeJSohT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E41AC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753361393;
	bh=eYo/E2GOrH81z15wZmOcBOlWqMm2u+jUJ1bFXf/nO08=;
	h=To:Subject:From:Date:From;
	b=qzeJSohTZN8k+xlfDBkCl4XlRvlMqes8eqIy39uPxYQooFhqdXqxQAMnl1G47PN7T
	 piIDwEc3DtKlfIuez25+r5XWaeXwG/VILcWdJ7J0NyeCQIXKYGTJqjiXsS95TuFZGi
	 klrblb4XfulTW8VjeHpNTj/RvSc0TVRJOquF2UWjCaS8+uOzzTcWgOj9Vfen/y/gS1
	 TCjvHh/NDnVEi+ROZ/Gpor2yEoKycAsGauivDTqlW5HjXi7B4J3reaTB7ViYWftp8m
	 EQmLsalqbRauQJD4clPYDyXJ33kYAnEdFC9SnA4d4jic6QKPQa7M5erAGK82x5HMsk
	 1iW6MP1wdOTCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90988C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336139358.29607.11805918696770753528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905ed54738f37d22b4a1f8ec94812863b8814cb76542a10df2ea0af4521ee336
Date: Thu, 24 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753361393
