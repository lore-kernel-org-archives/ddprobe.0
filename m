Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2C91D2784
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730893554; cv=none; b=myHzSk5pxT/FGiTVJgGzE5ymOnU82LoXpIRF0xvfuUc6Ypxfgl5yh3xj2vXPO2MwXV/oByST7SVNm/R5pm8qFQwzQGsYL9YPbWwbUW7+qZyAOA37Vj9gRLeDbOJrJgtA0x6kmpR8l6MpCzJKwZIocwVgPvBlOHAttQD08xj9J0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730893554; c=relaxed/simple;
	bh=TLnSXowfl6ewkTJn32f+YxCLGzCFOGlklnb7ZG71WX4=;
	h=To:Subject:From:Message-Id:Date; b=AWd2U8yA+ebLfAjowX7koXUDTFai9AJR+1OaJCb9FG7us8hkR1iwwAuYpSX2tzGaNHTehDkjHeBXyCEwqv2BmIT4NsSMs2/n6iqgdD23YK1UF9QT8UyXzXQ6+904TmT/fG71f0vR8GBYPZzHy4J5UmsqR8LCTdZXCGD7uV06MIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOhfcCbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOhfcCbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF770C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730893553;
	bh=TLnSXowfl6ewkTJn32f+YxCLGzCFOGlklnb7ZG71WX4=;
	h=To:Subject:From:Date:From;
	b=HOhfcCbQTRK3jnmI2otj0kE6PgH3B0dLgzWvdpFSKjL7UkVGf7kDtG4qZPs/QoTdk
	 VW1le9zx1tHFtJ23gYJXX8InJiiaBbe7ym11je6RoV9RlJ40qZOxcuhF/W6WMqm7dE
	 WuVg0LxqX0zF8PLvY37CCHDGWgdQunOhvQO1F9sGFGxxbCQDJICXVlR4dIMsP+jFgS
	 SsYDPF5kptxm2GAQoMfwtb6awKFNIqdwmLMyHgCarw/PxfLZlNQKW4QIxEqzeDuNYB
	 ceI69hew1sDdJPwZVkWtVHkIN04zifarN9d56ktFGORHFBZA/2Gba8Pp7tcPLmmmbr
	 srz3PP0F4JUDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0B4D44D53
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173089355363.9036.906485285389202465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63221931667914b9b190e7f50f768386e5d204190869363891cf546f95c93a9
Date: Wed, 06 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730893553
