Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F0D3557F3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780038754; cv=none; b=VxtV0WeTIWgyyvr0AAlXPiBg10muuenH8K7AYcSzjqzFEqtqAXAdx9F8RDwwV5tkHmGmJ8kksj5i0Y56mtLCaxuwxIwWy5bk4vvDKG+6Faz0hVOAAzA7rz0WawNFidnXE7KQ4DuARp5TN2qDvyWCpewl0gAZ9yhTiR0Pa4tzc4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780038754; c=relaxed/simple;
	bh=FUx7uVekTB9g5XYmpb+/Moei2qSZro6Z9iOWctjX4IU=;
	h=To:Subject:From:Message-Id:Date; b=ZOiS4USIPH9FCfo/u47Ait1LsnKW0L6JEUwGI2IcMP0UKRReBLPFzMwvQrVwCkQdUJLU49oXoh+2YcFM1KvLIiKiSEJutQADyLQu5F0naJgsZpQyyAIHOkXjZ2ocQU8aexlNa+L5gShVHyXTZ3IDZx8EHjSpAeV9lL/9QGFdmeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEtPd3xH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEtPd3xH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70BAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780038753;
	bh=FUx7uVekTB9g5XYmpb+/Moei2qSZro6Z9iOWctjX4IU=;
	h=To:Subject:From:Date:From;
	b=WEtPd3xH1V/rxgB/AHvlHG7IfvqOmbE9CfXveOZgfG9I7EXDXP4ovCNJxIQfusmMB
	 nOXQc+l/MgUg5UTlSWnG0O69LgeoIkf019LrlKNRmC3NEHbGZeYsvdfv/RtQJX6mJ+
	 9pQfoFPL/Hz/F6uCEpVHeWPGFcIgUDDDm2Ko8g56XvDDJAlOO/Kl/BIhA7QdsBFGcY
	 ipUgI7l3ITnoNxuwWYNglUOCZ3v+qHd1jlik9Jp/8iv+nshlCd8tbrOqOGDQUa5Vi3
	 VtvyVMHmsuXQwZ5cIVAL5GsBZ+Y4i7xD9yiC50gasum2fuT3RnitQU2klNdPFH8YTA
	 fXqhyyanetCCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC276CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003875369.13512.13668331175474550972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9389a1525bfcccc509aea2e117bba5cd55d85547d35f35dc33a63e06ea6b3a4
Date: Fri, 29 May 2026 07:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780038753
