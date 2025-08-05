Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E401A927
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754361594; cv=none; b=MvaRS6AHbc645P2JdPSmcsVBmcSW9d/816PfxoVghFIe7t4Jt2tOmHPXORe2UwzBpFiGu2xTAN5CCo7nPIBBFMXR1Q1rnB1AsDFFAME47T3RpSMrpHhZ2ZNzILbOnQw4Z7hsAvR3l44e61vqwDoZ+myQOT0B6cuG5pud8Lok4tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754361594; c=relaxed/simple;
	bh=uhLL+D22bJYH2jGVAdfVETMs3aDvug0nla4Z0LdHk1A=;
	h=To:Subject:From:Message-Id:Date; b=HLI1OekYdDB1kczjjuR/JAamFbf8sGkyqW/QqZ9DmIMhWyAQm7ZW9rrKtOjNpSbVnzJb41kwgVDJyYrq7hDdfbLS4N2st4HQDzL3GI/ZFQTSMWzkuMiT+KiVs+MQgO6OlC96vYcvmfqV3aCUTzJFEqFbaez4avawq3nvU4f9m/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejO0n2K3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejO0n2K3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0604C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754361593;
	bh=uhLL+D22bJYH2jGVAdfVETMs3aDvug0nla4Z0LdHk1A=;
	h=To:Subject:From:Date:From;
	b=ejO0n2K3i1oiTwyraDfkhIxZIensFr/FW8a29nbN1PbLk5kQDSLleiNV0b+wGsa1/
	 3XCpsozld6ZcW89eergPI3EAavsrdwQrxSCCx5IkCNKM674bhslTZFILgk/ABRKMsl
	 1Wh8TaBBARjmZc7e6H5Y9Y90q/FfGxBI9EQbSitrPraB6OAHN9lM+WSYvhU1DsCZRk
	 FNP15f0NN7DeBpD8gOvVzE5/h+HgZ+iO4kxfdb4LQ6wWRZTpLJHXh1VT1cSrR0a6ts
	 SrWrISpeRYGzMi8fKdP4gHx63mrwFRf9vJOqxj3onpW7pH3mvC0oEy3dEhUjpQkB1y
	 l8n4fv67Po2qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E487C87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436159357.7157.7874073592132377224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e30eb253e2246e7d597ba748d38ed8289bdf476986756106ac9ef88c85347443
Date: Tue, 05 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754361593
