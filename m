Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688F63D81
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737859554; cv=none; b=n6wpjGjrUM6jsNnbK/RFcuxSGRIT48e83A6A7gD2e3Eplc07AdIY/N/7NKbmaJeAoLLFRcj+S/swLuvIW4McKpPO5WgpltwOYPOp+q4fqYqVIPnw7DAnWF2HdancH4Rh9EQE37zJJBH82R13LRN46mHvxgh+EBnZ0foAqMXBo08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737859554; c=relaxed/simple;
	bh=/6+f1qdMXZFxSJnUmBgndY/Pk9osSTb6m7io1xZrTcE=;
	h=To:Subject:From:Message-Id:Date; b=u3bCSOgarCvy2cJyms+1tF+5HRcfLOLP6TW4IKYqBXf5aAe2GPHvOvKAZaKd6olJoBjTEKQd3LxxAZJhgPbxJEmsW6bWDwj6PyrqNWRN9Ny8xP4fgFRmT1RfmWaGslzmh36k5hvudUokDBKqDfjRUoB+RrJ829VxYAfWUsdWwIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdR2AnA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdR2AnA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5529C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737859553;
	bh=/6+f1qdMXZFxSJnUmBgndY/Pk9osSTb6m7io1xZrTcE=;
	h=To:Subject:From:Date:From;
	b=CdR2AnA0D+v05pY4fPQ7ntKpIurNUBZ2jBtY7WIDSkVkj2BPlWLV95BKhqkweICPe
	 BNNwUUstZQU73M5MqVxXPoZYDdX+xXJEtL66d8nVIhpRpjvAs44YDw1kLXLqlj1oW7
	 SLEvSbztdqLhP62hawiP58msf+QkAVQLzupGd2pZuSE9OezNG4+azs8Ca6tU3YpTVn
	 4ZcD9F+mBaZfPDKPR7cVJfrh3S5L4Ts8/SCAb6X1G07HRHnNieJgDy4v0tzmnfL4yb
	 jjOjrS2JmnG6dIOV6t/+5iZpkkSdWFQ3cN5MJfjEKxAuXri3twZZvfo7iO+7cGbS5X
	 Agvry/lt7BqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9608EC0218C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173785955358.26988.2548185437072208120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2384a8c84342cbc41b947120581450f419910230b047419283528be4420adb
Date: Sun, 26 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737859553
