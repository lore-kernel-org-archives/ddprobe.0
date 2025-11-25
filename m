Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4DE3195FF
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764073974; cv=none; b=EZla9oS9iFnyecb/HSYeRizhKFkb6L/UXzCa/41MPF+Y7jcZs22rU8bIe00yTej2GLj7Cdh9gHPT657fjg3rKXUozv7WidsiCEm+U9dfb0ph+hFCM8nTbqcVohqK0HdxzjyxhPxzpZP0VmwVkYu9h1mVKhJeprW9WRti+STdcT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764073974; c=relaxed/simple;
	bh=awoRrtrj8v4z6WvU7qH7dWMjdQ/WtKHr1IWCtFl5Z/U=;
	h=To:Subject:From:Message-Id:Date; b=MZcqhxXZiqJlmPHipdt+peS0XPCYyMbPiKcsve0RQ3IzkoUxcloPhI0gfh/ve3Hf+I8wkDb0P3bMQ938qdvxveA1Qtf+xzNSNfk7oNJr017EfxP/89gi3SPx3s6OW1dnM0/9iSiIuX39Wv08YSq2zwl+tfOmClGvkOomYG+lW40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ud6LbYp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ud6LbYp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AC8C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764073973;
	bh=awoRrtrj8v4z6WvU7qH7dWMjdQ/WtKHr1IWCtFl5Z/U=;
	h=To:Subject:From:Date:From;
	b=ud6LbYp6OjPvcey4m7nlcYvuowJUmUBEZ31sKEOxCjFe3sMn3yX3ACUP7r8dh6D0Y
	 kwzIRCJHgm2w86Oq5BHYg2Q6DFKdWnY2mT0nfack03/Fq9CO8x4WuRziluD9bROUM4
	 AH/VL4WEbUeAWwfxPQwEVR1ZcrQFYVpXHTkWO2jyiyiMbrp6K7jkqWgpP5VJNW+lJk
	 0HOv5QS2kLwxigmx2QJFATF0UfPbM9QN0sa8P+jH+lDoeG4tz776j4SMS6630i4Ho1
	 RHPGwSmfZaWJ3bViRVrKlgSyCIFNS4NgtaLuvn+Z2JlLC5YrDjru/Hi0iIT7d3EIwr
	 EEKXZhfv176ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA0AD0E6CD
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407397359.339.6350855505153644480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917fa80bfb9ac02c85ab7cbc7da16c513af9b03e1995b472c6ff7a9a0ed8e5ba
Date: Tue, 25 Nov 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764073973
