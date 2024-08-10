Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3933A1BA
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723289154; cv=none; b=d9pdAH29uKr9xmgx4WbWlz2a//mKX4SotD2hlvceVSUIXrAu8/T6ZzlhoSo1NwXwRDyvwPn8c8800l9TodBi62OZhq/r4JHlC2Hv0fBT6HeZ/MnztJZ8NDSt7t2AXoSXybBlqUToy1ROiWccw0nB94Gc+gESpaeufnOXLKOd64Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723289154; c=relaxed/simple;
	bh=iwykscVBC35CXSqT9XNM4l7QmQ8T5Okz1iwBkelgdm8=;
	h=To:Subject:From:Message-Id:Date; b=ImMCnrWppWs9J7L9/FGNZJeIGM0QybyfJ+D+oKWvLsCMsjYEmqFZAQMdvF20z3ag+NXSMBSwp2XsfYTV3oxwayDpSY8qK9qNyu6N8TNV1OWs7CTbZBI0FAcDFRl4EcBdANwcRsVEnAW5EcmZWzfnsKZOK2vusbh8DUxVJfx/qDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsJ/LyBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsJ/LyBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE4C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723289153;
	bh=iwykscVBC35CXSqT9XNM4l7QmQ8T5Okz1iwBkelgdm8=;
	h=To:Subject:From:Date:From;
	b=dsJ/LyBRdbdpgsQfx/qq+GcR+7h3hYWvnpNPukyrXtdvj/xBFDAXZHMoElj84ecQD
	 NWoYUCIq4y1y71dcESKUL+WqmvKnQRMoLbbb+7KyQphD862BRoZ7uDCF6PP9U6iwUG
	 5GBmhjnPCR00JobVGPLO2WijzBGavPDldZ5CMo70t5Vt7w2vlvB+Pc/zDyV7Gi+4Ph
	 2ILbI/yCNvs23BziAQyk0UX4BdONSZZbaLxsUv0L8yHLI9qIdfQ9RuM1j7CWoL0MMb
	 bIFKI4nB4feSYSg/VXNosF/qwb8zQW5yMvxPwM3I5LTYGRh+qcw3EAwCEDqUvgZe1F
	 n6grXryP2/caw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94546C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172328915359.23184.17137323211826911642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f9b460ce8851e4c27f298bbe9f09c91ad762c70bccfa7df157b585717c5121
Date: Sat, 10 Aug 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723289153
