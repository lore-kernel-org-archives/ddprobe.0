Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0E6131E41
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716809663; cv=none; b=qSl+V2EE2OBRU/prYJoRs8ZR1uG2XisTYpk8iE8YEY+/PIOob4A5oiV7q7PbIU8KV1jKVuTm7MAAfhY22hmeztA5qT4SUqiuyUfr5d66RvKI70phlyTMWL8ejPPRvcvjf09WuLHIF/rjZia/PRNNDqi7MkUlkOQ/d43UJx+aenk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716809663; c=relaxed/simple;
	bh=jSOFp3ygNm7PgiOESM2MQ+V7HW7hosnoDwa0KZa9dis=;
	h=To:Subject:From:Message-Id:Date; b=KlJXIrfQuW6K3OvZZfoeRIdx6Vr4q5DdHFYwHfoacZowXptYgb2ky1fsM1o5c6zKNnfKhjdefIXWXflqOj6ytzxyxJR8G9mVGtKWhUSOdNI9vSndx9ahotrWU03+EgsYkuFwsbPslZvskOlR/DSUbQ8dgYz6O3E1/8U7cE8cocg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq2fnj29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq2fnj29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32E2C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716809662;
	bh=jSOFp3ygNm7PgiOESM2MQ+V7HW7hosnoDwa0KZa9dis=;
	h=To:Subject:From:Date:From;
	b=lq2fnj29At+m9yx/N4c4TN89XG7PGd0RxM4PQnbEZLVjFOQBrS8wi5H0RXk0X2i6J
	 nfra3WSyPkbMZrCkQPUBlafxW3SC/nTj3Fs/HGkRdJGF4yBY7MGR1CZ3vqlUxG0rjs
	 vi4diwRU//iHSNvEKQb/1bKeCrRrgYoUNo9EXl5yayTKp4w20rn5dTQfqYpKJLrfRT
	 qafnQEklrhKQow9On0IlCPvAURoPP4Z3o4j7mQD34qr60r75HKVt5Wur/jrSqhWCEj
	 zwdWVERzpD4sfyv23dQbO5zvtMgP+c9+BQ1CSvT0XCkLWY8mEkQTUFUp4d8zQ9I0Lb
	 H/5wmU56hwuYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC408C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680966276.7097.13468417518644875830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261f1d4b184769d34c47556dc1d270c2fd7ad93fb853c285688807e389db7ac7
Date: Mon, 27 May 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716809662
