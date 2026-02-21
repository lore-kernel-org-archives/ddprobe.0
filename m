Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BCF3090FD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771638294; cv=none; b=fDOU50yUxVxg5noDd400XzHputI2+tU05GNIpl7hLQHrzihA+AXtVJjtyg5PUsknQsBtgX7jc+xrR8pUkKapnJWG5R0ruxnnfoxQVzDeL/FMb68r8+yJBUsb0NyPKGKsSKkuOKWsaQEYcWUKVa7CicrsM4dopEu4P8O893oXAqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771638294; c=relaxed/simple;
	bh=hI5OqA054xC2ezZGKDGtx9nKklx2CGmniKwHx5VD/1Q=;
	h=To:Subject:From:Message-Id:Date; b=Dx0lEiLm5326cHlfrJJO1CyHhveqbSuE0AaZSuDAS0QrWFatJdvf9vfvYDl/LS05pB/SLHE8LFOKY4Kle5jbLsu8zuA6ootcRnTRY7+c9Bx+85/zIV4cOxncFWDRZTnbBFRtb9lQhJh0FWc+2F+AWf/7klMZdb/gt81U1RWyGfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4Cj5+H6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4Cj5+H6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5938C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771638293;
	bh=hI5OqA054xC2ezZGKDGtx9nKklx2CGmniKwHx5VD/1Q=;
	h=To:Subject:From:Date:From;
	b=W4Cj5+H6q+sudqEQDV/QIs+Imcl3pQLTIHwLgFfnp9+A2xHem1jcM/+f4TwOO9Lo6
	 MRIHR+23wrreehhZV2zrTN3sfR9fwheAoQCzVwgd23RtN1DXNYkRFvm0U0nWDuDILC
	 2sp9l37FLuuEq4zq1fILCj+YxtVYwV/+pritGf6/7DsKBNZTJwaeGvSY+ozqCKjNvs
	 d/QJComtMXa74RaVH3LTATlBXTEYMSU2B/bJXx323ZzRj1Qjv0C557niZ61XgM9vAl
	 W0MFTdVsaTWj28H2xiLjfW+oAtPOdxFukNmeik6KgmvVVmMGTKexTAacI/5ZG3ctll
	 N0zwVrsk4vuhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991E8C5DF6C
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163829358.14220.1815568044247968618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3dca89cc1ecc04ce8f3b43a0a726dc71bd158a78ac9cfe59a8b84b69a99722b
Date: Sat, 21 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771638293
