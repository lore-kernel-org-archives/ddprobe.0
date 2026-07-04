Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6928A1AC45D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783195114; cv=none; b=hFpw4qtFFQutNEC4LhzN88NYVPlPW+25fLvBJ2RgAIOhB7YcSOzdKleuXtGb8K7h11eo2z3VjIBDwIQFZJLjhkU1PdghAX5Q0CMXc4uNF8VUYJm35Euu0BLnlbv6iH66yq9ctckIT3Fun6p4IpYxGNJVsnmaXdGTAcDs4wzbLf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783195114; c=relaxed/simple;
	bh=3CvWilAjveu/LfSUricENW/xp2Cmzs0X3bYOmMoi9eg=;
	h=To:Subject:From:Message-Id:Date; b=cbzLdSuVQKzyQr4ruJFvlerDe4NFtyGg2d2dljBZiqJmE8xURAPRPlbiHJVnL1FmlkAs6JfqOnCzvzrY9K0a+Lwem9KQqvnMWWE6LSWwDczTy42I/kYDAptk/Q0APmOocmgJjRkCFAWJGRfv8YbP2rSMWKOeuE3rjd5+aZzdPl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pH9blww8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pH9blww8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9CBC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783195113;
	bh=3CvWilAjveu/LfSUricENW/xp2Cmzs0X3bYOmMoi9eg=;
	h=To:Subject:From:Date:From;
	b=pH9blww85jw7MZs4nzDxFeeWv4VdUjlhoxQH5O5bNgCXnHup8KZKRoM5I13hzxslh
	 AqgjBBe7JF9W0dnEPDd7rxI5UgocpinQ8e1YZkO2MPNmvW/Cr78iprrgswnz2uZ92H
	 Lq1czgimpH7WDWISd1IramaieY/ukBt1olrcbH6vl9d2xb/Nhny6+sXx5XtHfJT4qj
	 ZjiRHMn7zUXryqWq0T2RP9xZ0PabNRV6ISEyaRlj9TVklqLIslTQ8X53RX9Gc3mc4l
	 rwcmsXY0I05evb02vJHmBrGXMUgssD5ZX7zkGIMFz71Z2wzkXofMgvQZ96Jm6+MUdB
	 2MOQz0Y3UKjoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8325C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319511368.26662.9634463359239556688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6be21df7ceb07e89eef81e1fd3e7eb1073797377d2ddb18664e70964101deb
Date: Sat, 04 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783195113
