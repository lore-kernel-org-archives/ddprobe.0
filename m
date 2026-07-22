Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7B62139C9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784696914; cv=none; b=FLVEUMIvvLlaPXF4XOsjyXVuf0tdqsx0AffFJ3WcXn47GV/1ZgeLITLR7N9ToDujl1cWf0fkd/wcHd/Qyr5wOE2jiJh3Wv4gPDF2adIghnFI7PMki4ym1k18R71wSIGSW2ifzpEZmk0eAfM/TOkmlG8+wTcjRHdNaQsFfXpQE/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784696914; c=relaxed/simple;
	bh=yQUOWttrIzRlbxGKKT+WGk51tOcnJuAUESD9GqAE75Y=;
	h=To:Subject:From:Message-Id:Date; b=Ob7IHMVMrQpH5cSjLY48kV6P4L6Ys7sCf05AqsBa6DViPZafblobusmVDYVA/S5/QvljvCFHZWG+GN7/yrZhXcOUHV97nUhXVX66G6o1WNI7q2x+2MN46jpdaWKb/mk9B2jIis1QqHT9i95IyjZ2CXAeM4wYsdMbToPz3gjkkMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrShceiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrShceiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 642AEC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784696914;
	bh=yQUOWttrIzRlbxGKKT+WGk51tOcnJuAUESD9GqAE75Y=;
	h=To:Subject:From:Date:From;
	b=YrShceiwZQfCf3siD1Ml8+VdarDBbwInGipl7toeRJ2lGqiPwsvtU9adqWoLiho+q
	 7YqAsChTpfBupPPpTz8j6ZOiXHKQoccqK3WPAxq066mh9x2aJQAKTtyu//dtgh07dL
	 /vwp4AqeWqqUQt6EfKsU8WVjlMLID0L537rn/YBbejTilY8JpNl+cEGG5qlqu746PB
	 pPz1yrZoUsJT++mxzrBwbnZVMDIZQ/gLw7UM6aePXlIRQ2tfUe3Co4Usk6w+1zhJiS
	 fSbMOzlzuctcX+i7ElWQjuiVQ787EXWiLqt4UtVr0Rv7rt0kAf7sCse1MI7XpsiRzo
	 ICEAJJ9U+UV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06F7EC44533
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:08:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469691395.9691.18160122264175661673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1f22dd35f57b7c1e5f0a42c3642af58202f1d36444bfd57c2b6e20754a6cb3
Date: Wed, 22 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784696913
