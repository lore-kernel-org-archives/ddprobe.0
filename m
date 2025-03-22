Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40672136E
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742669394; cv=none; b=HTvSX01gZeS10Ct8W7OWho6PrnROLiV03NOCA/WozIQ+IC7j8R5/5PqxZ0pjTFBgVzSYENCO2LiI/RxUG5vEfm6huDNwasaWC/8EhP6IrmzQME35YwM31C7AZ4wsgzXbKr2l7dtO+FGHFhnnkdovilxefDH3HWKeFg9J6y3Lvtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742669394; c=relaxed/simple;
	bh=YXLVOadJpz+SkKDwKyn50p9nIS3frRxYgj7sUTHbfRg=;
	h=To:Subject:From:Message-Id:Date; b=ipPTw81druO7muDd3SiZbYZecJBjCgB4mcjnn03VfLppQW3ofS29h/J7k40qqpxZuUSEEeJBdfsNX1NaLctNF/R7HFohTVBOtre1/nuO2PYB3hlirIJEf6ybhwi6RD18Q0ttMXVF+AwIuY+gPmNmHbFUiu9QP9wTygeIgSl/Gpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTrUJMRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTrUJMRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF77EC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742669393;
	bh=YXLVOadJpz+SkKDwKyn50p9nIS3frRxYgj7sUTHbfRg=;
	h=To:Subject:From:Date:From;
	b=FTrUJMRkMqzoKdIDTDDWcwKagj0A+Akjrgs8qwIKkrDCPShYu6x1xmw+sThRMpfIi
	 5kBljr0iSvBaHTqqInjig95b4cooNAqG6QyIYY/CMxMCZQJ7BewozrVyc55sDpUvzf
	 xY5x0QS9DE/bDdLKfW2kqlgP10wHN0ZU9pH1YWydOvBYmvuDTPUmjIuy4baNEfaLIF
	 wq3sHfjbme80KGeyQ0vjoVgfuObCYX3leFBVdzLCrBrXcvO9Mc+7eOYAH1dbRy2sw8
	 vZrI2giw9t1ix3uf7mh/D00I5JgB/9/6m9Ww83zgH/fW3/6uvCn99BlPAkNBoPWA+e
	 HEWgQtEXCq+ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2DEC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266939362.19525.3163411654039572687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc54f1f41f6ee3923ec78d3e43923cf4c2672ca1a682e2ac747385c9d585562c
Date: Sat, 22 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742669393
