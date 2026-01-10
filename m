Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B262153FB
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768087434; cv=none; b=baRSV08xxLExKt7v4wDLGpYM81x0ex1aR/ZdM5rwIAqtFjcz928M2TQrQel2xbM9g84Si5oTYGlRdkLXgAg52dd19+NskfztFbBgLaDHfW9sI1SeSOtl1P6xGSfKF8HX5xB15/RLw1vguSXUOnDcRI6D2Ce97yvWq1NAk4X9gX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768087434; c=relaxed/simple;
	bh=9HXv7qWZPP8ZpiT21ULU7NCjJjiMkqnaPwig/Tds5ds=;
	h=To:Subject:From:Message-Id:Date; b=OvqdU6zw53URhLcSu65540M2hUaPPVgLpQW2MK78TAWfIh6rKv11p3p36e9t3jUBvaK/I5r4x67kCfuKaHqSgrwipzdzkitL4Ab0g/j7ta4ns95KtD9ApAfEiJInzaGoBUvuaUKMBd/CYwsMVfXBTe3GanRaMExo5dLkhs9Foh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/eXCC8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/eXCC8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0873C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768087433;
	bh=9HXv7qWZPP8ZpiT21ULU7NCjJjiMkqnaPwig/Tds5ds=;
	h=To:Subject:From:Date:From;
	b=Z/eXCC8eZdApykzrbx7YKkllAybZ0+mwVmikqgS5ucxOmHgjLIZKa0ISDwzZD+cJq
	 h7g3XrSCP/6bfz1QzcDSHlZDkkt/TnTfUo+CpmsEtVRhVspzGBXevfqrvlKZddk8L7
	 QpN0g5ABA5VbySpz2qLyJs5/7qS3QjxaUDl4C2UMDA3cOc2RNSIUeLpr9LQe5yK6aU
	 c8DFFk9/4WdcUwEOAQ1mloU40abOcjC4VuL5DT3Gv0uwGMx144K+p/2loV5TwaLjYY
	 uAB+UZ2JKihy/LASKR/yjbcx5yYCDIp9X4qBlIgXoQYTmyNlo/PcsxWxDeWzi+GYUG
	 99/kXKnoG+SmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F759D2502C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808743358.9925.249728669446059218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d71acca72ee2bb783e4220c5393b6350357d642c8bb8cd1c36b6bfbc14b2a3e3
Date: Sat, 10 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768087433
