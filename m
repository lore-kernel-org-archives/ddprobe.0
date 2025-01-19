Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578D72913
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737270954; cv=none; b=qCwJUQtomwZsBc1ObuqAecVePWq6JKOdybKETt3wBKoqWib4i4gTmM0XoSRwqwMUvtC35qdiGbpVVylDnKPepberLshsutT6ahfzXfqZL92oIgRF0Ap/vPzYY6R0xLpseufZeYEVmzvW+q0sp2xJ5FfHKNwh7mjLs8GEBxgWiYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737270954; c=relaxed/simple;
	bh=1g4LVmjbPblxE2Mo32sSLGNaqoBb1B6RXA3d9A3KhfI=;
	h=To:Subject:From:Message-Id:Date; b=HL+oohd5vmBYpXbNMMq73M+hIH/HpCm99O9nIe3fjR0XObtFcSPBqSD4NYi1uEF/bGCvqPBhXpCfP+//afX/I+JVmuaRyoCwyZdFmQGXWFUrdMqHt8KiU50IYAFkrMeGo6xqzQvAngZpRJwcSf46uUth6PCxV1IwVJUUICwgiLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoeIeqlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoeIeqlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FCEC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737270953;
	bh=1g4LVmjbPblxE2Mo32sSLGNaqoBb1B6RXA3d9A3KhfI=;
	h=To:Subject:From:Date:From;
	b=AoeIeqlzgKOhfoxnK/yqKXRLdLDJO+cP8eJj0arj/ki9ItO54fQW+xlMFYKuEX7Pk
	 dFqff0HkXvlYEiTRr4x9oBFO6Gs2O/vZfEF2Dwhohc9++M9u5AEqyxYUCaXVftFhqE
	 ayUoQLKLLabpdOjXGeSJ3AHTDXPvchDLPodLJ6fYhD1BF7Gq2khQ2DBJpJG+0B1BVs
	 fXne5HDKsiROl+MB5VosW1uiRvv7uxoCYICIfdNJHeHr4TE+saBUESMt9h8/yHKd3y
	 BHdGL/bPIEQPzAXQ6vf87IQ1Phd3mmRO/wU9ok+b7TpCrtpj8tAxQ5vtSJjs4idequ
	 Fipk1PONIxkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE8C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173727095357.10693.12239044384812302273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9967fa1bc6e65438908368fe7e40d6d3ad312ff9365c221f3910049d23cb8e6a
Date: Sun, 19 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737270953
