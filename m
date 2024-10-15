Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167461F80C3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729020954; cv=none; b=iUzD1tj0Euz9oqnzbuTQTpbN4iSwxJUmtbb2vxmreYO9J5rtj31xkkXnBTFvOn6S4BsESWED1FcIlLFihpL6kIzopayWQoij3LC4YM7rpVhCWsmkaHLHAvZbkpeO3X8sux/f+SFxG8urlCqUgoI22Uf3A1d+K6oM/Y0ZLp8uajI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729020954; c=relaxed/simple;
	bh=6zXUusYczQqjd1SMo3+aF7x8K7Op7X1UN7eXo3+z1JA=;
	h=To:Subject:From:Message-Id:Date; b=MMmHLRDm2zAiCf1h+uNcVaNjrrbEtJVW316uAdX79JYbOrqijo0oOEpOBHD1XjzQC8rutL13/6iJSgQs5QgFy/aQDLg0h9UoPfeC41COePipfvgKkSTxGf7LG4tfjw7gUn41UBesUvN4OUJUgOgXYOGBzvrI+50AEoVI1sL6EDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3uuhLAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3uuhLAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D15C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729020953;
	bh=6zXUusYczQqjd1SMo3+aF7x8K7Op7X1UN7eXo3+z1JA=;
	h=To:Subject:From:Date:From;
	b=T3uuhLAEOJquy0doqjZwNcDZ5Dy0L5WXCveiQ3HEK0+0AhyrVlYuOVnyrUzGeqcOI
	 VNfypiGEapaT8eaMan63aX1IsAZqmbhTmXwmbpDJUsxP3VCCVKmTmHARl3tX3KuvBQ
	 SQWsSQ1nBEv0H4AlLSTDjemQDGrep9Nddr9BR0GrLVki9khmckK5Wyp4UlsSaE6NJh
	 5jZr/qPsc/bi17goTUBMrZak2G1Q+E1UH/1c8UeXkQn9wg5wpFfVGun4+Opgr86Aow
	 V/3ZCfDMWvDXkiMGIuXSwnjTg+HxmwqUpAXqZXMUoydqnTnXI6nUUqIwaaz6J7P51A
	 TlTjdc+TDhtKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6AD1F9C2
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172902095361.12531.4707126587946275279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54eaecb4e6f20fb3c61cae635c76aa58276e1d473ece9be13bfaab1521bb544
Date: Tue, 15 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729020953
