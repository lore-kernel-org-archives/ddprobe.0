Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345FD173
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745719194; cv=none; b=e3shDp9m61HDs8vZdB9hHUZzUwrBInXhxKD+t+eInVYQr3iza2ry+P/riqSHhOypNpLVo2ypCjXaCLaXKvquyfThn4p9m0Sm8P9A6h26cWRf06YbXOHVbPDLqcpQrD4uQLZPQ5LJxB15y+r5CPGfL0bCHHxYys042OetnH9Gt10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745719194; c=relaxed/simple;
	bh=9EF0aM1wCqaWM8BBXJZlj9t2978oy9Il6iF06/TEfYM=;
	h=To:Subject:From:Message-Id:Date; b=Bp3MYztqmt+5/C5SzBoFyKmwOPgKwoz5TD0SvXDViD/UZDAnE+ULoRhC3Zb7qesUBUzn76vgOfaPn7W7qszlLbsFRaceOyPyPkaItcM+U7HsZzXwv82jKTUJTymgEw9/jTAd24lMYNUxidCh7dgYKNjlnuDRCBKxJsBAq1+Ggec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LirjbRG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LirjbRG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02D6C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745719193;
	bh=9EF0aM1wCqaWM8BBXJZlj9t2978oy9Il6iF06/TEfYM=;
	h=To:Subject:From:Date:From;
	b=LirjbRG4AsftEdM5IW8dWWgiIsIn6rCPAkFCsZPPWTaS3JRgSHO/7xs27oqBg0M+b
	 uL9QjQVtfSycAyjI7lIUGYhavDlNS6vtq+U5Y+AePycuyden/5060oeKMp81gqlfFN
	 xiInJk+Mcuv56eprvD1jkDFz5C/PBFslTmcPH4jzIIs43Fmoop3vru1M6EtTaPlIxq
	 jNVC+T7aIoeWbR1Kxj9qt7e9deiICm66oI0y0AeT4wmtGCwPNA1jMYLtJvJGwlago9
	 f+YdfQYD6Oj48V09UwKXblbo9+KY0l2LrPnnIUfDVyeZjwbn/CsswQFdlrC/1clZKg
	 5vsQCv1yhuJlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB3AC369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571919357.17436.6186515370156409085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbecadc7d3eea76d3c7960fa8ff0d14d949460939bddb7a48b17169a302914d
Date: Sun, 27 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745719193
