Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAC3BE5E
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722451554; cv=none; b=GmB14055OD9aMC849ieMT653xY1S/vcewmpiVF/h5Kwr3R4cJmzVKh6phwrgSv0cYSfBgR96O9gB/t5vS5w+fu6gEJkDLz7vGo40l9b4FjHsNxx/1NN896Abbi7z7j/RucTJ6UEffFEN3cAwl7Gu7o9jtt/2gUnQ01AjiG4l3rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722451554; c=relaxed/simple;
	bh=Cy6GLxFG1lHU3zse4vqM52AfqbDHvJcwLCH+tmMwtYE=;
	h=To:Subject:From:Message-Id:Date; b=gWoQSkr7zb2CbQ8GB27eAoy5cfdEHjxm4Equ5Bdn2mDh6Txoh8MOQdG0iB0Vag4EY1PR8WpoyPZGUcYzWklbt0wTcccQafbX3OuxO90/NS5TeJOtwNC+y5QoBICHhY+98H6s9YM5lhIXUzWkRq4HGt9JtCk101ksnFQ0udnbdCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/7az89t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/7az89t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B383AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722451553;
	bh=Cy6GLxFG1lHU3zse4vqM52AfqbDHvJcwLCH+tmMwtYE=;
	h=To:Subject:From:Date:From;
	b=h/7az89tEZDbsVjUvPwfEb28em1H/BCy3r71MTaq+3chAIaTg19ykZm7B9ymxa+ED
	 yFEyGTo0KtXEEtj801CKHwmKAMnbQMMwrQcTqFv1TjImchqgycSGiMVCXg0HGFRLu5
	 5aes1/Oj6byhcwf3wjKzafsyV50CR+AqloYF7XlEEqB32EnE/ykpV78apXoQnu3aDx
	 n0k3Pp+PTobvFdNnHULQ1/jBPTX3qFAk6a1JEnPGmPheSA//74B6lo3YXQaZaUYcae
	 HyrsaWFGD2Qw8PdmO/mFjshKc5nB5syuJybSbjDbv9G4xy54wr3V0CJjXut7JXTD/V
	 awImMBtwJ/BKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A495C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245155360.26703.1185174718325809560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93acd18b4a7aedb5d2e1dde80d891ff9990c8c94e49e2c83eafa4d1d763866dd
Date: Wed, 31 Jul 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722451553
