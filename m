Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42E83BB52
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710518297; cv=none; b=EgXA2jGMkpkz2E2rNZ5RWtZBkgyFvRc0rZ7n6+2nMRXUHPO1fOoCS69lYRUo7dn1hUdQV2TH+6frxt7fdo91aWWoUwG5+b99JUOFRr35yD0IEOkBz+v3sjbALCcZ9LHr1pyMoOxYCvQQArFmVUmH+X+uNTqomtTeFjXN0sovKsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710518297; c=relaxed/simple;
	bh=N2yMgg7KU+7IF8MQnEW6eTDJzDNJuHplexDxHeWaEIg=;
	h=To:Subject:From:Message-Id:Date; b=MAHpHP7V3O+a1tY6r+F6CSQ8CVlQLfYCMZYJp7GY5FCZOmksOfxnfZHfjZUUhO/QYX5ppvdHTcztNmn0wBLeVw2xeheOImv9ZYMFik5/WfQNDXR9cblE47l1/chYpfywUaYfDRN76OAKtq79p0gA4FK5XMGlY+8mN720BegSQBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qxo6szzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qxo6szzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA92C433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710518296;
	bh=N2yMgg7KU+7IF8MQnEW6eTDJzDNJuHplexDxHeWaEIg=;
	h=To:Subject:From:Date:From;
	b=Qxo6szzGd6aZYM2+mpCTnhmQkx9tdFT6t/SDSeNFagq4VgpZzg0nWB9dNOdtF1Ffb
	 lYeuuf1/TvVLoLuYxEx+GVGoYT2jGCTuzfaoNpkgU39+WGj9R0oRhLhElrgeYWAaVl
	 K83bGxU3CgZ1efZO+qHpYVgUWYUqRYuHlspeCs/4qZsjo0UVVp3COzX0BYwPeYFl85
	 d3NQuzFuLhrpyIFBoMvY3npbwDUCzufNqtpomz8cSTrn5HFZuFze2uTGrk3cyYyC+R
	 WAE/kNjYfhop2HPWUhTAcEH2hrYt5RIQda4b/jbKu/SZvKRqlggcX/0WzpZlrK1DxE
	 fenXBHB6YYaZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C68DC54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171051829637.4984.18002832005339070528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454f367bb2b757c48c5ca42f442c6f00a1fed70ce7c3e904417beea7a69b4410
Date: Fri, 15 Mar 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710518296
