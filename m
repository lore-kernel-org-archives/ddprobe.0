Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DA83101CD
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771253094; cv=none; b=j3+tNaOp5rAENXzvS0klJz/zFFtV8b5LHZPDsn7zo8X7vnPyGo/BQ85drwmmwmAJY4KOrEt6as3l8dUWTu5Cii7P328Kd9iVaOCc/7To77+yIKHT2dKd2LrODcntuSX2aIYSEvScM3r0HMXcBm6trgU3wqWgkNInWsZo54K5XYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771253094; c=relaxed/simple;
	bh=QESKvE1Qlbv23Jd0mZVjWcWxnJru1NbGPrBzN0Lm788=;
	h=To:Subject:From:Message-Id:Date; b=PN5A+tuB6NDOzYXHzXRuC+N7/ZfXeZQatLzt97EQkaqZrjvWk3xXGTlogTQa4fvcJJJLvTQRaE9Or2FoF7faATs6v85dbP6yXtaaxk4Rb3/C7LHzJiMdcFLiMo+SPNCvwqngqLAH0jLASz398UEJ89nJ1Yc3xYuKWlmbceJhuOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7jvNpjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7jvNpjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1BBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771253093;
	bh=QESKvE1Qlbv23Jd0mZVjWcWxnJru1NbGPrBzN0Lm788=;
	h=To:Subject:From:Date:From;
	b=F7jvNpjrkaP58dyul0k1cXpKOgDhwgsUa/vqWnNKEU/MGFTDM0I0eooSUIP8OPZ4n
	 Bj6vIi2LtynR2DSl/AHqwCKSEwob7pIqPsag94CFrZeEX6bjiyAvTj9OZavcp4vkVh
	 G4b2xf1iE5WcslqzsFZgHKXTY2t+TVkqce+3vjyqNdDqHtyx9ekNGbjkdmuSy4cbZx
	 WvcHuNlsagNgFoGHYeM9aRZXmNxWldMbGv1ZC85i7k6D33NH4TKbkd8adZy29uxHLE
	 z+1ADIwcAePkp5LHBQ2NPu0Oeko2r37KbDLV2a0K7FV6AqTLXUFrPzTjsxpysKT4ms
	 cPGzkl6pFf09A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96432E81A2E
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125309360.14907.7358982389468753174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0def95c6579aea4253482c68528f2d0399866deab5d2084c71d02b77d6fafd89
Date: Mon, 16 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771253093
