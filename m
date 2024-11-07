Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CB11DF273
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730998554; cv=none; b=lJYXT7+AvXk2Br6jcok6rkmuVTTtPpkJoOskpWk10ggaosG+UcXe35I82936O9+d7/riAiYEXT2vKKV8nfrhBImVx3DVGEcNA+pHgJRZQ9EmgqNlL7OOhyuP/FOduPju4pLgU9FTIH4p/aVlwnJH2hSA+ooPUh1jDksbChvsoX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730998554; c=relaxed/simple;
	bh=814RjQ9H4oZ8lCsl3HQ+aR/zhFPsRBlyjuYdSyw/Sw8=;
	h=To:Subject:From:Message-Id:Date; b=CLLSYJlW8j3okkl7Sejz6glfVyCxblzlf/elWqy55tbadWr5Wx9ViFM7tcdQi+7nvhfkHlIb3dZLa1aNMX8rKw1HaUO8qCCVcZkZooIfDxiuvCsWPVcJXjI6nMWa0ohHnp7YAKycuB5warrgU/cibKLPcWt93Hf8I7NesNHidAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR/LJtvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR/LJtvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD2C4CECD
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730998553;
	bh=814RjQ9H4oZ8lCsl3HQ+aR/zhFPsRBlyjuYdSyw/Sw8=;
	h=To:Subject:From:Date:From;
	b=dR/LJtvDlsrce1NA3lpWrjvP0pytidFYYJTbZm5nrhRWQWpKoHAmFhXpkAdqsOfAR
	 mQyu2UsOE5lsoveW7XYTQ+INf03x9iZwSzO47HfcDhgZ8UXe7J/fFhF//eEFZQD53P
	 qnDUB77K272XLeDH3NSqxgTHtrrNpv2zYcsrl2yERexfnDOl4sQAAZimdIE+SyGnaN
	 V0lEioXBMBDOa7owJb/NM36xkdr34Vun6JlTOSKPznue/33qI32dT8CR2lDW7F1L8n
	 365ufhIpcQFHlP9VAHOi5W+Vr3ioHrsdgEj+tWOMH14IIsmwZZEv9hDUeAt0bTOj6L
	 MZ+uyLiUOM1hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B3DD4337E
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173099855358.7781.12369594863741687829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d77331780ca2a1b83226f985b9f5fa31f0c579dae4bda4baf2d7deb5e86996c0
Date: Thu, 07 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730998553
