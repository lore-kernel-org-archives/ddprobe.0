Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AAC1A76D1
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733006154; cv=none; b=mROVzCxq77LiQ0QOunwNVCr2cGcwKO9ujuisBVyr7nligq6DaTv4KrPsuP5Y0BNWeDAl3gRHvgWgiKcj6pxL/Tc1/TpbTtnFH5t8F9VGGDc6l6diPyBwxg9pyxcOIIEjBpPsXO5rH2lkxcGvyfHFBN2G58tEwgi9Xnd/5GIewfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733006154; c=relaxed/simple;
	bh=VZpKTkBBWd/fBjP90AhmE9mnQMfnJSZilD3yJcFJbN0=;
	h=To:Subject:From:Message-Id:Date; b=W+vO4jLzaRhmlv/H/ajS6uN4PAIQMPZXiCGUTcoq9vDsupxrCs//sZgiqNrMik+z8rOlioPWi2RCEjMLntscYXublsfTR5zCySbdX3zY75hzZOlALJcpFC9IvleEySvJnaaVTkDSjazqARESo6b30TgXYleqAx162UjXDvom6oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCvfiXzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCvfiXzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6D0C4CED8
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733006153;
	bh=VZpKTkBBWd/fBjP90AhmE9mnQMfnJSZilD3yJcFJbN0=;
	h=To:Subject:From:Date:From;
	b=XCvfiXzgFaUtU8aR8oA6P43aZOzxrQexquyciF8xsGmddk9SMeAFsx3BTGpOtdLl9
	 TgTQeVKiEHnbdjXm6zg/a7nXtTXPAjvmB8uCzMklvxSzvduBCnz6Sc02tv4ShHcvr5
	 aYg1kec5zO8EMU9O2dKGKUh1XhWhejyuCdTwa3aqYCi/4hRMlrl0td7+CCL59sGLzR
	 sIGIB/RNJgrW6Tfi6PlaCtXQUtqTDJe1XmISK99kYmrvqsFOBARsYKFlNq78Gl7ZbQ
	 f/g8f3YTT5b2Oegj3vQx6lKc0vewOyFrGR0CD8ch2lGf9HRFjLloGsFOuPbxG8uBEf
	 +cil5OLKUJEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE2D7360E
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173300615358.12023.9117127435803687018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f870e7d9248f19878ee4947b8938bc12ca0ce4825d7d606093085c948f9c14f9
Date: Sat, 30 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733006153
