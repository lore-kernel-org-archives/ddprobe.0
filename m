Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2924B1400C
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761091794; cv=none; b=XeFy/P80dMpoWnFGvTojhnGp0Lltm27WMD1fIUQvOihdbYe7XniFEgBnd/+okpm+YnVW8F5CGnGUiGYY9IwbwjQC+/NqfK4VwAWEUv3oTq9HYhTOYDz28silJhHyUMXufHGt8uBzhRw2UvLxUer2c2mw2m4Lsbxq4XL1za/FE08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761091794; c=relaxed/simple;
	bh=WwTKxwc4/vc7j3t+aUZOlPsdPuZ2w4wKsBWST9WoKFI=;
	h=To:Subject:From:Message-Id:Date; b=o8s8FCc0qllmR4BKsHuSXopdKAdByGJjIW9tMxCzQ4J/tv+DaQcYpy5Oq5JgqTzjvaeWsOHJMbNDk8x4PHjb0ts8sSUv7byR22LGI1hu1OHRwGInPhoZ0G0syhp5nDVmUAhYRTW6A2Y/moQZHDlBXicEAxqLfqdiF688NF9Sid0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuBH3xF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuBH3xF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70DBC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761091793;
	bh=WwTKxwc4/vc7j3t+aUZOlPsdPuZ2w4wKsBWST9WoKFI=;
	h=To:Subject:From:Date:From;
	b=kuBH3xF9npQiSHFxKebbNn4Vb/q7I3I8An2s77jAaZYisenO2XJn2dO7DBayixLDe
	 Z+ionIOws4NTqtLkTtHKJDsZc2+dJFiWPJapz++IyN9eLxafZufPmEU+ZJKHqUi1XM
	 u9kYVmood7xj8FHJWOO3eWaceka2JPqRkl4+Mj4TwthFPJAK7qlnq5oMAE2jsTp8Lh
	 ZHRD586qTSQUk/pnl6hAbqMDs3Qrk5tsAdD/S4qGIgswMCKXRfWWHfW+gNljOi3Ta9
	 FrfJAOwbneZjvcj/atcA8MwGTfbB7jOk+dLQkt2YQM7JbW0DHUtuH/2NdN+qQy3Mh0
	 pvx6fh6m2tPJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93983CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109179358.7623.9489042839676376635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a5a02917500f60dd8e776f82cb85885e5d036e15fa1c94a06d6d9e0f70d2ce
Date: Wed, 22 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761091793
