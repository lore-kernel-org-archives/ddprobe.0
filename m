Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238921F5EA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776628654; cv=none; b=rBUk1jSi5Eku9aL46NZ/vO2NGgD2xR7/5eszEH41fVL/o2iLTgkkh35QG3AWAxKNSGzo25M4HqLpsFNjBF6A741ET/RBGiKQxPitawUH040hkygW4lhXPS7HoVfDg2ihlrVDZLfHYsWBRbIlBlvRFtfTfOZDTCby3wjOwtrL/sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776628654; c=relaxed/simple;
	bh=28L42amJyQ+Rs6Vw9BKRxMHeZ1p8vMkKn5dRaZ2ynkg=;
	h=To:Subject:From:Message-Id:Date; b=NvEui5bIiCQNrgXz0UV/jC1GPT+k9YX17d0eHs41XKjRsKmGDZOwMhQMJTxtMb1CUIWdDwMPpfHhBTsxQodRqwvVh5EjFcK/x9xmwjKvsgOWkwcxSiqzU9v67S4KG0GBCHwq+Z2LJ9J8uFPp2044S9yrazzV1KhUgc+AQf1UOek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpEdiC1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpEdiC1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF373C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776628653;
	bh=28L42amJyQ+Rs6Vw9BKRxMHeZ1p8vMkKn5dRaZ2ynkg=;
	h=To:Subject:From:Date:From;
	b=fpEdiC1G+dUhezk4U2Z9jaRqTS4ezXU4VnWUIQKHVCo2RAoPfeBWOtgw0RIt90DMi
	 Qg4U/iRCUzcFT6U+gJruInQtV6YQyqoXvDLFKrt/N8g5IgGQrkpo7wkx3lQk3GC2i9
	 mbbCaN3nOwZO/hdUE6K6kjQXWGj14ZrgPgpQnimm3hWolBoaInNciuT3qC5uvIvgH+
	 moTxr68VznvkmxKbA5vS9zIim9iTG19JOQo3rk9SqVZAZDkGdyqI9ZUUIbU+MJQMgE
	 HnVhFJRG82an/5TncseC35qhL3d7NnhdN5YsYzXywfyjiRdpC+v9cdkEL0l+d9FGTR
	 rfxHVAfIsAx3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA50EA719D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662865369.23326.10552848629034636365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5560b0642965a70d2162179b3ecafe049eb898626bcfd3ad2451ddfdd6d32d61
Date: Sun, 19 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776628653
