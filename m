Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDEE3DCDA4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786371034; cv=none; b=O8S7LWoq/k8H2iPWY7Fu3GiczRVhMaMP70tK+e3+hmrnK9i7K142ib92mN7f9lVtRN7x4yBp8HRxF5Q4ee5nXVoezoLFg4/AW94pF7QdV/ymTcwlnUQFSDENGOEZpVykAvTH+tVtYKmrXLRAF5gjgJTvTGM52fa7SRwCY5EXzNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786371034; c=relaxed/simple;
	bh=POQEm/oeyW+W7/rn/MLZ431+fu5wRmuH0dMH2zaljQE=;
	h=To:Subject:From:Message-Id:Date; b=czZ7w+PBRNXLHdq0xNbYlGHNJfGVhC3aUNXaWOG3PpeOGub4DJ8qDXy//QItDmO0FSDc0PmDy4kMqeHY1cbiUB2RJQTGMqZt7YsOHrqg7hWuCdjiYUnadvGRdqZJLmqbiiNQUn+9JyIJLtgju4N0k/2fLm1A8MK7gw73i2GuJVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2XPaUdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2XPaUdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD820C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786371033;
	bh=POQEm/oeyW+W7/rn/MLZ431+fu5wRmuH0dMH2zaljQE=;
	h=To:Subject:From:Date:From;
	b=l2XPaUduCCqqWFcnEPgM5QAvF7DvXcA0fL6yimJ4F+cS08KSNlG1JaRCceSKGt4IX
	 tY1kY75I/5pGH9e93ISy+GNKa3SRxfRTXTBy9aWp1/fZnBpdaNX3hg+d6X7IuQERq5
	 rZo7kvB0t6T0WdDTL9ra1W6WRLl7tsqIPkXn1qIw/Je9GBbtTlj/ygzyv+GEM0YN8o
	 KZBhiGVgXMYpJReP5vldUrznW9ntnhLrmh7rcwUxr0doVKcr2AyBNP3LZrjw6P+eGU
	 U1gr00eDH3VoXSCa+XhtnuXXKpA7zJWyVQuO6u89yydF6bO7GcbLmEVMRgP2B1pLpO
	 PcVVGaxrCVmvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA452C5AE49
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637103368.11756.14915693860158457251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61903f8b81b23c16c31364f9028f668af2790301fd8ecea3aedb260ae788da1e
Date: Mon, 10 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786371033
