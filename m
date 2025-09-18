Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAB52582
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758195594; cv=none; b=CONIp3lGIGIxN7Pa+UC3p3QL4pZFnO62nTN7yihbUXlJMAROOE36xGCkxYHFXrMt2X2SgJrpv1EM/jA5L9JrwEfXI3d/CAs1xQGaRjR94vQC5L9LZtL+DIxisvCcfDwJ94Pn/CGo7OvxwUZ3Qrx2xF5EDbdG/6Mzv0YcWXrhWmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758195594; c=relaxed/simple;
	bh=g69AhBWzjwdjfA89syOozmj5Sf0cU/FDatALq64jPNE=;
	h=To:Subject:From:Message-Id:Date; b=leBUS/ORRYTKRb1yXkTICxUmuw3v+x38CB3ZSs3kNBGDEQD/1ExGtKCw4dOsEXzRYU0lqtnWHK4oJD56UuKZ6Ujlj16neLKX+ybO26UBI+qdiN2nYSQKl3XGqnrx7tf0zZPbWoKJ/kUzWGP157TitSP3vwQ73I0ZWh8AG+m8KmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNjlslx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNjlslx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A44C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758195593;
	bh=g69AhBWzjwdjfA89syOozmj5Sf0cU/FDatALq64jPNE=;
	h=To:Subject:From:Date:From;
	b=gNjlslx27kl907TciC8RLdJOyLjrDTSfuHcfOHval/fl+Yvy/b8CsTTHIVhXZ4cfi
	 M9wJtF3dJO+S4jKeqI2+ULAC+nlZ+4s2qHv/AiBrmaDBDzvei3veS/9SAY794g1BTs
	 uESQRFni1XQPp+kQdWwEVN4ko3qQRInkdyAZyJAuRleprm4F/gCA6T98SJkPhJ1Gde
	 4sFqqm9b1DG7LZPoC9iqfs6wl30hWNuKlwz9OKZG08eHY1tDBf6lFJ7WzaD1WRi7Il
	 QmL0hiBLlVeXYPiAJkdW6bOSmCKs0AAAGzJivab/bJTh72P/8Uci6WS5E3FZwCv76A
	 nHp3Riau7hy7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF3FCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819559362.31525.14981668143742618131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca045fd1108ae780bea312aee7a110b4f2e4e1b1101d93b6b99dc863e881f4e
Date: Thu, 18 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758195593
