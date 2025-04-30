Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6E52F5B
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745993394; cv=none; b=GLc6z8ir7AWxb6Qi1+N81RqRnS9m5Nm2c+ndLhZ4WIF3dp69eVlm+2sp+UlQuEYVZLG1b8eGEPjJPg9vytMpd+fQwat6XfTEWi3AuoTVf+NMa1VoU47wJCDw8fPZzr+rrq21umuEC07fIA2FSVpFwireGMMES8UhP4BP9/hmdd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745993394; c=relaxed/simple;
	bh=r+iYqtFmQaDuOllb9XDBdMYzcuShYcpWDqeUfMNz51c=;
	h=To:Subject:From:Message-Id:Date; b=bE3saM59iEimBp5pUuvskBU87unSpjExULmp7Vma1eKB1Ni5GAvYA6Q2BeTcz5rYfU2Bq/gG9v2XMHoTzmuSAwLNUTWEmMS1w4iDkYrABhAajGf5F8sADzxiMxRXNlGKgM+c6nNvF6f48hYXzII/Dh7dqWpu5W7eSVqqQmhkqHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmCbjQAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmCbjQAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1063C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745993393;
	bh=r+iYqtFmQaDuOllb9XDBdMYzcuShYcpWDqeUfMNz51c=;
	h=To:Subject:From:Date:From;
	b=WmCbjQAYM6cLX3BLDnxSahCllOhRAg0wVhpe2hqDpo72QpZN+yrlQlMsQ5ONi/UhB
	 dARo+3PSoVrgIzcqiFcXjfMWSavHvgOqwT/BC8TuDg06ge0yM/CgtoWwMfErQ4/sqp
	 H8xSiawkGEb1AdRLNh82pkOoA1CLtF7D0GLLrfEhdCkMofjSNV+bJJiJfqSbKgvrIE
	 5tdoSzmdJu7WEBr19bhDIO+imQ/nzSq0oI1vouxl5PFuQ5ZpSokDf7TQifxdQvGfn/
	 PojwEZOK4bnpCQ7NMX5H1vXsrq5hcTySR0vBSvLopkv4fWQI3imZTjoOfaIIkkfTWF
	 bZNBumzH8D8/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E881C3ABAA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599339357.21714.2959837124128570742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b419e9dc84aa817a4784ecb62477493b8af5f618d2a284328437f58aff1631
Date: Wed, 30 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745993393
