Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C5B739FC5
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710887296; cv=none; b=pRkJiv7/3J6+GJ6+ZyclT9LGm4fQ3h0tZVyc0203ig1EjMvFCBT1XGRbxzWEf2PW8+R2TG4BeVb7MK4JmXZSZnbmeLM/4lOU3b7xpVOmQULbFFwBaZvPDDG6vbYeu3SW+liokDIzoeImAdXtbQ+CN1j4XVYFkHLnPZqw1DgmJ+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710887296; c=relaxed/simple;
	bh=9mdzoWp3rYcVFXUFH3QM7HNDl122QkO+R92SakH2n6U=;
	h=To:Subject:From:Message-Id:Date; b=PeQ/5B18KymEKGIvMj1d9CP22KUN9ZCX2tG7IrVoojqNT26cPXqejFrVPYjMlugkZnAfEo2cbA4NjWYM/Ktpzts+KQS13AK7DDmRAaCiKbjKy9HTSdUQ8hfmP/oTbn1+zr2Fvf3K1sV/L/ft2WTe5gWWSk+2uUHeZzcZa5J6y18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYjUM+RL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYjUM+RL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69703C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710887296;
	bh=9mdzoWp3rYcVFXUFH3QM7HNDl122QkO+R92SakH2n6U=;
	h=To:Subject:From:Date:From;
	b=mYjUM+RLgZMY80u5rfR7ou0U3koKNh4lNb/Jtnm/G9Ym9iE9ggNnjxiQh0aTykC7A
	 ufyWH4sENSXTroon+O15vtk7XZ3f0kCK6T5LrQogJKg1T1bsVUffch7I08O57axnnK
	 NWzckdoayHCRsPEA7L83NiDq6nYpU1Vq4MEoDqzrJtYpwMH8/2Nzhqj8Mp1aC/K22e
	 GHZTEbK3cjAE7i5tEBsOjgzQvAeOdlvDpeOWExXUFP45M3zzm0NCkuE2v4i2LWNR6W
	 AdpFBRZbhuHNNGwRX893AXqqI3+vCSkcofGSPw8oCI3VuEBJ3hdcxmN5xem6c9Jodr
	 vnoR+GmEEbEgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C77BC54E68
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171088729637.6883.15328646228962775934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6110595c158cdbc5e5aa94f2ce4615fa089ca4f95bb73772e598791b4a0dc29
Date: Tue, 19 Mar 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710887296
