Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B4D38F258
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787257234; cv=none; b=Cbw06rZ+AMYChQHuBnFZCoKbhvygtENJL6zrZ+4T+eJSEqMgnkV5rXYXA0/TJPDAGq2DkNNc2lnkczB0IHNRC8OHGlgl96UPOqVR7IRMU0EqT3t0U3Rmwz39GL02OX8U0Nwvba7QbXBim2OcJRJDAhO+H8Cc6CnKvaGCugRRRaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787257234; c=relaxed/simple;
	bh=D5jxVoSfkhL5axzWhRUKjsUxCS8XshaRBZ8h1RlyE7E=;
	h=To:Subject:From:Message-Id:Date; b=t7IHbHBE5FoBoX/sYid/FLyHTffb3GUT5RESEUqR/47JafE7d/fw8n0np++qh9nrhUSSNo7l59VscSVVv8xdscrTDFQdRQ8F8WbWztqaM05okgluXyauIb709YRyexhQXlhc65rm9dwTokUq77XotYsyPUzmrzG0cIuk0zOr5ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfZBw75D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfZBw75D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27EBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787257233;
	bh=D5jxVoSfkhL5axzWhRUKjsUxCS8XshaRBZ8h1RlyE7E=;
	h=To:Subject:From:Date:From;
	b=jfZBw75DttFiD8OGFUUwRsmmD5UqgjGyn4SkAxbJxw5tOkxFpoPPyue0xNqWFhLp7
	 hmVRiA839VrzslkzZ5gk7iThTmHpRuqI1KHIiNvg6fjCXl/0t9I0lhYbUsovb98jGM
	 g7bmB0iYrGz+C5WZFqqwb4alUh9URcPOoBCTl+g/aiCzbwvqOfcYV+USspabQd8gBV
	 zs9BPFQCFwIAAL2MnVNUcgRAJw1jaN+DoMTzLjMKxG/GEONU8KULdqMTaw/N4HJur9
	 ONF4B1PDrq369FU/RSVFYZaBtBced1qS4s3P9HuNc1Fe0Q2kvM+oD8ManClrmx2g2e
	 6q5+iCla1C+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD10EC5DF86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725723370.30692.15592686961122849851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a79c2cc76c8235b55ad974df125a15d108184e167f67586f39561c34b139de8
Date: Thu, 20 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787257233
