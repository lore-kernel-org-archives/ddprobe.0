Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A2230E856
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750362594; cv=none; b=mOM2X8B/ommIAJ+k36On6qQfWwTBNewzvcGicggot7MXx00I7V/kg2wCOCpVYrkgIz9HhREx7EMk3xKBjAXgOljlwKw4yjuVDARyUd6G7QaAakawSk4LSkJkgH1f9eIt4VVWRi7DpBduNfmAfo4WRGBVWCklB09g1DAvJS/BBKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750362594; c=relaxed/simple;
	bh=9LLKPRgEJ0bTTu2SKFo7GsVfVUYfwWhDLITXtN73LSU=;
	h=To:Subject:From:Message-Id:Date; b=njWwzZjgY0pnsFMmh1nta824CiCaBg3C3M3hf4L/+srrJZYD8u1F0fElBAMPCBP6G03d7aRJFNCq/KmhLWHaipuKjzjBlF77J3J9vubkwOYZieJZdNrqCs59/dovxqtLkPXntpC5BvT96AEqJ6Tdqlpr698PYzqlqyQvnfMHXh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RamlCXmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RamlCXmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CDC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750362593;
	bh=9LLKPRgEJ0bTTu2SKFo7GsVfVUYfwWhDLITXtN73LSU=;
	h=To:Subject:From:Date:From;
	b=RamlCXmwODpZNdgs1T94vtHVJE+Kre3bhvWaFfsR7VyMv6M5Y1pMgp5WJFVE4RLXZ
	 DpJ8hsXTpj9jbEiUON2jGAAvdIGW8sCUpt5pr2/LFOVhJUyDKfTYTqfm89aO5uwcLw
	 3TFUQMdDGeJuWwgHmGpD2ZJB8RMSe0r5TaA0FsbBpiLwoAFU3fsgW10Ctqf3lXPlE7
	 3TjZZpeObC5GYTm1TW6UjDwXqVDE+L0t3HX00ceufwsc9pLwyMOO22ha3kqaROFcsD
	 ZGw18PLW0+m2VXx3jlsc2bEW8sBoOnHXsv5FdJBx0Q3yH3Ve3rW9vTE/8GwADc7lro
	 i1dp395MeMGmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D2DC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036259357.17701.8535771302252307133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb24a9915c5810691a9ee516e2ecd6881d356dd835ccfb6e47a4f17a08b06ed
Date: Thu, 19 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750362593
