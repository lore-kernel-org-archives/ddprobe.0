Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671181C8624
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743033594; cv=none; b=MRPxaaUutA6kdXGqO12L7NZQsK8Cg4O0jGYfjuStbFlj7nvdCztM1749JAHRbn8tZhLYZW2GBI40GAjcWby8JHjllc4xHs6J9iKqzWXB6jGIsbXJ1wizNtAXLq7koRXFTFH6bXPjm90REr4MpcPgzfgm5A+/07n3LhNrY0ntM/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743033594; c=relaxed/simple;
	bh=/cIN8vEc4agDMaiejZr2y1d2rSTZjUZXvrFXbW+w6TY=;
	h=To:Subject:From:Message-Id:Date; b=s3IRSEYgs6e+FHC6cSVBzCfYOb6B7pkG5GohC4xhrI6RpwySdgz5MDNhh0YzVCvVqT/egJ61Iw8oL6m7bWmIHKsIGJEqc/JNnRhi57gD6zwCxHVqSc9lRnwsds0tRn8zOsrmILgKz9i5BMfDdHwhRqIvOmDXx94kWxQRFxxdfV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7bOw84n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7bOw84n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5514C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743033593;
	bh=/cIN8vEc4agDMaiejZr2y1d2rSTZjUZXvrFXbW+w6TY=;
	h=To:Subject:From:Date:From;
	b=q7bOw84nvrycPvBrherv2n6Vg2DmVJqSEH7C9mndAZ+hVx9ke+V5ddibq6p0Ea1b1
	 q/5gAE7RGiwnCV5u2oObuwC8Khf76S+Y38ce0++BvzBoCT5yWnImvKWCJLDKhGXARS
	 hD0vRJCVWOE4DXmV1W/+FKEfdXbNOEE/6pcCpRh+gKKinTjU1RCKCOFfwTgnItbiOD
	 R8SKXlabpZEHe5bS7jRXzORbQjcgJgQDBV1cwiYzQuDzp1v9100+904TBmqSDJ6WFw
	 ySslj9DXykfC6/Blp0fDht66za3cRc6I/LreszmNOyjSeTCyGMQxJ2+nsjpfFcCnts
	 c+KaxSl5flkXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7316C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303359373.32306.17468765401473861958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351aec79bb38dfa3c81b64f4779ca02da16cb3be5ce8a3b4cc3fc2095745e19b
Date: Wed, 26 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743033593
