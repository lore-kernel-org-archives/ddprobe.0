Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EF230146E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760551794; cv=none; b=BRIUcfSU2BfqZl9ERHpJLGHYF/Tc68Av+tunypAOPv1aMlYRW94IkpjVCro/wyTI4T/mYGPcAL4jRsswlNKseo6pauTtiLFXycWugESF2S/ygtF0whKgldn9PiKO9B3XsAGU7DcyXYGQoHo5qOqXtuN4VCeTxfUGY6U+aja7xVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760551794; c=relaxed/simple;
	bh=aMvkNEzXIGufy8abXyQiwQHJ6pcuOXAOKptkVEQgJX4=;
	h=To:Subject:From:Message-Id:Date; b=FRiXtQumbDv+f2pkI/StdbCKvaW+71Hnqg+Wycl9mr2faEiEgxV5HccFhK/Ay7BVdAbGmoKCD7H+WafcJJqdZalOpceA8SYXaboAQXrRPCexuL5HfEvMUHje8gih3OWaZzVpwDpl/XEiYdt9KrI7OgI2k8ILC4yYCSV9/ScSoeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQeR5jW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQeR5jW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83BCC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760551793;
	bh=aMvkNEzXIGufy8abXyQiwQHJ6pcuOXAOKptkVEQgJX4=;
	h=To:Subject:From:Date:From;
	b=oQeR5jW92YT7a+/CeTTaXWu5Pb6bShBp6oVAIHEF8g9aY3NKl98Ay0LDfsERMNNu0
	 wlL59PdIosdyCfOEgWmQ+dPX7rdN09wL9mAH1+oSQRM9t/FYc4eoUHq9md2RfQ36z4
	 bphwi0HHqQcR7oWQaz4j3co6SDUa1M8HO0Lggag22EcbBEwrnA/fL8d0igUoFy4KJ4
	 /hxT/LZ0An5bqvowFMx6y1eG4YeCJpQW3BvmL/PvB+T6IEEjsIIjy42myJ01wCmDYN
	 /+Oh4BM7/hTIkkRsbI23/GGNbQQj8dSc+A2GRjAifYMb4sBh0faqBN7k2kudQKQR/c
	 27+i7vptLcZ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C1CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055179357.25789.4610847522862520427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a1f5c52af91ed54e256a33a56141127a8a469781d9fa7766150d53282f651b
Date: Wed, 15 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760551793
