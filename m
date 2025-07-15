Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352012741A1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752579594; cv=none; b=kyXurkWsQL/37+uD+eb6kUueFcDXJliIJ2fo1WcYiIhnL9W9zfhDSSLKEtjXxSoqq8j6dH9ltQqjc1obbn2+f6omPF+WetYDJ8j6e0hi/9+bri+TtaqxTIqd2W/g+xanRvfwzujQqkaLp8eYTVVfdFR7L+9/IQZt++6f9VgMP2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752579594; c=relaxed/simple;
	bh=fpU9mM0q5Y3KQ4ltu5At1h7NBR27kFhNwv2APMyPn0Q=;
	h=To:Subject:From:Message-Id:Date; b=aNnBuw/DQcVd1e0WNbbm7sYUFsp7V7D7T2ida45wNSHGiV3ZBxe4vDxNLEwLGaddEz9esXHEhK+nmq5iXGf+Sv0wLwcYoRxUzgQRA7QASPbzPDuiZHW/D00AVG4r2bfIOu7DrtaAHuM889ME6xCid6kfHuwZnFlyPaUhofHoATM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dueEvFAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dueEvFAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A4C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752579593;
	bh=fpU9mM0q5Y3KQ4ltu5At1h7NBR27kFhNwv2APMyPn0Q=;
	h=To:Subject:From:Date:From;
	b=dueEvFAszQZ1QJ8GtizBZjgV2ccrps0fnXESuQ+PX6onwLMrsPwq37L6lfaakl8eY
	 dR9ST9z6u6U0GoeGo1F0+R+kd9k9Hpwba/Uft6krB5XegcIuUCByfU7QG5aPAKbcQR
	 5jaq4otCwKVeFUsWI2KaeuBaTsLoPOLG8+s7IhsV+tc/jHaXHXv3Z2F0+uCWVhaJiA
	 5mop4SrxGuKf0xYXv+BoUv3RgC9rVFiIxp4yetjRZOq4YbRXj0uRIk4IifIXCGeULp
	 juk2KHrXGZX5kUc2PNdnfLncMwP911QMAU2Pxz+qEdOT/e1Hr1KlGcqZKNdZcbJ804
	 GS5AhlyNxHSwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B4C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257959357.21812.5832393916846930208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1379251606c4ec0f3920a5050a6a1cddb39e90676bae6138b0b749cb6242a9
Date: Tue, 15 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752579593
