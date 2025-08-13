Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3E7153BED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755046794; cv=none; b=Vda2piyl2oGQJtaERVFvpMLZWJ89aPhWQNWvd9mIIgwTAigk/7KV4Vg0BfYhNIds8W3oYmFtqnvEpvUe7gUqs10Dpn3zCuhV2cC9Pekz4tde9uXylkXsLXSnC+OjuG/wOIBMLMqAtFrmZsFVkrIPkB7a26mUKaZVnK/rb2INzgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755046794; c=relaxed/simple;
	bh=nQA6nuK4WONgA3oh5GvQfa0qvzODoUtSXh/NGWyInjY=;
	h=To:Subject:From:Message-Id:Date; b=s461ZTlccGCBbZMtUYZbCbugLavc4jTvmabK/C6FFPJ+C1G7/fmT1PCZCy2vz2smggu/5kQo7KpV4wFDmtBwp4T5Z74zvMREgCu8xz3K5qI1VdXfFEZZF/ZAr0VnWAF265CzWAz7/jQCRqB7CAKpNnjmXM+krLz53NRs+ZLsy18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+km/NPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+km/NPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A786DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755046793;
	bh=nQA6nuK4WONgA3oh5GvQfa0qvzODoUtSXh/NGWyInjY=;
	h=To:Subject:From:Date:From;
	b=C+km/NPzh23MOwDKhY8nm4B1NpATKhVEiRv8ayZq3mYWxD/HZTN3udYhNhyNlvSTw
	 C1LwncRKFl9Slsws/RUGW/3v9MxYL/EkZdIPLE7qybrG5p1tjZ6h3K1uzBPyOp4WGt
	 iuTaTZUBisDXeTHwQLloCP3GQ0KED+8qa+AGozdzzpEZwLaRGxxvm+4W1lGgiLcI6v
	 Ff+aeYCn/2GliHH1aRZu4btsAGlka9R/LhUobNBGluq7wbzBueieUI60IJWZBjUbza
	 MtCrpwIuTUc4bytPXp+tLN3+f8uCFy9zY36AB86pubwR61rp10QE/dNqae0rzaZoqq
	 NoPiSHjaOi7LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92454CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504679357.23823.18132252234787371908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a515d68a7e710e10a4187ae2dd0285041d4e7537caaf51d4d9dc04ab70690cef
Date: Wed, 13 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755046793
