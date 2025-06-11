Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD86213224
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749662394; cv=none; b=MEYwm07ZsXdoL5dc1APcA5QtsXJ8Zkkx0iAhTXLnl6pjMfXbLus5UxzE+M/vVxl0aCivDtBdad/xeU5PoMmzoZ++wEm5XX5FlscPVJbPw9ZeRgAOZyFv4DEClrnY/SPzD8syIHS/Bk7ZywQiXgANX1AMonuet3WRsRWjz56KTfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749662394; c=relaxed/simple;
	bh=ZOxt27RpJSsPEhoMUq1wXiUEMX0+8CIN9qPB2yieIsA=;
	h=To:Subject:From:Message-Id:Date; b=cDDiCUmnpvRVXjFNQmVSe8aWWz0ert3pJbTmbkw89hQIltUZzE8/89zqzsERp3aALSQ2TiQIMrKzusNhCQMKuSnHahv1PBJj1p8QttT53DASmZAkg7q42YDi74PU0r7Mo5HwNQeAGyQfsQl1yy0CUkRuwC4ndgRqdeIG4476xCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCegeIES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCegeIES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9664DC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749662393;
	bh=ZOxt27RpJSsPEhoMUq1wXiUEMX0+8CIN9qPB2yieIsA=;
	h=To:Subject:From:Date:From;
	b=OCegeIESfupM0On6epX9xCQOPtJuYJGXwZKQUJ2R+EscrxCvdYKhAfb7uDYpgaHDJ
	 QIzrsFvCSvdGOqIDJvocs/GWeeUwIc3xSzZawYi9PIMh8YSltSv3lnBscHBCBPK7/X
	 4HT0DAh3AanBnHNu1eR4DVbpJIAnUd0dKwHor5RUWJYIqJjsc/BEflhk1hwP9OsxQf
	 mXBg1FwnLd59Ef9ycjlpXlDaPNMLhfAYVqbWMto4VgQwDM57AQ7e+8bcP5F4atrXKJ
	 +NFu7iGxxpPEU+Oe/ZAUeEij9+QAzd3TkODPpFcO+QD7VmIYZ6AObn6mUdVcBkVc1Y
	 iz29XHhS3tQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E4C7113E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966239358.17250.6001460796883347939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbfc2f856be4855d02f2eb8a9f1ebc28c4557cfde37d6ca009543d4b1d175d30
Date: Wed, 11 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749662393
