Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BD637AA81
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782800314; cv=none; b=eAupoum2UQEdmoMO9iJwHtwNfh1nAP90qOiKAgTmlmM8KJdizZwSsivkC1CtuobuWJ8vg/tPdsnthBJPByo6spXcORX7g5UET9NsvvgUDA4rwmeusOagY7LrHpioaEL04ETyVUf2ziq1lr70+HBp6/n4VzUebDNcxws3+P4w2Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782800314; c=relaxed/simple;
	bh=ykhv71RMSVBAbEZW4IYGxl2R9V/PDiZcUhnW1mVZibs=;
	h=To:Subject:From:Message-Id:Date; b=E6bXQwqdaX3YZjalrnEZL7gYqtdw7hXO58NUJkN3FB75SjFGhm56/FCkNL/QMudhQWQH2tQKTu81yuo9C3u7ir12KP8bvYUyhycdQ8LiWOycmtwrezKLNWzG5hNSuC1cQ/SbaA3gJ6QTZLOBdACuvhbekQPCHYj1ivlUY5OXF0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaApbkcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaApbkcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1586C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782800313;
	bh=ykhv71RMSVBAbEZW4IYGxl2R9V/PDiZcUhnW1mVZibs=;
	h=To:Subject:From:Date:From;
	b=eaApbkcx9q4C0ezhnTXbr00aYfTmboGtsWNVWxxcfyC2/tNfcPTalI/pyfoh8AsL2
	 ISA6VLxiOi/8mjRH+f/HninBNUF6cZu5jUNg2HEHSDIKk6ydlHyxpuHDLVqhlRDxss
	 oGa0h0pp3nrhms+hmQhnpZ9e6ru3H9dxRv3BFxjyR9DeBdx9j9wo4dYWpyDmdM9PwP
	 eQ/CnC4m91lq6PnDLsFs80Hur7ibNIzK+usZ4Wq3zBPPkS1e6u55jwaTyIS1aDEZRB
	 wNXRD4YZXgOdI6nnypnQG9k3QKbk29vmyW4dkB2wVvxILTOmul6zZitn9SWFlie4Ew
	 c0jI+JN7hOUCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92E4C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280031368.20637.15797178049698229592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22ac6a2f62f5a3b668ca8ce76a3246067deea64d83166964cf2fbd62a4190f2f
Date: Tue, 30 Jun 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782800313
