Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6425D492E52
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788913834; cv=none; b=UPkPZfRPyTth6ea9025iqEVes/M2T+9qtCglWcaksN7GKwTN0gMDWE6Un6+be5QK+cm5Z/M5c14P0UjUMENy5uFp1TUCfHwQjfM+mVtP/6rOPYgJNZgAqDCivKYIzdiGF64n+IbglrXft/eOvaysQe6dw+XJBRlcnMXD5LoKakk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788913834; c=relaxed/simple;
	bh=16LzC4xFH/OgJUqzd7vap+rh+kMfhUNzNLBHxNh9Emg=;
	h=To:Subject:From:Message-Id:Date; b=iX24JprYZ7LJk9KVrTTWmztmJUFgcZIVUSZGdokvryV0A2Sx2XrVeMsBm3VmE4ua2QWgqA+keNe9IJ6AxCh6GuxB8GEV+i9VKbnwPxEQZz3i71yC/YPKiidMcnbLh4CvX/HdSoY3Qi7A1dDJwf/Tg02ZlAKpuxOjv4Sngbx24bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQCbtkWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQCbtkWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4656C4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788913833;
	bh=16LzC4xFH/OgJUqzd7vap+rh+kMfhUNzNLBHxNh9Emg=;
	h=To:Subject:From:Date:From;
	b=cQCbtkWh5YJzySVoQMxo5ue/5meGA6jNxLdUTMrfVeRfoMfpoOE3wzF19LzLW2orF
	 lMZQbmuASlP830sFV8kUNPR4X2N0h/RYciM9ia9y3qDme/BXORgm3AzqO13HGwDk3G
	 TmFsHYptR59j3xX+Lxu+uVIC0WtA7uaKIxNKFMB4Re1YNj/mK08XEVcd5ik6TQTzGD
	 S5j5dRowomRoyjvEBDHJwcpAvBssyFFAB0lGyRngDU/pEFFOd/dhs603TkB9cAikL8
	 jUc55V7an462Fiab1LbjlBiSi2ZtRlKwdl1CKEBkGLv3j3+2kt/OYEsCpb0WuM4Ak+
	 aE2goYeOZNovg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F4C79F9E
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891383368.18745.55753906478723647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885b9975401a9057a90c1a8bb0db89108383819d59124bc4b580119994ac5ac9
Date: Wed, 09 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788913833
