Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3998BA2E
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751499594; cv=none; b=Edc1VKAbBD+adKVxF1+hFX8i30lLhzW5E5pjk+3DrD6VENdX20QcWfPgdd7PD00djYf/078Qgi8ZW0R8I1vnf934nY87rtv8exV7Bc7DJXzhuEhXVTggArqOKgIuqp4eFaqzYZSlUyb+bzFKz9QyUul5TlVuOLNflXlamd0+yJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751499594; c=relaxed/simple;
	bh=iH7IvhSXegTZyrZvg7EHhxOlaGH1WwrWGh1/0nATTFQ=;
	h=To:Subject:From:Message-Id:Date; b=OuG4phrPnhJS2K98/eas38nZVoAN5Ks9LtDmgkE4+2FW7DIoNtXOfrzMPLbyua/QCpY7aqVYCOJL8IwRUlpSPbfVw5MD7AaUVR7RoctDRy+0wTzWx8CXS6bVxemtoXRihESFo6kNzEIPfZq+1jlLWrbCoiFF/zqjNypD7u6VA2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oH3ipbgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oH3ipbgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97917C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751499593;
	bh=iH7IvhSXegTZyrZvg7EHhxOlaGH1WwrWGh1/0nATTFQ=;
	h=To:Subject:From:Date:From;
	b=oH3ipbgm16PKK4F2WMDG+rdNxJg+slUoEiAJC9f5cIdKL/Q681sCO6Wj+IRgFnhzs
	 LPH+zvhm/xG+nkqsfjHN4+WjHQhYwk+p341RruJTeAerSLV6g63tNrucWpncUpSHY3
	 m7DuOyGecZQCKtHz0SjWg7c2s5zfZcLb1qCYHpq0YiRIz0v+nBDnW8QHTHnafNmOeh
	 9FlHLthKGhI/yVPMkWMUwYyP0FirBrTiBauxlYUas3wVEH7kwlnhYqNAC7CCF60fXY
	 FSWWI1UWRqA0jvntvl+Q2DJwVNE7kpckatEIx3RMxpHmnMS/EA3mwooXUIG3veM+sX
	 srxdA+3c2u2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74AC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149959358.12554.12499425320686540893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672c7c7f89210e33e02e8fd0f28c2e2fd95863289ef22d05d7fa41a57d8d1029
Date: Wed, 02 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751499593
