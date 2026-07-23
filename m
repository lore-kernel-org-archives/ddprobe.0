Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C101318B96
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784823034; cv=none; b=eba9I2ikFIC2RB259wmWASmF5CHAHF8Pu02EWdouFk0ekXi0rfZdecV047y9+tPX/CX90ezj2HHaxox3SES+KDVLmLlVVp8ElArEQOMVRvk/swViu5A8XAxZ3HBSbkCjgtgFAk06nKpTczZJKpb7Q7NC5zNI+4auIzghEHWwDL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784823034; c=relaxed/simple;
	bh=pBQFw9oJQOX0Jhw/0fLVt2m8gEyzpvT0MIkNtE8XUnc=;
	h=To:Subject:From:Message-Id:Date; b=BaZgVD3yoUpR8ey+XLYZrAVZ5ytmoNsk7lOXFzOlucejl6HNEuVBpqaWTxWXRPRVUQjFBbw9gTRoCXUrridGVxqP74u/IedFMtVThDm7+AzP0y6KMWsy8vYMWOLwGjkw+A7dbmZqAMR1lyLtA2j2lmVN4Djj+3QC7i/ZVdsLAeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbeqdQJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbeqdQJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D332EC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784823033;
	bh=pBQFw9oJQOX0Jhw/0fLVt2m8gEyzpvT0MIkNtE8XUnc=;
	h=To:Subject:From:Date:From;
	b=KbeqdQJXKjFXRPYuh9ZVT/MiWs3mhUoPslvFVnzeaXxhb3hTMBBwPgAYAAauSgs89
	 OvHVmYm1E7zz7lZhtu+HbRfINcCCwETpD/QqftV+IZFswm9pQfbA+x1DPBjQHqbY6N
	 ZSpZjsUD6vi98B9xvckQP//RNKgrfdP4usrp+9dGbm4C4zpqcyPLaaho+mogIidoys
	 Y/E7EB+7kAnLFbDZGBcxQaNbwTy86ZtKEIngfafrKl63A0xwJvSNlugbMjD+EG0jER
	 2vOYeCe0lFU7ccw6sAnjkArm1nGunsQyUHy1/khHUqxRFkGhCAT3VQg7O4JcwvhOlA
	 Fsb5JYToQn0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6ACC531F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482303369.3331.3577894664326743359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba65e5fea266cc72aaa882d9ca5f4574ee37529583a913a421ce52b88f91d0d
Date: Thu, 23 Jul 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784823033
