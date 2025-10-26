Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139C6611E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761440394; cv=none; b=ij5+ZXcqU34JuQln1YxU7xdCdku/zS/ayRkkxEdPw65cFJ6dEXKc1IfQdvJu+8ZZ9jKomMc4wLq9BmxERpdnd8thTaV0MmuJ3EwBhDjUhil5UKlQGx1LGbuF52W7KkfL9ZzjdM9qyL6CDWSR4XEWBTlILfPdLBSPrOupogRgs+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761440394; c=relaxed/simple;
	bh=NdW/e8uT7ISpIujZwqtP8lKOM3fDRdcNbcmhu4WapdQ=;
	h=To:Subject:From:Message-Id:Date; b=EQPP9ll19gJHrquasVuhGgqfSyG32Wim8wEgIGlmzW9/loUAgiR/8P/ACNJqCH+3pewhB9JlXw/qN8bY7vBQtz+E5IcV0oyvoj0Oi0v8wkt9xggglCW0vmrdza5Fk16ceodl6lcg5/ZoxSuYbDQVCpfD+zutLJ5i8CJmCTX7V/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWp4sYPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWp4sYPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CCCC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761440393;
	bh=NdW/e8uT7ISpIujZwqtP8lKOM3fDRdcNbcmhu4WapdQ=;
	h=To:Subject:From:Date:From;
	b=aWp4sYPhBpUbTncVhDqyKba4gs08JwXc77eqw150wBYMIJ20LzwvZqTz434y+85tK
	 jzWib12rac746SpBQVSnUKYh8Y8wU8B0SfdrvO0FThzQdTg/9HhDP1ku9vo6uV2jot
	 eHsvUaTfn3XGxlFXD+Vj0/kDkVAho/stUhSELEi/0v05Sn82Po2UjMjcX2ROOk2tMR
	 EbNnv+N2Pc36jARZpfsqxHRIStspdtxr4/EEBq/0CJr8GyBK0gyjH3DBjNFXxg6Day
	 nzKI4CiRDayokSOUph2CH09ed63XpSpw9ZnCNDRMSojpH7LimNwaDcNtGnEIYKr/SD
	 82g7DsoYPhbzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91723CCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144039357.20216.2142069248575468590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c7c27515fc3f41a5875247da9e5ff0c92436048ae373a77aee6de80cc173a9
Date: Sun, 26 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761440393
