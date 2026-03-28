Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2771448E0
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774664694; cv=none; b=jI8yDBXzaRQYOx7uGCzU2tP/O0jttJmn7HsphDhlTGQLyqr6NYE4BIEmvC/COFhD4mmgJezgAMMrGv5I13uHwI/QOY7Xf4QuqyOs3fg1WqQKwEbuv99Arpi8+fLDl4W50HruG/2CT8t/TuyWLAlftFU0DeQoa2lU+k8Dmj7vIv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774664694; c=relaxed/simple;
	bh=yM+acnoyPQOw7yku7F34kBkms2ahrv+OabjmQWVuikM=;
	h=To:Subject:From:Message-Id:Date; b=MNRpWvRLHwInQw5V5Yamp5YJjqz1B+yYUQm54iyqn+wc4ooTst3nLwox3qykG+lTwB+noCkIx/dY0INMEgMRe1rqfOAqVAQR96EytWBEYN5WURh3ITvKw+6oSmZMUKiUcEPFjlOeNXXvjgTWGgYiafczY7q1XmFL3Y6vPFumqLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUOPnAXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUOPnAXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F85C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774664693;
	bh=yM+acnoyPQOw7yku7F34kBkms2ahrv+OabjmQWVuikM=;
	h=To:Subject:From:Date:From;
	b=QUOPnAXGd5agB/Db06BSMUHs7pBjlhsfW0bOMvwaqa79qUaOMngN8lqfTpGsk+MPT
	 yPNp4Wr2OtoAcS4ArtSHIQ4D57ZZSPmFDl8nFEBzpDO0qzNEv3Td/p+P+Sy4SJUe4t
	 oimP7rw169v35g+gyFQLMlKCLeMQWmCezhpcfJES22ZLwp0mq4mLfo2EPcsA88UkZ9
	 OO8xlN0WPvKrnRFVB2FbQ0yO1AUM798cTng24hrPuvdJ3geWVEaXNnKtD0O4Ock2jm
	 OFKEB1ffvqnPuvJsZDtpEUnQu3LgnA6dNgWRGSjEfz86B2GZyDKgtk9wu/L14fky/H
	 MOw9j0/qxItEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968F910F3DC8
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466469358.12701.94337531739904441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e74e5e51d1e4ded7ee8e962728b6299b473e5de58a429db34f08d87ff9dbab
Date: Sat, 28 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774664693
