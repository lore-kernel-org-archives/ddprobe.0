Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A0D238150
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751498394; cv=none; b=DUNXVZxekcDrZ6uQkHu1mdUcWZmN4lJeosBBf/hmTowsc/W7snQa7FrM1IIwmOqvKkn0vZ1XE/w4NQjoA4qVCmrhzXOgEySizlrzcmeZsVZj0t+ZQ9Ifdc3Oxc/YErRxfCAAIDqppyoGFw6KeY1X7mmkgMQBH2ROflIh4be8o0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751498394; c=relaxed/simple;
	bh=Y2klcpBJSTwj7qmq9RUiryAktAm0Rva7fDwqm7kKGXU=;
	h=To:Subject:From:Message-Id:Date; b=p1GQ69cMqmeXgf3irCadKSJAlhzVWS0QFMlZZSnxgwz6eHrK5XEOYugfcRv4EMEgZzrGEM/MbX7FZ8yBrDCGQGkfPHfGnryEDMLMnRzPbowmKy1BxvdGvXlNzArew4z7Qn6KEhL70IAvu9EVplSOT0MuleXFUJvyotnA7Apoepk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ME9uI++l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME9uI++l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0942C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751498393;
	bh=Y2klcpBJSTwj7qmq9RUiryAktAm0Rva7fDwqm7kKGXU=;
	h=To:Subject:From:Date:From;
	b=ME9uI++lI5VufdbW0y1HOSJMCkybInScjJNUNUrK73lKW/cNb525gMcdaDkwGWPM6
	 Xdfg7VMB5APbViY8ZypygiwF4IwUENo6kircCSAfHLWZB/TotzfR40rITkMQ+pwC6p
	 cgM8OneyjPh8Ib4ykout77rzMcju9A+Ea/IMo59SA51xcqhvxBfTjJh3EFIP5AuXfO
	 OK2+dAc7eKAfsJtgG7o4ncilyv4ZXJON/VlaZVGUKG5d4X0f0M7zlN/3kcSwWNAmxM
	 82U6OUJ/ZME2gJPTpMnYRtT9+REiSENLE2LG581kqqSOUeB53Q9/Got27P3jEDBod/
	 VqgCTMfNb/qvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90988C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149839358.19339.10314990526197545944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eede5fb9419f0f1e2526cbea9f87c4d8777427bccc8829c85f9bb6e4faa68be2
Date: Wed, 02 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751498393
