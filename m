Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889D528C2D6
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750427994; cv=none; b=Vn4mqFyG+5BZEXcI9KNdP3lJB7RV5zl7hszY/nQsabxQLEYdWrtmfrupK1pkijgAz1wG70k/rsW82pXjx97Phb352D4pQufRgeCGj37zDej6rKGOEnU05hTQESWzxG1AXiFGekSRDVl6KMcyvMdn7yk002+Jb0td+PRCTqM8ZLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750427994; c=relaxed/simple;
	bh=RTaQoEDZEkBNcFzElOFoul9IQ4RTbnNMkVtzm5QAz4M=;
	h=To:Subject:From:Message-Id:Date; b=igVUf8X3hFBueywR0V2D/o6cohMBFX/QCj2+HT+sP+xxdB0qAcCjdTRub/3hesA0ZBOPTavM2kmw6h2DSHLmILqwBP/JPkShbaWXRVNnIhdQj/NachetOSnh0V/bSlEndrrzsG0e4KEeH2Tld6wjDp2IFqViogI5dAG0JpMPGXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4By7Y/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4By7Y/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750427993;
	bh=RTaQoEDZEkBNcFzElOFoul9IQ4RTbnNMkVtzm5QAz4M=;
	h=To:Subject:From:Date:From;
	b=n4By7Y/ol1AmiEj60kivSwN5AGVa76FPwh/bMedHjf3GTT1THv7x+7GuTHdhd0IId
	 CB++sinJPMWqx6FZ0Md8AgBVDT/CRomTlQDqY3WEyy+ad07nl/0KYm3eBnJ6cAlli8
	 cO3f4G43LugTWyPHfZ8IqEMk4Ih7EtsBWiXp7Glq8SGjfgNFXgL4QTlUFLGHB2gG/l
	 bPIU4QL7T8ykJEplGCpHHnlGgzPoOLTygtBt/J9dJlRbzAcXwCpSoJgUzIlqCAiLxe
	 aHRkTgH95EEZhzq5dQpox69C4WZ62l2pcj3nTQlsXlsak1O74486XR5QlNfN5Zprvx
	 GxIoFMy1GI5iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E602C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042799357.6340.10299807052569928231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82bc82c7ba2226b27e7c193427642db08833c6f06c02167b00db30d5a1134724
Date: Fri, 20 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750427993
