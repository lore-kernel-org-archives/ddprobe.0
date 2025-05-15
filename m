Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5372AD25
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747283994; cv=none; b=bvavMbj5XQcwL0ajLGJt+mpjfpzXOUdKuHU45GPraWgfX0iPSDnUuNQZlC5NUtxif7uh4R1lKaZDYFcmiC9g/Xs8cLvH6cKBwmNTmn7rdmniIyjjUpa9LlnRmEh5wwo2+pR54IalSXXSfTcNWXOMxV0EHe4MpusUH3uosmpbsjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747283994; c=relaxed/simple;
	bh=tn2DU9YL9M2nT8T2FdLN/2MnF1bNe6k+speyCoRZ2f0=;
	h=To:Subject:From:Message-Id:Date; b=XC+BULLsf4FzDMjoVIyqO7gpPwLBdUbgSXBZOea5QuJSyU6nKXZxyddeEONFadTlKuLhEqwrbW1Sub/zvUCddUq3pMgBzgg2bafhbEtAsRdvYbeRGgjliXYBCkzyBTxngUmRsn+tlH8N8Spr7Eh6xFiskY1+J60MY6qF+yuUB+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad1j1KMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad1j1KMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC73AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747283993;
	bh=tn2DU9YL9M2nT8T2FdLN/2MnF1bNe6k+speyCoRZ2f0=;
	h=To:Subject:From:Date:From;
	b=Ad1j1KMYWts8Kq3yEPoggg/YH3ZEgF4A2GW1LtoR06rUZXl1whHOEY3wAkkMdw0W2
	 iEJZX9BZJs8lZYlqye8BvKsKafjXDnNKyKvN5vFahx4nLVFQhv3brYWiuTA49Pyers
	 rkWOPGbEs4RA0wYOmAziakMFScn43v9l1GxM3nLW5GUtwx6nVkrXw8G6osSr2VPR8R
	 EPpX2mNOARr2TZuvEba052ifPvzhvEvy0JnsC4G4Zus8n+iri5AVxmicNA2UGaqszD
	 KaidJLzIKop0JCgGyC3XBYoMMqgWQnh52+4AnQwjMegUad856KvYQ5uO6/Auoschyb
	 gTuTGZgLaMUrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A00C3ABC3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728399360.20214.1695436824345142293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc5b359e1246b55e48555051bc24af7a91708c9395219bfd8f9f8abcc294063
Date: Thu, 15 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747283993
