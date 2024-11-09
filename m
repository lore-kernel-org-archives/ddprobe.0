Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B59233D73
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731141954; cv=none; b=ksXRes7k46rnB9KB3TIGPqXX8Hh8a3M2R1gYId2906AnIYDW18lkuyOP3uvmZtlLXTc3TdofDqS6Vudj2f1rgDMDPa/PwBL/ke66NixqbfOAbNA4WFsV8JBpUP7KdwY09f2q70F6TC5s/e4Vc/FtKuqmLPNGsIE7KR0h/5Q5beY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731141954; c=relaxed/simple;
	bh=lOZKk1QWKV6aJTdgW5kZ/J7xbHFr7pwxBjpKTtWKuts=;
	h=To:Subject:From:Message-Id:Date; b=gdemUOdlcWoVY3uK+mW6KbTSvdm/XA0aZ0xyX319mz1qTc4eLAkmEweZcBacY14eDM0LL5tzK0Co8iNvJ4Db1Mww36mIlUEziD5uDOuELHmWJ/ZUp8vbVG2ofgqOsC/bDH8hbSfG8b/cOEb8kPxL/cxYeTgw19chYgzBC+r5rMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNhSu7SU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNhSu7SU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F4FC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731141953;
	bh=lOZKk1QWKV6aJTdgW5kZ/J7xbHFr7pwxBjpKTtWKuts=;
	h=To:Subject:From:Date:From;
	b=BNhSu7SU07ccyxlISZ1cEkxAo/HwlfLxLKnM+IZu8M1939YcHDbnhRglXLtMnZoBM
	 EdCg2ZcG6lUuf/o52Htqu4SHNjyDnDRPaeZ1HRvfCwaTV2X2TDf8TcznmTLYc8ALnw
	 Fs3DiF1sIWHrSws0geRu2Ve+dLZjheXDdZmOs/T92qJq4T8x2zrqodEhAKdjooPMhb
	 Ootan9Teol5dkNGrLBBJRUy9weB1enx3HOwwQQm/Rpf5on4GFMV+5Uip65Hb4GNM/X
	 KRa3mIbqj5c7DXqFoSZgcvhIq0lyoGaYHonfqqBObj9yPT5Tvi4NIiD7a1eJIuV44i
	 HaQtWVy4oXlxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E50D5E123
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173114195357.26811.17016537902642336024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4449014915258728943db5121a8782ce03b07cf0a6eb49e4805032cdc03c9b32
Date: Sat, 09 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731141953
