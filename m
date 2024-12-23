Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5B164A
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734925554; cv=none; b=A0KOzSF2GXspa+gcLKO2pd4EwZSGzlDp/ObZKLHa7eX9PzEn9x/40BIKL0AIh95J/Tg4ziO2IXk/qvynKnzhXn/+USve6XYoFAbTnlrbqltIBmdUmo8bE/PKMfSeJvKiPZK4B1GVjCu1VdOLpeTYWIm9CVSUuSOCwqP16wOMtSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734925554; c=relaxed/simple;
	bh=XerM07G/LE76kDOO3xKRrJkLyYQ/A9r9EIVsc51L0fA=;
	h=To:Subject:From:Message-Id:Date; b=saHx7HGnwRfICFtr/Hy+e3PmnDdDHtqejrfVrx1hmoshym5qI+axwS4hg8UaVGo8yELNGJDo/OpmXglJYbZv/l0IrQLap2J0D1aSbsPn/zQvwkpYvKuYCrQwqLx1W8HoHkOvdc60BmXMQn4u05KbIW5im1tbm8Pvam3MEu7UuDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PasyZbvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PasyZbvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D7DC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734925553;
	bh=XerM07G/LE76kDOO3xKRrJkLyYQ/A9r9EIVsc51L0fA=;
	h=To:Subject:From:Date:From;
	b=PasyZbvmy8nbtSD5sTy0zRdwS6a/GfRZzakK5QewUqUNFH4JDoI6ofdQgMiIvX3OH
	 q4SPuTit9zd4+XqgUK7SskP6C23t9owUJG/7qilCJ7kIM3yVXYKj/vuQA9j9xhlUui
	 8pooOEYXBKraPjGTNSBGMSBV1H2C8UKBVnmyrsmNyEASeuA/5T5MeGmnmtUfgdkBhg
	 7umfYIB4rrpF6vkOf9ppUZwMh/qTcs3fWUP9bZJVASiKy+JVBBa3Jp3HYSJPhT/frj
	 f8ERjK0RX3Z691q/EmOoSRczY1jkaUFcUd2A5JZwE1VX/93G31hBURpbDlxNqrJoGv
	 DnsOjfwvmw3Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2DDE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173492555365.9742.12625955110675060679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd78ce669aef69b407cd47aa806ccd528b4ef21caf3e014305d35fc9af00545
Date: Mon, 23 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734925553
