Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6544328690
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782613114; cv=none; b=hF6tR0J337c/cnkKoQjF0GErU7DME8OZr6l7kySkCCW92iFFloHQom/JshgWGQeggwrCRM8UHjcm/cktQZaONmzkgtPT9WVNZIflcoZz27gaaPP3WMVYN/S1uN5BRURUmB2spYE/UTR4fKFtK45aybZ7vL+XoCq2+gEqDzg9RLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782613114; c=relaxed/simple;
	bh=XjAlhjrpsC1x5N39Ql168s/8Dnt0Rs+y6POlb2ElUJg=;
	h=To:Subject:From:Message-Id:Date; b=AjoBN7ujveXAyEFBYY8KPXel20UPVWJ1gKpJH+ydYVmlqUUjfPwQJgTdUoSkjp/kxypXPMfu0KdZN094Ktz54XRin7x2pv63GB8VzRrzlo6JmdqZJv7xv5dCY0/RgUQdiNwFR+H5m8uuJk+O5mLGN7N8MQALt+O3Ajl51hDBGXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elQW/zmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elQW/zmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2ECC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782613113;
	bh=XjAlhjrpsC1x5N39Ql168s/8Dnt0Rs+y6POlb2ElUJg=;
	h=To:Subject:From:Date:From;
	b=elQW/zmU4yLQIcZYF6WhKmFIiSTbrfjx6DvIFM0vgjEtajMtnrs3U510/hXTBEP36
	 iB7DqtiEGT6WyLDXOqHbUE6BzsLRmFI7G8LY7kVtn3HzABOMIarH8vGFIr6qwbsREc
	 /ZqG7ZKZXoLBYLdFo7JfByun0y2N1RHu73MP4JEp26Xdy3rPp3GKHHTO5RvAjmW1bT
	 mRK7/+ET+GulQt15kc/dKJATqm0IpGc7Oh3vVM1UHUuguYm4k7LQ0BZd3oh+bkGvfY
	 P/l87r6FOQXdzxxcqwzrtu6TW0LyxfSmBoNI82cUNYEilxBC3u1RFmNfDC2Yx0T8/k
	 0APRzNmumslgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B099FC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261311369.12157.8966098751939515731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea19bd9ef7e487a3bc3060b76254b12b4122a46d21e458268f6f174dba3f2b6
Date: Sun, 28 Jun 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782613113
