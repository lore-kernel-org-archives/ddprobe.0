Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06ADF165F1A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773621894; cv=none; b=BUjWAAmYYsbKtzSyOSVAWvCKYLHPPkznEVzsxdLzZsUS+NdE6iKP3fbZlMfWLDkrbbh4C94yO0UiaXlZ50JQag1ZoBV4xlA+dDwIDMaUPkdGh3MbmxdtLbsFEMs3/f5ayb7GXyJfKRFF2KexNTqqR8IqbHH3Jhzg7tS6fmBf570=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773621894; c=relaxed/simple;
	bh=QPoRNSVAv/SNDrqahFV6l7DiVSfQ2yVb1rS7GgWbpkQ=;
	h=To:Subject:From:Message-Id:Date; b=WTtHRVvd5VVbsYhEG+rGIgL9WiOFDm81nnzVk1xQyT98KxqcehMwvYqRjB2A16YsB/YzrHQPPKTFbArsmBLS7IotE/W1LXwqUy2u4oowC4hvR/a+Rwjsz7ZpS/kyxdRXFWYdKiTGq0CBUf43yD7Ux4ACT+nueq8imCIOx7FynqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHPremwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHPremwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16CEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773621893;
	bh=QPoRNSVAv/SNDrqahFV6l7DiVSfQ2yVb1rS7GgWbpkQ=;
	h=To:Subject:From:Date:From;
	b=SHPremwKEV7NdUZ8bivggwL3eFyXQPl2DTY8AVNrBA4q+xMrikdE/b2L9fWX0YusJ
	 kZT3U3A3hDDv+q9EyhCEX9XcomLQOyX+t6Rk2a2DGVN2gnyGOiR4sW/HGomTT4gwKR
	 SeXmiPW2wTvRTk/Olxxp/bXPa93LJ30TbyeFsS6rs5c2cceesbg4mynRJTdGAmGVrJ
	 x99kor06HfLiSORHeVchSZ6FeSTqB85fHrP+5nukZF3jC3bmQaTpwPFWa7cKcRDGeN
	 s1YJeSiDdc8ZNINmiqxJDD1yVyGWF8FwVZtvr6qN9qWKLbP17+470bJr7KfUwCV4Mp
	 zcAIAXqt5XVOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F208F30295
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362189357.28504.5812310586247395656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73a34adcdb155019a778dccf7651f08e534fbbe092f931013ad30381bf790c3
Date: Mon, 16 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773621893
