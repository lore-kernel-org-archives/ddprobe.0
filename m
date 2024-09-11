Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7B85FDA7
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726050354; cv=none; b=T0cN9/Yvm3wTuQDCo7v8f5RCvH7+nJHMtcYZ/aCHr2W6dUoWTIk8iQ4fmFKvG6cHG0H81VG1LFBUpK1v96h6WImyXEaMeq/Udx/9NW3buZ8oJ1yvpjExSdAvtIdvJtx0P5gmFI652s23hMSCJpH/twEzMPSWrF9pKPgXwBuI3XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726050354; c=relaxed/simple;
	bh=c870IBzGHBMx0Wjr4CX/wWn0ihb0oBZI38q3awMh8fw=;
	h=To:Subject:From:Message-Id:Date; b=p1CwJ/E7WU8FL1dBPa3soksCvDgEbJHKi22zVnivxpFUfi249O6xuusLH8WU1d31gg6h5nzcy5k2EdxCNeeR8/PUE0b6kt9jMZRUkYds3gN4uOIjVLiANx5Q8Wg0o3Tl+INRmJLxQUoaZTzHFKxzk8A26TVao5+1HB2YpQXPk58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVb8brFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVb8brFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C1DC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726050353;
	bh=c870IBzGHBMx0Wjr4CX/wWn0ihb0oBZI38q3awMh8fw=;
	h=To:Subject:From:Date:From;
	b=gVb8brFBmUuoPkYc8N8o5toijM9ZjpXbo83RdkyQEiLY/TGB9C2xEkvo8Js8ubRP+
	 8ty5EmkQ73eEi0X6+QakpvuNMJEUEj7ohBdX+hPOUXxXWido129mpVBiVQgtF1PgRE
	 PCk+oqepeEpR/qrV4GU7cqBCi0jIXF1yrL34lOuOAc4fmtHSRic5TAM0VqmUrFEVlQ
	 smse671qzz+wVIYOLp6Qo2vJc+a+yGoR4FazwhgBz/MB3xCFNOfU34VLUtZZhcz1A0
	 Rigi6Y4y7daZ9pNK8tPaE7tEKqrjGyIz3NJnVPka9s8amFLJL/OSZrNR1TTWYzsfya
	 sVUYrOC2bQJRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9343CEE498F
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605035359.17124.6981555970034633817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9663ea8b1676c322799a9aa2e4316d4e771c00afe5e2a0c56b5bdf8eaf44fd3
Date: Wed, 11 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726050353
