Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2820F2222CA
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767573834; cv=none; b=qs7uYASPp8mDtfrZiuEOXx7vpnObgLQxoyg3XimsA+6H9dcf81ZioUBt7loaknrV+bq6ItewUwOrugyBCh76oFH1NcFaedYK7cUn3C2zjerYJ4uezJW42YJa3T9z1oNSs+l4GPV8awHPw26rTM8o67I7rYEju0RXjDs+Qg78eCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767573834; c=relaxed/simple;
	bh=y+swTVrX1FIfyhrqH/V08hxVUlxQfxCrs07xmsA84gE=;
	h=To:Subject:From:Message-Id:Date; b=W71B9D+ncICRPjmU7ZGdZ32qQt0I8wLXCFivH/CleXi6v8Wq2Pr48HCftAacRL5MA1oU8P6qubvX2glFcW6BpT8NeWRIy/om4EO2RLSu9atB6zll0JNJ05Q+q1g/m6y/A2UhWDRIAVS1EI3sESWcQeXxMD8IenKKA0mV2MMDGlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZ3JmV0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZ3JmV0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04EBC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767573833;
	bh=y+swTVrX1FIfyhrqH/V08hxVUlxQfxCrs07xmsA84gE=;
	h=To:Subject:From:Date:From;
	b=LZ3JmV0yLSsjc3C8PaTjzCv1AIn82UIiFhipWN6mrnXUPktrzb/7z50u/wVmDCcle
	 wEitCtOsu0DJEotIYD+zfZrhBR83RjbOxO2MWZEurf7uDloGZn0OkcYQLutnAbZx7Y
	 HKklohoUBMDUW2jOlBTRPqrDcqtgV9+AS6nffkf+FFkLX2wwGGU1D9JYAK7njeOuCJ
	 zdmbOQHpzpm5aO6bnuCSL1/ZkX6BRVHTMIsiC9iomvWQ+2hCG0PpyBY3la5ghOTLB0
	 y1kVH+ksl1M9YuSyx+JreU10c6kiEfYnWgWH2pvOmaOioAfSsRF+hFxeYMUleBIvyn
	 QPsZPDPJCoXvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED63C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757383357.25970.11511113397335776169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e85c78bb3b1db6a75071fcbe24a1469a87114084885f817fa3dd091b48d0e9
Date: Mon, 05 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767573833
