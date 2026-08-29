Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6253E3F9281
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788039634; cv=none; b=LkiFaFQfAgjIfylukHvyjO/+pt380Cx9nAtzZq+n3E00/nyqY2DRooQrNRu3enhchtYwTq+P19ScJcQK8xBiIsnll48sc7MGk7TrMfqsTtFiM3FOBmefNke1P7Edpd/NU2sVci1gbyPX+/6Pe6HvmINeJnVDegy6YjkC6HZs68g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788039634; c=relaxed/simple;
	bh=bhByhUkPmyRbRq9i3q2LCDA8fpYpMmjbInNp7J80k64=;
	h=To:Subject:From:Message-Id:Date; b=dYpMW2dGACTPwQFzXRZ38iwzar3fpi+b988+CX+Zq/oEejNquu/JbxK4d0oJ0hzgGLLTH3oPt70163FlnN9LfA9qd4zNFgpIThad/+yWkM3O5HSlPLhXJdp04kyEVVrvuc6meFhvyWvyXL/vYXx0qWG0Xi43b9B2fUpBaZVLlVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcCs4BFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcCs4BFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B12C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788039633;
	bh=bhByhUkPmyRbRq9i3q2LCDA8fpYpMmjbInNp7J80k64=;
	h=To:Subject:From:Date:From;
	b=AcCs4BFgiFVUA28ljB3pYUIA2lBUZdf+/9vOcUP1eZ2Miw/8//kBZp4zSzIs+y8b0
	 x6BFunwyevshNN//zMvyR2OVTzkJ+tq44WuoJjd12oZwigfIydINRgwPShaqLjjkUc
	 5TGhOFaIUoGiEkgyM3HFiso5xJGvUwRIEi/pgH3gh5RxTWzjLyhQhaG7sP2As0deAS
	 FgO3hJP/JVdSHQX+gx8nHovNczg3NPKUIffyJNjr13X7K7uXwv1gUOnFEigoiPydw1
	 R2Kk0WHz+pLcTHD85wMXYQcc7fGIJEaTFq7nWCntRY5SGUEQOB5x6l/beihZ0JJ8G2
	 trhp3ybGDh4NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEAEC61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803963368.23120.6107455340605484469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f211a46bf08a6d6c8dea27639ff77c1bebd8df50f0076c713ff00bac8b134c
Date: Sat, 29 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788039633
