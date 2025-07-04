Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E19A15C0
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751604594; cv=none; b=kOPUFWf8iVZ6MJ8FRRhAL9UnxbZ+7TFxwCqtzByR4/prVYboCeV5GWhazUlXNSiEsTn4q8zj2aOhVioexeC1XM9XGV2WyrXRWwE9JzfqpN90AN8nKAAfz2jDdizXN0Qji/yW9SznEtoDRNipPx/CWd4juBqhfZfAGoWPyUIt42s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751604594; c=relaxed/simple;
	bh=DAdpa02KaUdan25lI484U5o1sJGkXn4vtF1jjm5c8MA=;
	h=To:Subject:From:Message-Id:Date; b=LnZxytL5Q//vGSx3lUODqreoutv7rracLPyQJvwzhUHWKknPrKSX879tQjRd70urcKI8PMBHHDGp8vALZlxLavsVigfwEaEpoK+RMnO8ThkcjV67PowQxCeTkENdSY9aIcCp7pTfyunR1X5WICEBPIYtBOOxk5zM25Np6UNOsE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFyDm9Dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFyDm9Dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751604593;
	bh=DAdpa02KaUdan25lI484U5o1sJGkXn4vtF1jjm5c8MA=;
	h=To:Subject:From:Date:From;
	b=XFyDm9DtI5TkIVHuthaW5MDfiLAsDwz8RdDSRH0Ea4F3JRZTCNPWnpbXDNMXHfnL3
	 0MUX8893GrY86cTT8hG8sq07ZFz3y6EWmAS/+RPzcB1pKiZsKj6jGf5BBHzA90FRMV
	 HytvINlao1i/Ir7oN8sxF7qf9Hvj7++bam4LSukX4Gunwqd/qq3u6WroTKgh/Rd6hU
	 9H93NHbEVbbkCyIOWnuzgWSlUMteCkvg7zQRSSDkYcozp8tJkuUo9cU1/pIArGL6WU
	 Pko7I4jT/UWzuv6sSacvv7zk61jcy7StDMxu7f9CR6URWUCHWmJs/k8TuKxGn4FIBr
	 t0i/0vJWtos6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EBC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160459357.7544.2203970218750770433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115f16fa728d85b03bf5385ab05275ffbd50bdfddd7bbadd44db8d25c2640711
Date: Fri, 04 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751604593
