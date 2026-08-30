Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FADE286881
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788091834; cv=none; b=dNhM4K49mfFdbnQNQY5v+E+xHcNgDCv2g4+mJq5DH77zskTjqCQlY9bpEtv8hhzVTzIhEZUzbkxkfSZ//UFPJh7hkVHQaonOLdlLH5VnDLuMBesPyR9k8dDo8LCT0QodihaPlN/NFBsskxMJjHnaI1mOj2Ow46TOHbciGBOUeVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788091834; c=relaxed/simple;
	bh=ejPjLEWl4+0nIkrrNtBBlC3gZB1TXPHyfTQm+jloa7Q=;
	h=To:Subject:From:Message-Id:Date; b=QK4kV8ywR+fJaELPLEalBXv1CZw5103LNLyrxLqPJmA3Bl65hf454Ary/xARK3CPDaX0ZWdhQZ92Q4Pn5h7B8PfW+f81IPe/Ugi1BVSki76IlQrPw1b7uo3LKOdg3dX2/37ip2xCADzfDVTpbSDv7KZbk31snTliF0U3ab/IJQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sxcm2+0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sxcm2+0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9490C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788091833;
	bh=ejPjLEWl4+0nIkrrNtBBlC3gZB1TXPHyfTQm+jloa7Q=;
	h=To:Subject:From:Date:From;
	b=Sxcm2+0zcXTXHlBViRknPcuD0PXkzZ090D6WbZxcyoUl+38jU/28ZgQ8qixhWnaag
	 mw+7X9Vqf7v6fk4Hqf368lGN6vzofHcQNbVGgJ3P/c7+wVd311T42IyIdeK6DdAer1
	 SyGyFvQokYYFuzSl7tCoZX1zNi8viM1uTLJN5e5eOtURgF3lFrlkatNbpzCAkJqNRC
	 K1gu9Psp9YEyfTtyRJAwt5SAelky2pgx2Vu/Afin1IaIiciZoA0R10v88HJPycQn1L
	 DZUcaIdsgthmCBxNcpn1fMmAcMqrL/NQPtbEuhNE18fdG3CZLenuDBBCt/9Que+kws
	 uMGAtYOu/ujKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFEBC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809183370.21962.2912951473147556185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36925635f3e50d5c87f6312f1a3d3cfe56a91ba6da75fbfab0447779e0e535fc
Date: Sun, 30 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788091833
