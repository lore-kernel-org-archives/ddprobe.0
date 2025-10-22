Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08816309F1D
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761124195; cv=none; b=T3V3dGi9c9lC+amiYtISQRm/XDh9WhVZERGOFMBybiIWFyPaxeZr/mcJTNU5IEFFxGVGJFieW5PX172gorWLJWSPJYnFpIxSh7vG0chr30cEFZAYqmhWgim/WmvV4qKWipZwSoAx6TP71a67ul9LriKR1mCxIHokDeTU08E8xeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761124195; c=relaxed/simple;
	bh=mcG2WqZaiKhgv4gpHwAq4pFqaSitCedHrIHD6rTjOKU=;
	h=To:Subject:From:Message-Id:Date; b=LlJ9BkCZ/zKfAFQkUlnGUdQj7a7bR48Yin9v/4bcgeTBhDVdPaDU7c1AE/IYmuS8ObmScUru/0KXGtYpWmzSuP/0KzWi5a57Iv9SZ6bgHAi4DINduHidW70GmcoTHLWZm1gpask6YWWXRKsEa2ZttIdMqiu4pLwwPtFIF7QKepA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLcvAaM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLcvAaM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6826C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761124194;
	bh=mcG2WqZaiKhgv4gpHwAq4pFqaSitCedHrIHD6rTjOKU=;
	h=To:Subject:From:Date:From;
	b=NLcvAaM4yV2vJHgENHvFmPLV/WucLvqUiVaNhCGU1WhtKEYbvP4Mg9LVx1N2+jwIv
	 yVjl0XGdp54QDvFouPZkqkwK6OUKcPAmjcsIzuCt3Nq1QJMjx9Q7SOHRkte8vGoRC9
	 LrStzhKplXJswk/jJovXDcstJX4L3kTtqOu6thU3aMTF9/zptwA0ULEY2chw0ksQ8+
	 0nwVVlSmf9w7jEKP89L02ZIIB8osUTkp8jzV/udUV19goH/NueEpJ9Z2n7nX9tKJPs
	 rJVqfUeQ7bdbF4wW0vX+ZZCP3k8ch8Ffrm4ffZ068/qr+Pp4PCxOpL5e1qUxq8DYqn
	 fxNTcY+mwASFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D1CCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112419360.22012.708775004829777677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcd1fcc44fc262a7c8a7c3501722581d2e352e81c3fef9a7bf857f913b273a2
Date: Wed, 22 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761124193
