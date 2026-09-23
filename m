Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ECD23A2E33
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790161834; cv=none; b=EncWcPMOaazf5n1Vv15prYQOD8G7X4/WtF7qkkyHzap3RJpPU5ZfeVOCxo4eaN1h9dIWkxJoGs95b26KB3lvmuADTzMugeeAfE86EktV+HcCyuGRpDY7n5QNFjFdO1lz2lTi84zx3DKF+LwIpubEW8qq5MdvAJE0HHV3aOf/+Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790161834; c=relaxed/simple;
	bh=dbF/ML3AGMfn6Z5IRyzoAW0lJsRcfQU4F4TBAGEAvhk=;
	h=To:Subject:From:Message-Id:Date; b=acQBADmr4VVb+7qxQvJmdAlFVeHBajdYhopzmOHyJIRQbpjsUxwLP9Ue0nHJGLcPQIhIYmTE/ByfilR3gx1w+I0M7vLwH6FG2YM4mar26GgUTl/Z/uwkN1Kcmjv3nFTjRJ9gT31cS3exFcKa6T9+fjyakIRep/LMFi25sVghTBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hg8cAj83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hg8cAj83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF383C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790161833;
	bh=dbF/ML3AGMfn6Z5IRyzoAW0lJsRcfQU4F4TBAGEAvhk=;
	h=To:Subject:From:Date:From;
	b=Hg8cAj83VcXZFL7V5JzmYi4wNRwT4vuslCayetKpntuno2/bL8xF92uNioeaPWvfD
	 RwTaibG6NVHf40bRrl+q2cdub8qQgJ+Vf2Vxt6yczmidkLCRpwujofGDcr76vG1wJr
	 TBgQ71CT70xg3xbfJpo99oU/X1w/5BgMULgSzPLPI8iER4z53JZbMscvVJsd6A9D9a
	 WrNdPXc0eXv3RDS+AeDC9nTIZT4Lat1b+jOFQXcz5LAkvtGftpM23mby6GcBSEAy5t
	 wokmlOqtbAHnmJToqXk+vFwIMciqOzIFEzGcxqXzdnqL/fCacq7gTmfsIHmyyLrHtL
	 18TmafHDj3Keg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC401C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016183369.18442.13487947859096312022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59057188d70dbecee75c56eade7dbbe7ed6e23cbeeef85c01bdf6507d49aeb8
Date: Wed, 23 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790161833
