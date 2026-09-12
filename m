Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383B42D7380
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789191034; cv=none; b=jC+nfvv8LK1Mw6rQpdbxO9cU9vzoptyE1V7jjZB1X5AxBpUnxiG4JiUFKRckAjqnF+KRpzjZtIpwynAclYOhQBvVAcoosHdtZqcERhGWR9jKDyuocUIQvij09kqJq6Ise6Y91gVpiTdw05FdMmC1bj61lcINtedPHj0qKiMRhQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789191034; c=relaxed/simple;
	bh=3Mxy+5kBhX1MnkLH5US4ZUal0TuiYGXKalUTsKihtUs=;
	h=To:Subject:From:Message-Id:Date; b=Idui96efSLtB/JhWdCScZhQ7YrCC3EsMpwcbbMguJJ5eWAHXYJkGWhmfEaC0BOgKtDM5E1zqKIeiA923HlAGIKW+CyBZMDECiooSIuf4wMpWcItxWpoZaCUgt8XKDSkvOmedzOx+uxiNuv8Y0l/f5pASo7vgIpOIyLZHAgSv940=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK9KAxqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK9KAxqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EA4C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789191033;
	bh=3Mxy+5kBhX1MnkLH5US4ZUal0TuiYGXKalUTsKihtUs=;
	h=To:Subject:From:Date:From;
	b=OK9KAxqfgj3G8xudnL3qIzXqx0nWk2Cm4tDseOo4qCKgao0iJre4CM283i9pEQ+mm
	 jFKgB4//NdTAhxSaPozbpIIS8B/k3X0SMcZH465OaOhZMwYn0zmJmFHJ2xFVanksVm
	 +3Rf+NgBdo9uJkbSnlqkkYBxaiUwFmQKN67khGNiT3sk43wWdA9Tcf/yWzM4+/PxYm
	 dx3527kq4Kk9EcVGECSJNRRIAUPwIIyplgrKf/MmiqE+lbHYLQxFUjf02pDmJu7vki
	 Agz2qAS/f6ie2pt1yb7mqLGp8V9n/dYAhf7ybAbvKCNM1KLUJ5s3SUYKlUdfNo1KTF
	 AqFx7w2tf12Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2D5C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919103368.5984.13435778563072177014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64456bbeff03b36fc291851c3e2d806393040dcd1f44169ca593bc4ba1968a55
Date: Sat, 12 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789191033
