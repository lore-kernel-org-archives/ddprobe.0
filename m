Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFF0345758
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761139794; cv=none; b=fuLVCpUcPsNIfTcElxa7YR1yN0PuGzkBP+RRaPKB6scO10ATdijOYd+WEPwjR0vd8hV8iM+nLAbYoBUFWbzb+NWdxhzAtfpiKKAJ4E0drEGb8CcgYhTK3rEZtcuUeGFFwvBgYQx/K6b8j1azSte6DJ5Vzp9gURMXnqnnp9Jg/r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761139794; c=relaxed/simple;
	bh=4vGWDueort4ceM34Y89HWeeFKVwNLRxDfuk5prpzs54=;
	h=To:Subject:From:Message-Id:Date; b=HR0OXzISF0wuuSoV1Rn9PMg1XNcHapiuFe5UcvdECmJlY4jCSOGXRfoPJOkYzQIiuw8CBpC4MzHZ4ug/dSocYrcutFAk8ehMQs3QIKGnkz+1QW2TLH0ZKy0nB8tAnVngTVI3yuPGP6wBY0fV56ost5mUNGDq8rlQ1TI5DBxMHW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TofpA0ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TofpA0ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBC1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761139793;
	bh=4vGWDueort4ceM34Y89HWeeFKVwNLRxDfuk5prpzs54=;
	h=To:Subject:From:Date:From;
	b=TofpA0llaltV7QdvaqqJpn6QZhxA57M4Uu+YO6gepkz/m29fHcET2YbBI4w9Eic6E
	 TCf8mv7/7TsESJS4Ro2HmcPIlF4tVVm6jFZrcO8o4ThY0OHn7h3QF9lF6ozta0magD
	 fYS7WUmqAK7RZifd1FD16AIYCHnBBkrR5Zu4F9/EYQRBfnGeRojkv3ARwOnRxWVtLS
	 EOqrWgTQkM41AZWqRSYjZTdl2IXm1jrJUAq2LpqpUIxx01G2YBgBL18Z1k8lMbaYFK
	 J/qu+o+DbaUEGIb/amPZPRn5tp7rQLe7Vdv+DrLazQj63qNDVLCxLUg6P9E/fKfsf+
	 wp130GLpnroKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA9CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113979357.16142.1109551340936005724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9219b7d6014b38d99b35855c3455cdc063a80353b55a319b8c8767cd41852bf9
Date: Wed, 22 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761139793
