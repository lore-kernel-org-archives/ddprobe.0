Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2752C22422A
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757528395; cv=none; b=fkraEnFOsMMYGAAbjxWZHUUWk4rdwrp24hsItzcCLRHUnAuNF72zQQxWWkNZuGpeNHhRd/+slJgnfaj/J6VqoeYsqu7yYKelijpmN7qwBGFYEv/F9PXm3sD2wTbVRLFsEkh66A9MiZvugT3c7mU1/Ot59WRLTMgIzsFSMZiS5Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757528395; c=relaxed/simple;
	bh=3KgDfotzyKRh8IguW9NiTFf3BMo14bGRQ3gGdxoP7Xo=;
	h=To:Subject:From:Message-Id:Date; b=oohFxEN4rRDWRSssOXNazHhq9PfcIe2quPkFqHi3iZb+wxgjOJq4FAx7U3KRPc+MfkV4F4rOSQKA6aO4XurQK3AFkBFx/loQqkWoL5zol2cTUcH125eyyAbKpbICQEADAFl/AnUy34f79XbHr/PUbGJhZYUTWH8MVRwWR+zCg38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s78CoEik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s78CoEik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F65C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757528393;
	bh=3KgDfotzyKRh8IguW9NiTFf3BMo14bGRQ3gGdxoP7Xo=;
	h=To:Subject:From:Date:From;
	b=s78CoEikUzl16/5gi96iCUq6KtyKlu7sxIS72pnWNUUhJkQt7M2XGNwvfmhemGG3R
	 8s97e4jNEsEf6ebcSOTfy+TL6mmsewnIlVqOEN2n7qRUw6mK7mbAAwaTT2TPmw3SKh
	 qQTQOTKHtHHE4dbgUW7dAw80E5UXiwqG2IBWAw+a/NRvPDENaaZsYCB1HUyS7RS8RX
	 FoM0AkRL+Z/u+XpWsVcIPLDfCYAnc3v/znzWnUp9wpOvyonAhSaGUBP2K/ucusxfQI
	 oTdx/0vNQheelxJMjFl4zq+4ijZf7+3SvNdmJkugrI0NrrGzL2gHofOvJzwTgF8Z4o
	 gLRnQtjq0IX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F967CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752839358.16517.17563258368495850507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa60ee4769275b17a19d365d49f06424a5904d65e5916d7ec8287836f181c1fc
Date: Wed, 10 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757528393
