Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3854F2E6CB8
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785507634; cv=none; b=bvZV+eH/hKqc0cF+tmSXDM2XhMeM3N9PLegE7vkYnqj8LGzDYkxKpGv5FAvKUU2lXpEG7mJqETd65wimp5yJbqASziHckQrLf1qNk0tYKq8EcQv3oHFA2R/n4Hoo8fT12emeO4rTnmwP7n2NrXCOu5PCHIO+zJcrn4gNx11TVKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785507634; c=relaxed/simple;
	bh=8Qgp2X0aGQlUYoX180ZPazxWBjR3qG54LFfH24Ax/p8=;
	h=To:Subject:From:Message-Id:Date; b=ZfOAkuiYIk6+lN9eHGIWRWJzbs8KTIHlGK0nN2pwTq6sdORtMBSz7FXo3cPiU/VBN2qnQDvFWCS2DBbiJe6koSFQNbLBpGfHsoq0/mpc2YsCJU6Saz/WgmeruhoNT82DKfAaFF2W6dgbCtZ0iPhZZeHCWre2skKt/Joulf2xW3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCEfVuCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCEfVuCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEA7C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785507633;
	bh=8Qgp2X0aGQlUYoX180ZPazxWBjR3qG54LFfH24Ax/p8=;
	h=To:Subject:From:Date:From;
	b=uCEfVuCw9qpHlm/FmYugaibhNwVz4rNR031LIBuq1LriXjFoxPDG8A4o/lBFYV2Q8
	 r6GCAS97ssuyzSqo0FA2BGzExdN9ndQKw5rnxy1ru0f8Fo6hW9i3vavEjXJVLVzkWn
	 0pT4n0Vm1oKSuuEoPgcE1tBjF8zjV8Cz7chkxMyFC0F4PCBGgO6ZQLzt6gUCOzbVb5
	 csHKY5xij72EOMpPPZnuiNMZoye67H41actj779csw50HaBG4QQIotrjN1lyg/+g/n
	 oiCzIcrdHu7I8w6V4/l9/raqnvKwdAIBuZiZjPJtRFYi9BoLxkhftIsFVSk4PWUwWI
	 CC4Po+/c18pCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBBAC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550763369.20042.5096544743377788119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b495434ae1724d0173f54c5c89ea55472d4e7a6c726d55db847b146dfc7f41
Date: Fri, 31 Jul 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785507633
