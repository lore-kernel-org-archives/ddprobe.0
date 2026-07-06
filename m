Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5956E3E00AE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783319315; cv=none; b=sFltbOn2LFoOsh4WX8CM37/sPiHCXgA46E87/tj5Sy7GzFJf0xgRdW8oeFxQalQ9cq3HJkeVX11BskLXsu5QCHKlWkSB/9R8hOnlRWd/oQPTao4x5iIFBEB2znn15GY2oPVTb+FlGzlBBQBF1tmcePz1WxZsSQLmHJCXq1ZnEH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783319315; c=relaxed/simple;
	bh=1TT7dCKD7buUdNlnXK2b1Bq392LsSMfqzMfseK7EO7M=;
	h=To:Subject:From:Message-Id:Date; b=O+MkkOHlICBn1S4Xq0OrD7UcJDHB+Y6nkV54GQRBSWobnb/djiDsCFfO8Uu5sEgY32+weoOzKfKeLnvu38EhpT5ZD4EgG1UkkVeV5uhpp9IGbJ2Y56PeE8R8aOL6cqPIvKqliYaqS5T/SB8hLCO/HOg6o1WfnjeJJccw9E65zQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHtJbBf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHtJbBf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB21CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783319313;
	bh=1TT7dCKD7buUdNlnXK2b1Bq392LsSMfqzMfseK7EO7M=;
	h=To:Subject:From:Date:From;
	b=MHtJbBf8hAAVKX1ZKWgQUe1XDZ6qWYumZzcLv6e5eSu9F4lKyfXrBW4N1TIXvLl4j
	 6kBODkmMPk7/lh4QUkytlb3K0o1P6LfcO8KQZmgSNKpN53a23MK+OGYKSlPiTdBMtf
	 DGvPzW9ZX6R80JkQZVEREBebL8+tr2P4YtqwIJi5EF6vEH+B6+Sszk+9oenihnIBdh
	 uoVe7FSwimeWQyPpasAhd1+RLyz0cPCOc00nYDxkV9lS4O205yE3zpzmpk98PqgiCs
	 kRXUP/k+/cFGFXpqRLVI7M7hhf/pZX6Ne5KwX3jevqYpjEsZKeFrfrQiAFsZTEZyzi
	 ZaLH4OAv2jnWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F31C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331931368.26276.12588892020939398601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f29a99c23581e3dbe955d44810e79d78081be292e419c7883400f31d0ee54e4
Date: Mon, 06 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783319313
