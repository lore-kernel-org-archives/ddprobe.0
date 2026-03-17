Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100512C324C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773717294; cv=none; b=YG+kULwZuCggwirkCXCjNl2q0L8vy6k2USKArg80zKzcVOJpc/HErFpahlBnuy1m/Tr3d7OPUeulfX0x739sXj0t/ttEpl2Z0p3lffs9TWmFA1boPyDtliNq4vjlskL6Do5EWpsQo2geMY+ipgwej7wu8/kSpW62IIGbZeh5+GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773717294; c=relaxed/simple;
	bh=R58JMEzYzbm1vCO/m1CSDGmdL67cAz3+8GPrFqQu9Yw=;
	h=To:Subject:From:Message-Id:Date; b=hDiYSQk/CLTX///Ud0YX+yt5Yf62g7My2kKPnbTCcHkqFKBVfL0PZsvmQNvqFOyDFHG53gjfdMNm0eHyp9oXoPiYSJjUiBNjqyVh0cWAys2BV89g8TQgUU8kc7StfkFZ8n5oCkbHsH872eL7niomRkEMkte4ABGFTBkXloA34Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JK7NAlEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JK7NAlEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAC4C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773717293;
	bh=R58JMEzYzbm1vCO/m1CSDGmdL67cAz3+8GPrFqQu9Yw=;
	h=To:Subject:From:Date:From;
	b=JK7NAlEH34xOD9JShZ5tzBgkczzL8HrTlvGXh5I2x7smBaBss/Wq21IL3bi1k1yrW
	 8yiuzqOm2ABnVoGgMds5S83Pa7pIOG3kMn9D1fDT8DtZ/X69nzBqJigFcrHdFmx7D0
	 XOLezA7oVe49Hr1wSBb21ucenXjg6yNbZwxvCQrPKAZ5rz6LgdSEg3sQixXqplHE5g
	 xNEddQpHZdxvfTbn9qC/NAgJfTmG75wwBN4ZanaM5R14MFG4EKFV4nMsQzkdLXFww7
	 yHBP90jcCf/Mu81IyhvgRpWWLdXqDW4eaEH5Qe2Yb7zNff5iYqdFbi0XFfhR3R7Uph
	 PkPwdYcTRJNOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91391FB5EA8
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371729358.29393.12592135760160079186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37e409f890d40c889ba896142d63aae829caaefc320266e85d47d75e21b4fcd
Date: Tue, 17 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773717293
