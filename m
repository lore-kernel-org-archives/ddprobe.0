Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5762A13D28F
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738997154; cv=none; b=lPBTdwXrDEkEROUCmTbBkMydNOL+YHy1wjPwms93zWyS+R+i35BEoSdC1gyE5NqpsOWUaElXwts4+2fbufKY/aXorJC5ORtFENzE0RScEh2eUi6QTx270vnAhhpST9RP1oxvkedFDnHVTJUYFBr3VzFvrzJJP4jJW4FIWwg3cMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738997154; c=relaxed/simple;
	bh=WDuN8I5q+PzoP5CT16uYH78e6stT56v0b1adxWOXdHg=;
	h=To:Subject:From:Message-Id:Date; b=U/hTaCth50GIDNRo2QGryOlFaADQB0k9HJ1EDLzOJ6Ji5tcGKtNZdi6nDPM6OswkpniUfWQmEwT6kj8+wSUWUVIzsVn9nqY/aIf7XXHHxd/QRB65zB0SWOBPu6wMa3ounwzDAXqLi0HH5LSVZ/RkTHo2nL1PrLO+Q81gBW8rsuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6xz71Wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6xz71Wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97C8C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738997153;
	bh=WDuN8I5q+PzoP5CT16uYH78e6stT56v0b1adxWOXdHg=;
	h=To:Subject:From:Date:From;
	b=I6xz71WmZTe+x3LPIx73z+XBPAzrD706a5Q0grwiHXUd+VLBe+wrEFaQpFkYlyXQE
	 WLKRavwJFr2GnALSNU4LqNPaQH3k4AhnBBptmQKobdp6XdeQwceCOrYtIfpeSZdXjw
	 VWV9TOxJFS/BuctVuHuovTzmTTnEZm9seXMb3gBSZOZiIPfDNjDOVy0myz+mJQRlKg
	 dKrVWAkCfUgLOOXedM5ehdbQ9dAKpE8taIMcV/x2BamcpICQGeWKALH1ut8u2Zdeav
	 InIv7VXLgYMvp5qY3T9v2ZbKH6dczoPBSx38iN3RCRNFpi5fDBp8xzGqOoWiQUrDW8
	 ZAQLG4xiuvosA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2054C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173899715362.16468.10299059375101272075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b251570418b5bd04ed59d8f02f2a7ac682f6057d6eaf7ddf892ec9739142081a
Date: Sat, 08 Feb 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738997153
