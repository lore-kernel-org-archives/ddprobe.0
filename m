Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3318714A4E1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735965954; cv=none; b=lzt9ysPi/Pg+LU7sHfK/gnMSFF4ZZVlaX3H9myjykfqxfgzM8+Mfj6FwPDITXL7ppYoUT8poCQGf79+pCu0encvJ/aSdrz8E+v6EcyDNqPVV8ISFeLKhJ1huwyA7nmqTh6hE3mPIUNdV9iolU8I43NK+xyA/qXi3LKJcw6M9yxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735965954; c=relaxed/simple;
	bh=jmbR3yjBl/B4CbSZgkizybFYi8NBKEr4ojEHI6fN+5E=;
	h=To:Subject:From:Message-Id:Date; b=XhO7pjJjzQuOmpRUOKYCT3nJrxPGyrbzkM3ZLKrZkJeuU2APYjWo6nfcekxtfrJoLrSatqse0sBusnKecshhXZsPycPzeXwtHYJGUMkMQ5COlcSBup66tUjwgJ1TZyZmllz/r07phyZcSgL1eHuaYt0ODtzQRxdvAWD1ttTJNSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgH7r5WC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgH7r5WC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A840EC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735965953;
	bh=jmbR3yjBl/B4CbSZgkizybFYi8NBKEr4ojEHI6fN+5E=;
	h=To:Subject:From:Date:From;
	b=lgH7r5WCafOTjT9XR30rEPVqg1CbWqqR7/k7AfCJ2y6l+qxM+M/58gycQk3jtZFDl
	 HLa7VGSCPvzt6zeqVcu2jFpedBLqyjLbcR38OsrVbpjxEbLPUqDrd1sw4y38qBkMc0
	 RoRESrZKnIPOrNvqcIc+zteBi1xDRQxLU1OE2DjTZslk2VlMMVjeZT5hpIBpvIi0/X
	 6vta/V8KEbTj45mGKaqrXBNo3G+L8FsynbaAOKZXJpWqwUbe7bpO5Q1Y9aHZD0cro8
	 EJfNYe8p3Onui9YyjRyCJUOywcSlkS1KRXZIDg5tH6Z2H1vR82DRXbSkvzJh+QIOcO
	 IbOhu/g8/JZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92039E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596595358.14206.2140807387961004054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6d515ac436b3986cf21563b06a7cccc425f484fd3452d5f3901067abd61d07
Date: Sat, 04 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735965953
