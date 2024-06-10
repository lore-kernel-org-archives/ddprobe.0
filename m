Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632DC558A0
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718009843; cv=none; b=Eiw8PfD0skUrv+triRugidSH6iVbeN31L+IMYjTSTPIRk1O1GlRJdFNAYxGYj9uIEcqqhPq45uJptKfDzDe/b+v1SJ4oxSLqLLUWoJYXNgzdNiSptl9+x1cNdGCo44SpcVFQ27sg9CA8BmoT/eASx42INBhoDrqcp0I2gGNFTQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718009843; c=relaxed/simple;
	bh=n3co5W3irpCACCShg4MyeOsoYgM7Z9Z2kXf28f2hPjw=;
	h=To:Subject:From:Message-Id:Date; b=QYDjeY8TiaE/l07fJxaGO6aXDo+23K4LLj0X6OjnjvSVysHrGskaUNN0d+4juEB+0TkUtOqcfIcqIE7KiSnbSNCJQx7CMBYXvrrCHvkf+G2zHtUaGhrlSEBWURcyntuxpkrh75ynf9V+rFXxRl3rZq81FlEg1XUxyIbPMwg+Ew8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfhJO2MH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfhJO2MH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84EDC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718009842;
	bh=n3co5W3irpCACCShg4MyeOsoYgM7Z9Z2kXf28f2hPjw=;
	h=To:Subject:From:Date:From;
	b=TfhJO2MHzcx8RxgFgZDgJq2Noe9h3G3QsjzaEoBa0hw7tcvD20CwTtWgkmFMpqwCx
	 n1l1mvhLeVk7lUxEc3R9fmKg23bFtxKtLA1qRUPq5/6tQhdNnXupHt2bWWGqahRbJf
	 AavVrxzi2fpvlo76lIaXGf1arv83x5osnuwNr0KozzTsAfFaRJxp6I7nMOEnKusl4p
	 nak4Qbd9yaC/yxT4Npa1qjQ8wv1zfiUUSoaZBljeMj1NEhRJglI0FKBcJrHjAv8YjX
	 rPPk1itVSwYXL/552CZ3AUdzoP5W0CoUfMFc7Meic6f7RUs88EgYJVJHWnMk57oGgK
	 L0u02xTcKuN/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C402CC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800984279.14888.10386342885024637913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cacae676d75cc9c5f732eb450f4d0af65c256bdd11c5a167ae1a1ef0fb085f21
Date: Mon, 10 Jun 2024 08:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718009842
