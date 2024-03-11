Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C157462
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710131297; cv=none; b=PUImSB2vGFnMhkxwH1a7WjfWcl/udJTNrBmkjfrCi2HDWqg5pc/DXTmACCKJcLmmAQDToA6gCEKujSpH4a45BMxLWUhB8HJkqQhrO0UZrKiPn4X5eSzP6Ix7OnpafaKeBSDERswU09gmH72l+FA5AmZT8nChKOAJdhYYDcizkh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710131297; c=relaxed/simple;
	bh=BYZM1HNermeKa2ngaHmS/Q7igS39f4eSAoQFqpIIQ3c=;
	h=To:Subject:From:Message-Id:Date; b=KjBnh6StadDChIdVpViDu9LP+MoQkDN+BQIk92YSiDQca8R4aXhXB+s2szYq/WgFzX76gKpzBzPq1dpZbHW9CBmiDkK2sQECsPVNsvxZqcMxe/qHGp7zklo3wvMO1BBhavwuE6bJOzUajGvHEqEwppQbykR0hpooDiUjYmlKdyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDXp33/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDXp33/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E64CC433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710131296;
	bh=BYZM1HNermeKa2ngaHmS/Q7igS39f4eSAoQFqpIIQ3c=;
	h=To:Subject:From:Date:From;
	b=FDXp33/kUfdgH2XddmIfl9q4AaVBQlcRi58xZX4hh96jAzQ2Qxi6tRFXwU19fHerI
	 u4Nl4spVDeh2S1IKA5Ue4uk2gP+dqfatRuUtKct2zdomkUDOh0FWJguEhpVFKU6aDN
	 Zh+GAE1S3p8GR1ozYjjCzPR0kQbYH3I/fBXEy/MndiUC+4uAwWcEbOXkW4vE9xBoXw
	 Ka+qAAVo2Hayf9ZDEztbTHwjFOapnI5PDMLh7OVZsWTefBmL9ZGXnJxjf/0mb4XTJt
	 uHxecmNEEwDg0epbYZySwSj5SO61DviucMJ36EqFlHbq0RBfHdPNINVbSr1tfT/4v/
	 VNBF2f1OE3ndA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F4A4C5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171013129646.17078.4306780749684324114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b78c6f2953867cc48a28378a4574624ab4e3cd1251428e8fe16ae6e0856bd10
Date: Mon, 11 Mar 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710131296
