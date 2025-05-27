Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B478F5A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748310594; cv=none; b=JSzQZip11Qgfhlggl63vr4I2aPcdri+QesrGaADFmReyfFbaUcKsagNaNW4qBmrxi9Ck/VdfBq4yQEZ7K505qKVbNjEjwyVuAVran9ZQj9SDfwhcAtcRfyk592aPFi0g9Vb64AdDbJgKQs8Aok5SDbTu27VEchjhNUKYO6vaD3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748310594; c=relaxed/simple;
	bh=JD1zHU1nRQvcoXhL8JtcrSrPx8vJcmd7TgIcuXVAPqw=;
	h=To:Subject:From:Message-Id:Date; b=lfvfZgGfcQsv1Jevx44q9f6lCIYJ6r3vA7FM+Bq25Zcir9N/6iG8wtZawyUMvr3KbFbwm2H0cTnRsS/rhW7uastS6uk1OI0sMh16FU6l6NL33Bl66X9VEhtLaB4JGpQXLxIfkvjTuhfx5a2l9dWjiNES6Qmgd4clMcu/HYbeico=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUrOuadv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUrOuadv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748310593;
	bh=JD1zHU1nRQvcoXhL8JtcrSrPx8vJcmd7TgIcuXVAPqw=;
	h=To:Subject:From:Date:From;
	b=hUrOuadv5/rz+SlIIGkSIgWeLwpTxzY+GgXeSw5+KMjlcGvSdOvOb38imv9ih8uFm
	 pqrfGCuZPwGIvVKiGygNAzjE8IHbjgu2/QVnuFrGGQJ50vsoRsRCZdwALQnmhSiVjQ
	 gO++rWIJW+ekDbs7mke5fAkrNXIN1I4O+5B0/ecZt6tCx6IJCM9SaZW+gDl4XrIqoM
	 Sr4qptXArLXJ4B81DKI4EBIJunuMMTpVAn6BHdBvw9XbLTjEhWVOPtuTa6TjaTgtOC
	 DCN40i11KMyCFNESXE9ysQN22zVB2D49fLvBLL0BuyTvwfiAt56bQjF8fbnlr8Q4/d
	 jnN+r16DO/E5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50FC5AE59
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831059358.30256.17553981003501030539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a0808ece0ac37213a56459f55a32fb85caf09ee808e1ac4db4402ff3280724
Date: Tue, 27 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748310593
