Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F100115E207
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 13:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715087543; cv=none; b=I63b8HC1K4drXNT9FtayK5LsotnbpMm/t4A70c01T6lGgl3/LCKGiKdBg3lzpHz3a+/2nFcatigiYYXg0JPAhcVO3HfOJnXDoRGYc3KGBhOrtXYklJ5RbETetTD4o0TvSXsf851SvPC0vv5T2t4dXVHC/gnUoecxsPzmq6BYeH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715087543; c=relaxed/simple;
	bh=fLjsmnMOt7obmgdo7w55WcfV1QYXPdcF8bh5A5m71n0=;
	h=To:Subject:From:Message-Id:Date; b=tHSjn6MeKD24P/zgIoqjPFP9+WitrKXnnilKnqOgS6W0QzBrylHAq/n3OUalmnWdaJu+aWKYofCbIukNnP0fbnd2RNKqtJqT+w9jzOl0t5bJpjVNMm1Vdgrrtyn4CgI2CnyFKSTU087sj081IIN7oApr2FYwCuioScxowUGSaY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMzypS0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMzypS0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21C6C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087542;
	bh=fLjsmnMOt7obmgdo7w55WcfV1QYXPdcF8bh5A5m71n0=;
	h=To:Subject:From:Date:From;
	b=tMzypS0pvIr6lUfv7cv4o/27YdpSVFp7CUWM157Bc5Pi2zKaAojAyAgGeV7Xit70G
	 mTYprkCDGzCOSUlYFmH/URZbzwqXeDjDS//YvJPWyWIbATq61afG9QcVcdmdm5QlR9
	 yhJUpYfShuZWdbns7KrgJQhYY9ZK0utkDg6B17dnuNqurOvhazFqt41M/g0TgwPUJx
	 UGucwcRJjMo/c++bdU5k5HeRAbJYZmre24sZ+ZhOB2F0TCz1ngPcZtasAMoCW7FEoc
	 l09CsidG/GWL8XWPIbgo8DeZuPiXG5ejOjDsS2gnYXoDpQVk334ayt1f4TH1KufI5b
	 LgIV83jsrOiKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFA8C25B75
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171508754277.20470.4226750672945136553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6e8b4586ce74f51d6b01ba1c0861950d3e9beef7fc3d9eb81b99fb5b71109b
Date: Tue, 07 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715087542
