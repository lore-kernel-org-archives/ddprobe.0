Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D82B3209
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735755354; cv=none; b=qd2Ro9o6OhWUxIThPPnLOtsWF2f3jPChhQP45HbJAvdkuN8Al9XzsrspFB/Z1mbp8lQNv7docBXZ8hNVU/zjVIFcy72fbdRACoFB+qqbeiR5iY7wHzJciHSyua99U5xR1NTrj2tAU+FIrtIv+WQShaUFqXtLoYdnccSw2YWInNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735755354; c=relaxed/simple;
	bh=KJB8mB89NA6OLYdtOKG8Cwunj28xwh7OKb1V8AvXniY=;
	h=To:Subject:From:Message-Id:Date; b=RNxpSgVzKh+KLI16w20aF4sDTV0z6BqfOmixRj97F04Y0cf1cGo+WXe6SjZ1gyrSpH59LiaZ4ik1MnRNgWOhrmeYANEAS02FY5ifX2/h964/fTepIru3vKQ7m2X3RxWPet27UGq5vqXkHSAF7RmEUEoYj3QvLFFyxFczUZPwxXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQKUmRRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQKUmRRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB92C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735755353;
	bh=KJB8mB89NA6OLYdtOKG8Cwunj28xwh7OKb1V8AvXniY=;
	h=To:Subject:From:Date:From;
	b=YQKUmRRenLC+cGJKO8Mk51C4cKE4gip5N3qk+rPGqU0qbAluWGzWgaLGE1+tE7i0H
	 FEoJtFp9UwMJfNGYfWc+gtdVyZAv449PtzgDbuPKkMS2ktd4/5Bpm8JsspDtakw6p3
	 UTl19obc1MVNxKnNC1942/qEykmRbeNWad0p4MJRLbc/TlnuEbD/hLpXQhH/E41vbH
	 zcKIaeqNyTYn4C47tOyJe5nq+NhR/L1yeXm4522en88ZQ7E/a/My9G65u0+me896Jy
	 yR48iPiGcl0wFnZLNxlWAktEQSPMxh0L1x+3s238M4VxcfS3xV30WMEZfiw2XTD0b3
	 auEk61FqD+E7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7FE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575535359.22596.10389446745475567939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73aaffb6f711aae0cc826542880d459a5bf6892da1c1cd31bcb566edc9ce5e5c
Date: Wed, 01 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735755353
