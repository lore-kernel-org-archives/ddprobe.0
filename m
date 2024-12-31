Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248CB19E999
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735661754; cv=none; b=fmU6XJUtUTUamNFUpOyg0CCXjObD33WKfhCu3W9rAU/9qm6hx+oFM9gdZfCPUjNR1NXxmxy/rTaoPWmURqrGvczOO+KF0EXjdoSEUzI1ffA5iP3WSTaG5UrUN7slzFccV9jWoubDjyZ9PQJcfC1evqTFAfE58OB1hLaWFb3Lpgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735661754; c=relaxed/simple;
	bh=jMoMXXk6rpswe7w/EuGVikSnEm9+4LOJmpEZtp3gmZs=;
	h=To:Subject:From:Message-Id:Date; b=XpcClhDogRG9HNy46JRHf46tXekVhjdZZkNGh4yL2oiK4nZKYTG3prnfhBXolvx4uBTL3c/fABz7g+7tZuDfjktsCEMNzXaYOC1OKU6Geo8L3Bghd36oEkqbCy1Y6sstMh3S5cm8b5wx7dG2pYuQosoD+PEvLW9Afm4XiHZLLnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWfD1kBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWfD1kBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D9C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735661753;
	bh=jMoMXXk6rpswe7w/EuGVikSnEm9+4LOJmpEZtp3gmZs=;
	h=To:Subject:From:Date:From;
	b=WWfD1kBAXa3uUyLa6sV/3JG4HtYYQYgwXlhtqRey/j7TSwpnVasd1ogBa1Qwyvp2B
	 PzJJl3rx2yXBlWxpoYB8KNfcm5z9CX/0aXmtJuMhWujUyRZuLUJe+ixPDiUZ5TvXMQ
	 pHLpihZpOdB1zBrjsnL09QnBRqC/WWDTEDzjueHuYGaKbCrRs2qPdyqXRi71pXIdXa
	 W2n50aXkwszFYEO4FYMrIxiC3lKXKXPmYpMNNRdv1X6CtbbQfi3L+7HGp9eaPwoUVe
	 +xsKRaU6untRCgzKR4Be+jVV89awQ+9DwO3NYYXZ0KWlqBHxwqGcWr914RxwnF7Nft
	 70NEgIxH5uRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93784E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173566175359.425.18139762010463596922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02489e51ed6bd478dd60b140aa4e21fd9923c565f9f900220666639c5cd1e66
Date: Tue, 31 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735661753
