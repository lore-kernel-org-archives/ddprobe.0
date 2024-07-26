Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117987F8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721991954; cv=none; b=EvLs0j/n6dWPrlg546kV/VzRAkwRsSnRxBnGxalpUJaLf/d+dxdCi1sCyf6ELUalZSMZoy4gcRt+Th7Ij2ClYJdUmunKDd31uVsjGuGrE4owsJxuxMI3HqtN3Y5RKqRD2mK+QTfgNGrf2XXPOcbw2lI6Xqm9Vn6gBASs8MPkrC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721991954; c=relaxed/simple;
	bh=/pnMDXnZ1qzVUUMd+drbzX42W8fgBCZ3WFOHHXofo8c=;
	h=To:Subject:From:Message-Id:Date; b=Ux2Ib1tsrvenjdXqzxS8fV4aKIO5keuyoR08oN97caq7HnJ4uEKQmDAk4SrEDD8BuzLVv8nz0wvSL035JLfXSokmHLgCPp8yqRPYAjg3752iwiBP1oOZcrpS8/OQVK/1lpSowleBBbBAKX4moQ2uzu1wDQJsAa8J8ooEALemgA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoXT5Bz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoXT5Bz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D29C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721991953;
	bh=/pnMDXnZ1qzVUUMd+drbzX42W8fgBCZ3WFOHHXofo8c=;
	h=To:Subject:From:Date:From;
	b=MoXT5Bz7Geu1lZN9f4UsxiVGj7s90nrK+RFGsBjbG9GLeVomgHGoquKvpGpiyGb3R
	 GNnM/5Qt5MfthN80TQHoNnbWBLM23kSLE0HnX+civY3qSe6E5+3lOtVsW97YoCD3qt
	 ksaNbaktIcokLZ5mjAHJiq0UUt02FJNEWM/RWpiAmvAmgAnngiCTGHFtkSOQVFL607
	 hUq6mPoQ2htyYAZwkmtKksccVW6PLDIMO3cXm+NH8+NbVbBrGKEnrRP7IPSflGjdVj
	 SjwCrYS4u6jex0TdicFsxxZflLHesUVwlgoyUCoY5LzIfEoObhsSE6e1oKuBZsneKq
	 tkHFlhPr0xifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B8DC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172199195359.14459.6768359872813769525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80cc57d30804d7dc439cb7dfd13fe83351beb20d452a2d8c1ec19ab38214383
Date: Fri, 26 Jul 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721991953
