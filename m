Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B73154439
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723904754; cv=none; b=D16JWfb7PWgLj3LpqVMeVTThKS/8RZ/EAkx/QKlWk+MqpDZhzCZiAzOQuaJuEyh71eCweNzzA4M/S0GtUaSHuqhCzWId6/Ln8Cm5F0y87J2rO11lRjvwc2NbyH1cujJwJ5zDgWssDnYaEDO1PF6O+m+MfXdPXuN8NrInxgDHzC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723904754; c=relaxed/simple;
	bh=tu1EjSUskU8AKCT9lPG8AAy5mo6nFOn5kWEKbcAYaaE=;
	h=To:Subject:From:Message-Id:Date; b=ScHghb6vYLUMnwYlprEn4Cw9o3z4x6lHSwpBsOI8bkun/XfaXjrf0loA0ix95VpOMZ9bqGmRaAxojj2LiscE6efIV/iRh2HIXWVRS0R+bq9X9hn4yY4juuyAQ1nCX70e+8W7bL0XkjkeTRAKhXRiON31ZhdPK1FuXh/ZT+RDgKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI/Wd5Dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI/Wd5Dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9288C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723904753;
	bh=tu1EjSUskU8AKCT9lPG8AAy5mo6nFOn5kWEKbcAYaaE=;
	h=To:Subject:From:Date:From;
	b=oI/Wd5DnlJP925RbIsRekY9AZ+S+jfyWs2ydQr8w6Q4+dULSFuvvV+/KntmH/2z21
	 BqZivLoVGa6WKwuQtgu1npW0sO9GEjF0v8C8fJLUZuBTdj+PItXacbuX73vVmUysEG
	 Xk62Ah935iYjqQ3sOtNF1PU1yj/9phUeLbxdNJ+FFq7XaGo0XVSa7r6fszPK7i93D+
	 TBx+kTIASMQ+fj/7/HCeqTcjGywGHiUEjF0I1ly6x8K3MELb0JlcnyYzGIDmr9GJzE
	 sRYC9AEv5Trg6kAXqu49lHKb9qC8VBr9VwIAsQYMuIKgibyNsQ8/d0fGftZ8uFivLP
	 CplS90lZAedQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6804C52D7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172390475363.32020.17636697163613372528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b612ac5034fd027aa1f3133af78518593039df0f42c9f1f44d23bd0d55b7688a
Date: Sat, 17 Aug 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723904753
