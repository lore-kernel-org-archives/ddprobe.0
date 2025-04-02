Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA8953A7
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743597594; cv=none; b=lNTzP6JMM6cRx9wCoBqaKhaylM4zmG3guA+m/pziywBT3Ovj7jZH797h1UD0Quc18GRz5NJQQLCqeTYT5b8Au9hQTJ08AtjcxyuyYaZtQECEjjvoopgvvgvElQpyCxY/f7UEeRuTToWoKJXtNlUpIuSU9pNc4cz/atouQG99wPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743597594; c=relaxed/simple;
	bh=C6jQ4LmALHN5lW7OStPa6y+9gRTzt1xPWnoBu7XmS30=;
	h=To:Subject:From:Message-Id:Date; b=EAG3tnuA7QCkYYbT1Q5dbeTVmlX07xSiU35dfJXQxpIizEmg8E/Y5+HIDl3At+gN9UMLWNpkPqQEf4ZXRaOTofoxa8OcyC1uw/3RVyhddfKJSh6oCQkYW9MkblllDQJSHNVIAiOzSzu79f9vomhXMjug/KIWVLl0E563HEsI1A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGDDWkn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGDDWkn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC0C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743597593;
	bh=C6jQ4LmALHN5lW7OStPa6y+9gRTzt1xPWnoBu7XmS30=;
	h=To:Subject:From:Date:From;
	b=WGDDWkn+Qo/azWkj+zxImqZJjNdmREAJjY2o69DE8+dp7G0cAhTW8hs1+yDCo+T7n
	 0aHQ6KUhvfBevrfdNH/gJVcv6bKf++Fs1h8qtdXk2Q1oDanEi70DGfQ/TWBbUbhnTR
	 FYEZtKbr/q3m3uQW2td9PAFVYwGs+FqxZziIdiLAT/9HTtNgwUd1Wg1qpaKUfGnal+
	 QcBlOHwSNSjj28VfPHjJ9kVlCMKPp3UTVe5g9z6xXUMmL2JpTOuruG1y200KgMc329
	 EtucyeI1Z2qQVNKMdqHZKIve/pHBFaUrOMX2zvdTBc0Owyyi4uEAp9O6V4ctxbpAmx
	 HrES2/XF+5teQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F857C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359759357.4134.9039749917041837697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5066bec34d306e5fcc3e2b41d6d42745d6e9fe524460cb7fb78b1d598bf153
Date: Wed, 02 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743597593
