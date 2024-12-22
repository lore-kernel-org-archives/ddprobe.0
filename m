Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07C2AF1D
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734843354; cv=none; b=soS5oWXhahzwZ1jaDjH//bDYnpjzg/1Pav/xGRkllMuYirxwPBfi90aH0tBp2qG4TnIO1+Ba/xOWhYrlY1Xycnn/egnob212AbplutYIN1SS7nM6aPYDq2JuOa+MIT7GMWJ63YIInFuheticuI1LdBZZsrPIEh8bM4dg/g/uK88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734843354; c=relaxed/simple;
	bh=t2hxpxzqjVGewLyMrmwJGmiHa7HBNT9fylCjDGWYl+g=;
	h=To:Subject:From:Message-Id:Date; b=sQOBB952pwnmZ6ShxJxzHXR7s6krYKkIPvbmd7La5MLWq9k5SrPM2Gbd/WIWjF42LY3IdofJ2hLDmrEDzmKFdnPqexzy8gzIOIwFY17b+9vOIJyhGkRzn7FheI1esJ2aPYfSDuAxOAqxxbVUrFs38EnB7g9ROe4jpJrgjXo4qmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dv4WmdAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dv4WmdAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA033C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734843353;
	bh=t2hxpxzqjVGewLyMrmwJGmiHa7HBNT9fylCjDGWYl+g=;
	h=To:Subject:From:Date:From;
	b=dv4WmdAutlErxTRmUIJWj9eLq2TvcPgpByNk6X4lpdeUdIOETZ4G7iGM5Bz0bbLLc
	 R18NF49Kfp+fbYemEHBhZrFXlqkDQy0a93Mo6UEEiffIytbKThUvgRhfkOTAkCqP5O
	 w2Gfo6qZ/FJ10LMEpSFvWp6+J3IWNOBQObrEMS+QYjesF70VoKLKKlE+eyd6QYD3W2
	 QfNyi42NaXGpNtzdI/7gYpKgauZggql+nNf3gMQ0bjmP4O4wtGNamG5qixZgW1+t2S
	 HT8EEEgpng3FHSrKws0fHOGa9cw1zyOYtQyU1OyVETGBx1/SSvZl3om1SV071G8Rsg
	 nfiEBnnNpCk7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F93E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484335358.23844.9941264458060977009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fed44617b363fee499ff2be4900339eaeb4a1e8a75f433956d4028e6dba6b9
Date: Sun, 22 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734843353
