Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118CE3451BA
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771602294; cv=none; b=kqAab3IiMtK7RFwiWsF3nmsBfrsYQ6265gyOJtayDY71kEW5TZjOPDughh/AP91TpFiKq4Z93UzA87+3wccImaVe2CRRVzN3dXzbKrsHk7xRdgAIk8ajxop2DQJGNOeiQfQqhhf9+3Mxfy1+/BXrJJ76wrSaR/MrCxgcObVcfCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771602294; c=relaxed/simple;
	bh=jUvVg5PNYicDGiGyXJTxpRDTBS213MrmXOrCFBWCCIc=;
	h=To:Subject:From:Message-Id:Date; b=lctP+9wUwcuSNMKqz2mZqZwoyUPYLmV7sBKvm1c/C/ZpclWQ90yyiZ7XkI4p6etKavIG0qL9zxMkiabMb8PTMvskM9GiuHnEoL1sKXlXRHgtopUdVI+4Ty9E5gRS1HBAxzqt5mKtU/8Ic+8hB3il2PIzmWskpHnLg7drdsqzdbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvwCUfCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvwCUfCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5322C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771602293;
	bh=jUvVg5PNYicDGiGyXJTxpRDTBS213MrmXOrCFBWCCIc=;
	h=To:Subject:From:Date:From;
	b=uvwCUfCX1RH8k1uospt7BQrQ4H58yly5tfYNCIa+enjNs2z7+NGp0jZPZvCYNcKeg
	 YAz08onVK58jbVQMEy8lD4OcKaADw7bAI4Qee9swtw9xgnlB86pq/nZyy30a7Chhb2
	 Hp/HNcfql8UDPfm62TT9Oem5welcLYdVjS1gdTYzYngzHVUAHIZDysosHj4bASOxj8
	 IuI7z18uzZtaiPdlGl3pk6qbCiSXYEw3n8qNtc8m8waAuR67ZvMWU866DcHnCV60js
	 OwsUEwBrjFK53HF/bnreeV8d0sQiNXUQ9zakquZ/sT3yJcbNK9bnDLVoha0yslGRMf
	 PRvdZRetCi28A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93762C5620A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160229359.7949.18394201335662726311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0113d40ab2f376608c52f51f07828caa76f748bc05a32b4d0a95befd8f153a
Date: Fri, 20 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771602293
