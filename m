Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C470814
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733163954; cv=none; b=mIrLbnFNeGsxnJNKswI5RI/sh6owNeWlJY674fcqNHYIWA1YYUuVAxGgId7XJqS2mXMppXrEh6+1aCrDB5Evsxo/ufLAagyb0JTHAklE/ZR9fjKGYlQRoMu2qntRcEXDq7O3t4AwUhKK6RIwNM/xOX5VJW04HzX5Palu6WG2ASQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733163954; c=relaxed/simple;
	bh=UTyxur3Z1rSHly3oL4Zsf3fQMyKcSa8qrxNX9gdbmfw=;
	h=To:Subject:From:Message-Id:Date; b=n9kwGO/ZNHq9lmxb9QFQw3jVsfRLHMbPk+gVw/SnadNkScskjJoBoVcwYcbZZOffHGwHaz76vd0EfXXOUt2q1UiFtcTvsbP/dibeFEhu5uhUXz5xf7P0yJEYi8da8eoZeKMKfS2buR3Cm5ahUCKLDzb55nfjHxIyqL/NIjdsWL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJ85i+FG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJ85i+FG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFE3C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733163953;
	bh=UTyxur3Z1rSHly3oL4Zsf3fQMyKcSa8qrxNX9gdbmfw=;
	h=To:Subject:From:Date:From;
	b=aJ85i+FG1dSaFCIEgwR3rCnlxU8v05huTku8YkXU4uBK5tD8yG8ZkVBLsta/EZa7y
	 ZsgmeiJG0ExIOdNTV4KYhV7WdJM0FcDgHn7hnwJwPlbrsjflVaqjr2DfcA1rqCYIh3
	 2kYN/Oxbx9ErDg8O2E/4nJ8nWcOH3gI7XLZX7JM4FYXjiI4MkZpoAPMRHXxbN4VFc1
	 VwMtBL3rPkB2zk3GERw+5hX0synPJAe/nfkf0lYfWz8BSWSXM+kpcbX21CCPEm+bOF
	 foTqBtwsJwkPDFDrxscBXK5E/usOxHu/E8K3nO/qEfkEXXnVxfbJXs18GcKSMrvqR+
	 G9AC5uaaJmf5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9578BE69E81
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173316395358.25609.12539945280000841723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d039fa980d3181d13a60743cb255024254ed96bc1a7ea384c66c51ca54418d9
Date: Mon, 02 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733163953
