Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B25242D65
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785305434; cv=none; b=XUTVUWV94J0WeyzSAnzJGZjh4xiPseuw0yOEv2QObI4S1AyfWAhEs2bgcHFDpCiTRru9qnAt7PifFUXscmWiSP2sON1J1NFR5OnLBIn954r1btvOx/SdY2kVvxTZah+fXix++X0o4JsXcaEec+FPHmgTO5OgDsYxFLzI4dA2mCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785305434; c=relaxed/simple;
	bh=9DErY8nbSZHXLYeCDcjiQT9R9pC438zhis/VckiEWC0=;
	h=To:Subject:From:Message-Id:Date; b=nvWPHE35ViOoyYOP5j16xtJwXKnOF/lNfc+cLoOf/JjqbFYd+BEK4Z1EeXKPT87mu9nHg5KW/5NYto+HQpwaGk/mAxRE2UeKLUjzAbiWmSRPaXBAUQutkoGs2UyVt0hyDfuNwyisGgWNaYLAV3ghbERgK9DbttBYYEkau3JDZPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeEr8u40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeEr8u40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE19EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785305433;
	bh=9DErY8nbSZHXLYeCDcjiQT9R9pC438zhis/VckiEWC0=;
	h=To:Subject:From:Date:From;
	b=LeEr8u40NFZBXwDbwxm93nS/PT5ximhkGhXQrDodIoRnDO+Gb2widbtTuRwumObEv
	 c1IUfmSA7BEVeUqiLe54lPRipuQ4QNWnGHtUnYRaHEhez+OHZ4diuDGULfYdvehhdv
	 BcdgXGaj1i08zVaLzTawZtkJdHtPhdm1WNCxT9yCY3sHCP2h8At69sKLIcwbsCZBUs
	 F/+0NSNIdcDARqQYJHcmwO9g/jAt5KWYOadCo7WRtDmUDN0Wi/SzSbRjhrAv9yajQ/
	 olVvg9ND7Lw1Pt4AkSlZ288SGya9GHu9h80oiLvua3m2AtdcE9w0wAPGFNSgtDQTEf
	 8w2F5CnLogIMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2DCC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530543368.11523.4347718492741957761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71670fe0defbd9e42828e7fdc09f35bb821e076c179feaf769aabbd25fdf3dfd
Date: Wed, 29 Jul 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785305433
