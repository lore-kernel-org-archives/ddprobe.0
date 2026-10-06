Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1B522425B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791265834; cv=none; b=LFjHAgiXM5o1ov/txDCQN3p/UdzJZRaqfQTqp84512ykmsBBnz9ptHwPzXoZhBLwriRU2lUiOGDuNA13zZFCryeRRpV1ISNIU1t/cFiRRHRW6E24fGbwJXRb+MaSo+35gR5Kdquin8pudrxCI/55XFljX3JT0H3z2h5ZjWee63g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791265834; c=relaxed/simple;
	bh=4zeg7u+QhC2oYEL/huqpiS1URA8HXAPEN8ApvpBkZyg=;
	h=To:Subject:From:Message-Id:Date; b=jo5nEGrM3GNYgQhUiILujL8YEmOAZSDkHrzLiBOBj47+hN8qwAMjs7d2cn0muB3/GaNamgPfsN/654r8s+9dA5B4jU2xQP6uLMX48C/T4/mCLPlvitDCSjtcxs9MDPIDU8RH1ghiRzZqlyXNYsXPWEgk8D9hs0Seu+L9Sfiqi5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLVtMq9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLVtMq9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6DFFC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791265833;
	bh=4zeg7u+QhC2oYEL/huqpiS1URA8HXAPEN8ApvpBkZyg=;
	h=To:Subject:From:Date:From;
	b=CLVtMq9EWgvjwO/eOmX9uk38tXWDA3+0A5jtckIk6Sa2MuKQJ4bq97BXyTQdS1rVa
	 bZF3wWa+FCn+7HRnCeAVbYw9fWMZ/c6FEKUPQ7K/oTiybsJyLfU8A/tqKxlqXixMq6
	 NdP6DsW5R+i9CW+gB/Befdyfkzm8nyMk+llUUXs2etAxnDV4YsWuOTEJIPO3iW9H7G
	 m1AvuvWF+Wv2xeMKpXdIaaFAt0z2hLWyfMRLHpHAvUBmProNDDUbI7rsH3LPLZmNtc
	 HX9Rd/Trd0o5gCNIpO8T8i1iZhb78Uf0DUY81zEhMZnYxNERNNg+3/l1M9uT5JHxa/
	 aeiiKrbahyn2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD888CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126583368.5367.240392898296181786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6afc24c36c510f44f27dd28813175e83c0902e0e3773a7e8a61372b42708034c
Date: Tue, 06 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791265833
