Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C71E19F137
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759793394; cv=none; b=ii3P+hk5ebXUQtdbK+37a3zVVNwN2OM3tMPbSRi8z5iJatwCMjPnYplrXX4XTEnZj3YUcWn9xbez0axmURe+F9F5ILYO5dwR3yMn/AAg00MQj7UHxdNLuwXCYL6wzQzOOfMIBzTClLBTNTDyHoUDT1nrqbj580NGIypdUBpZ+i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759793394; c=relaxed/simple;
	bh=NRxromsztoNm0fGVxLQEMlFijaiNGqt+T+UiOh+c0EI=;
	h=To:Subject:From:Message-Id:Date; b=ekOG+n5N7esu871FTcOteeexWKNenmPpTt1onsOPJqeR3GvL2AuEEgVgr3A7QGieya+fMVdYIj57t7zT0ggDeLPSkmWk1NoWlTyrMXyvLNFVm6tiksRZQTi6dtU/drEfwwO2AOg/0GSeZZ/e8FEgbyi8i66tYsk4Itf5yxuTnV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqRty1DZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqRty1DZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E8AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759793393;
	bh=NRxromsztoNm0fGVxLQEMlFijaiNGqt+T+UiOh+c0EI=;
	h=To:Subject:From:Date:From;
	b=OqRty1DZbRyMQJxMdaRXyaFAst5JmOTEduimu/WLzesVC8Ex03Jn0A7MYNejUYN2X
	 nb+flY0BlnEr0/ZcBO9ArwvZEW5G+8mg1yidrYcE7DJW0zFWEssoN60MjdmkCnzH13
	 vk2JR0E4I5iVcx7/H45ChwYGl8YBrPZFbMXtmQNRwVM0KAeKhp5npJTAKzeNilVkuu
	 waDsVF4yRmgmcbm+WYQKarO6CsALl1atcxUKufKyVjOQIw+/67CRWEuXbSuk2BQPeN
	 SDySTCSnIcsUuGDRbLrPfz9WM0GE4BRAfXoGq8aiYKjs37XV98XZ0rtpsJln7hMZaD
	 uV/1FX+XTqmOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4B0CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979339359.2443.493251015372898432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c8530388db34765bc6a259296e7db4c4aae1fb83616f7a1e1933b48d2dfe74
Date: Mon, 06 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759793393
