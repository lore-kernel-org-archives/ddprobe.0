Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F93340DB2D
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785874834; cv=none; b=UPN3q9SUr590Io15VPKrTsr7h61IOnUlhZ8D7ZDWHyL2RON8Xat7drmhey7n+0L/EiyB4WX6LzlJ+20TSKWGrGiKl9J1A1DJePoLC7ApS/zbzUdcX+923FqmM+quooq7d4AmiLbw/vug2OHALCJwCvEfay/gJqXOAG+COnN4pP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785874834; c=relaxed/simple;
	bh=48rogwkSsJncblKNHQCry6SpiV3F2TAdA+GuUodfF/c=;
	h=To:Subject:From:Message-Id:Date; b=Iol8Iz48ishSS8RUCqW4Q8WNCv6Sc1KDhnPv3mX+FdzrLIFhzHZBtRpU2cuNsrmdaDhxJubV5iabEEbgH0ZHgsCvMLKP6Cp8PK5KmWwxwKDv7hRtN01QRZIC2emDYHEMWArtvzsCHvZSojUSfGIx4dDAWsluP+LhwZjU0Uguq5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMlYv88J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMlYv88J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE94FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785874833;
	bh=48rogwkSsJncblKNHQCry6SpiV3F2TAdA+GuUodfF/c=;
	h=To:Subject:From:Date:From;
	b=AMlYv88JwkXYeuKSZ4ZscT9gCPcOcnFw4JpeT6fsy0eZkcPiwdfaZPclAosRSRrCb
	 X4xThyyMjwQvb1AV4VOEFcg0Zgr3wE6iR7he5ZlwvPF+P4lfN5nBGEwaxQ93fpMg1A
	 q2xfEwjviK+ynZSS6xsGig2MY1LHf2BbnrKvsVp8bY0ugGyYxzkACkfc8d6/N5AY0b
	 cvRtAIP9xWucpcv9BiLBwH3ZUJhalWbNSfNLEme9m4oy120AR3yvxmixM8KSgdvh7o
	 K19Ans7QeeLRjGarTd6csl2QgbLvDoig6dHuISinmsqhFA+fAgIW1AKgkRfHLtchEx
	 L62vp2CNv/fGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2478C55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587483371.30389.17839659205247000065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83abee43ab1183b4e6bb59b7c075a344fb898ce168ced87d02d0ea2f5b6bd537
Date: Tue, 04 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785874833
