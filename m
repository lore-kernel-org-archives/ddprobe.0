Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A72366
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743872994; cv=none; b=Vj7sgAF+BfMCSfU52UjthtrqWK7k297Ih3i7fzelZ236XRssH+fg0XUGGWbslo74ctZIWWP4UiDrcbEg9VmnSysHG5KYvbCEmL/RPEgVukjRTRNdHiqoHg7IF/6OqaQIj1+cCKUOGIrQESK0twfF0wOJeKLhEOHV/s5W5Ixnl5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743872994; c=relaxed/simple;
	bh=Ztm6RIK53pnWIwPvmXQXnsCd0m8JJfh5dsdfrJw6EoA=;
	h=To:Subject:From:Message-Id:Date; b=KNOKEzqkqxGiDSo6YgJCDwbIBPSZ4QBG+OtksxCcwB/YhqJeBsHj85n1a1BTPnv53JdE4o8HE4NIg6IZ26rCRJl13IcsRno8cOCGRDG9ZZAWN16U1z8UQ3j0scA+RfnGY/jIWrasHyY1MNNXAf98Ywek1D9zSuZGbFHXFW7VLPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXK+qmcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXK+qmcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55C1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743872993;
	bh=Ztm6RIK53pnWIwPvmXQXnsCd0m8JJfh5dsdfrJw6EoA=;
	h=To:Subject:From:Date:From;
	b=RXK+qmcZbisTXltFLSKlwD6JWGMLqQjvVqQVMtWRU/SQoRFL1FPOu3sSGuYZmTVoZ
	 dnUpkpnSD8ck2BT5hb/nEFGblU45t8R00NjCyLVd5BSJJfNwHPTmDNGLrqhwWAf9gr
	 FkPhtmDS7ouuezsHUeO7R3NMPQWwC7aJJl4y4eUD00VKJKAw9iiJi8dHJF3nHBRMut
	 VJA1edGA9gSjpxXbQ6hSWFGfQp0Ti0GVXdVhriJUEkFwAx629joodLoVYRJcfhTsK5
	 /6qizcT+cCM6HrlxNCwO8DOVbYiRVuaFaSuafPzfCYy3x4hs5Yliv0mYPmUj/RX7yY
	 /AnDFkb94CrhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930B1C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387299358.16004.16698726221604059726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c1b08375df5f5f4f41c4129ab9dc1e13559d7e229159bb834a3bab75bfe016
Date: Sat, 05 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743872993
