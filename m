Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECD5238145
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742220594; cv=none; b=C+iIJisZakrhI79GIxWNVVMnmt+n4RFYHdtWG46RMzPbjMffNYeVW7hZ5tpFmYtUdxwZDw9ZHVcNm3tnT6wJfI6wXsd4nmO65R8Gut5soNxiWOjYtKvGp18nfpMVlE0XxtGdGe0b99Gq04ZbKA0freap7lAv1GzDFWWP54/UGxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742220594; c=relaxed/simple;
	bh=vLltcKoE/Dg3CXKIADMxH9FuQmkLh3+uN8XLB0oMDiU=;
	h=To:Subject:From:Message-Id:Date; b=EvqPSr/So0p0uHBDRs3TbnM/EIqky26F2OozbGRG8gqerAvRO81dRyBBsmZwXpGCH04EnIfxTyktPdZ8yOjxq7f/JxjAVWDkwujQN7nsfuRTz1Eaj6xdU140YMLYkjmJ4geDhkjaUgHoJpHGz+YcBiilkB1/KCpK5ECPFaWNNtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUTCRQa2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUTCRQa2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DE2C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742220593;
	bh=vLltcKoE/Dg3CXKIADMxH9FuQmkLh3+uN8XLB0oMDiU=;
	h=To:Subject:From:Date:From;
	b=iUTCRQa2ko9o9q8iJR4MLtkgzdWbDHpYcKP2kQeAUTkcXE8KlZI91jMCZgsx3k0fO
	 Tx+Pr6Uac0hdYqRPI5yevXjTlR3jxNH1YaN6N2Z4rT9swgZtgaOxK4aIk/wnSaQr5D
	 4sbwq8rgUK/MtnkrpHyQhqhWK1tc5TvgVfguQigAwir9mOd2eHsF9DW/G5T8G+h9xA
	 lZG02yjdU1Tb3izy0uyKa2R9N2gxUkPYkorIQGhfyEJhfhKVBqEfXozoAkhaIec2Y6
	 7KuVUlQNwXxtIb3d4J1tYLkap6N5c5ZfzRrIQmDOVDluqgi0az/hmXs7fldFgYaNxL
	 4+z7gfFrsgDQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D2C28B30
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174222059362.31672.9681440681693149318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813d5063eb734359ceed583c03bef90099ba678cfc532885bd543cf01d21e031
Date: Mon, 17 Mar 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742220593
