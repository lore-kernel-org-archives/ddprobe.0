Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FDD42AA4
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753838994; cv=none; b=h4Ahjj/ms4dCdB8oFrJAgtNxuedwZ7IJ9PPYyQ6pz36yyMKOz13YZsGTrDAPkRIHCot85XIwqpj7kcFqfjkFAT+a3lKlqNHkd2eGgF0TRpx2cieGKbVOXnDyubFfDS2kMRP3MB1JThdbtFQO0qge7glVLHerZcoPap26fKSUMkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753838994; c=relaxed/simple;
	bh=bPsRIbvAMOSsoLQ26ckv9BwYpO8kzhG2+iBwp5uI5IQ=;
	h=To:Subject:From:Message-Id:Date; b=snyQFDsxqwsxsIU+4Iugk3966WhpskPgFXexk+R67xRJZBuly3cporj9EkuKWXgTgeiCG9cPZY9TiKj7eJO2v4pxvxHPnobrCWUEaxjneLGqNu1UVx4oSSonTc2QfwhIgeOby57/6Ollp63ZGpyAKwEK17R1jsJIA9aaUSHlF38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ups0R3b7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ups0R3b7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CA3C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753838993;
	bh=bPsRIbvAMOSsoLQ26ckv9BwYpO8kzhG2+iBwp5uI5IQ=;
	h=To:Subject:From:Date:From;
	b=ups0R3b7iCFuNPk+D5T5v6hm9c7+shH4w/iuB4bWJh8QWAUkt/Z4ufZS+bbQ3zpAm
	 w3A52GTMP+Z2WEnCQfqrz+bhGhpRCCTCRoEvZCrj/IrCC3VH8HfIMMYFb4K+3p/vyv
	 IhHRVO35rcdTx8DmX6zv2UwLct5nW9FKCU1DcYEwTk5biMQY9WIJiKI6rtpzafT6hx
	 dCW1kRNNNvRf8+qClEt0W2G/XnuUc5xoBtab68e+k9F+2OxEnrPXpAa14uLI8JfTR2
	 se1mRZ56cJIHWfNe5qgKmr44tH3p6RyKedGPB5VpFCRak8q/q32oRF3B1mWVrwtNlF
	 VNW717MRMmfKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36DC87FCA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383899357.8856.11081636219618763105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6303c8437813435f31aadd21f525bcf820e0084b2b50e71cc0800d812006b30
Date: Wed, 30 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753838993
