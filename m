Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B823267F5B
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741879735; cv=none; b=se5+wPPiNxJtHmSjeQt5PNoMtqrcSGWnbisw1BRS1nOzvKL8Yv1XWkCunxfiBNl7NtwSOuN90n6sKSiKb1yE7LCC7QSBT6cyftOcb410I3QqCoSZYwNNPv7HVJ9Z11OK6HHONtYM4DvaUyexpYJ7GSWSU857vQJMtfbaZ+IQ4d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741879735; c=relaxed/simple;
	bh=JYL8GM22PEVpfC+OQRhysyKFs/jAHyEY8T7faNJwCg4=;
	h=To:Subject:From:Message-Id:Date; b=GgF7fNcdpRbLo7/UPVSYnhnigVCPCBrcnd/cJJ+AfFBfSlKtA5mpcx7QCEU/CAjGZaYEkbM95TBUNvKgvTU3seWmTb5g98eC0rCmjG9XC2Ly6Nl+e6n5KBoEw0MUEt+VvkefduWSP6koYguEjz7pgGx5L20GNfLP6pfO2pn0snI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqpCJGhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqpCJGhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D58C4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741879733;
	bh=JYL8GM22PEVpfC+OQRhysyKFs/jAHyEY8T7faNJwCg4=;
	h=To:Subject:From:Date:From;
	b=aqpCJGhL39rN2ZPY+IfzaMN61ErXGus8Pgh2xluKQFp95l+eInaHqfebj5fHKStk1
	 S+gwJxQkDweXVFn158tNTHKfNhyHuf45mSOeGFlpbShrJm1V1Mz+loYgEBw1v1Tehy
	 buunYNj9lH+Bc3+Agg1mGisvpDMahAQcLhaxCmYoVvJRF3o3c75ntxpkqBZpO2edGX
	 F7bJkhAoTAUGcBb7CG7TCr4f2v2CruoU0YRzXifPmXRkt8GpqmLfGjQVo0LfXhJ4zQ
	 ciX59L7Zw4ON6EObEPQ8C8fg7hvKyX0SooyHR8dKMK0xeBpVritCg2mPpsemFbHvDe
	 HCbf7n8RC2Icw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950F4C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174187973360.23296.13003574491113088471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3353adb4eecd308f933dffe2da778061ce7227d58340b7145a6f9a05d8854ba
Date: Thu, 13 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741879733
