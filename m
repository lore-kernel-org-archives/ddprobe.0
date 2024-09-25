Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409F01A38F2
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727306754; cv=none; b=gs1svMBIWPK2NYv7FyccLX8homMDJQ5Xoq5eLve6rmsi1n8k+WSOwkrqDGIQg74pNLSXmLlT6wP84R3EOaYWMgVlmqFU3YNuXo9zmp+CAvRndHXXxyp49nmBZdeBa5MxmN39zfRMdLnHlJk2GPjBy+ECNQ41ynndcmH4sJkF41g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727306754; c=relaxed/simple;
	bh=0/ywxYCGSOj95lHyORpdJwFd7jCEV5+MiZ/0ehN3zYo=;
	h=To:Subject:From:Message-Id:Date; b=IF9SlMNMWUQqZX2m+KyLEqlp2+QraAaBcZYn2YUDqGeV6w/M3vtBdufO9ARtpQrWzl3r/cV9dkZTKvJwSAY+tcRkc+UOWugb1tTeMTk4vmx1saATstbSp6gypQbnF4xS/uu51KYEbUQzS3qhujNAg4VTZSOcKjwqYUqJshBVUfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NexzmqzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NexzmqzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E87C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727306753;
	bh=0/ywxYCGSOj95lHyORpdJwFd7jCEV5+MiZ/0ehN3zYo=;
	h=To:Subject:From:Date:From;
	b=NexzmqzWxb71vRyzaoWu7+iwEiVBrFXKg5AO4xnQnk/+QhyY7WAOMGWmYmV6xa4Sm
	 ylZOwo9wXJN0G0JNVBCNvYKOb6XfuIgU2j6tMj/Uvj5DuAYlKWDN/nszeV7ebXvZPh
	 fL7iyoIwsiWpQjkQpGOGlxqHedOIWftatDj14cch7r39ZLShZKeDtqWv4dw91fWnu7
	 jGAhiQjaVHvx1HmiYHDiD+Ve/TwV3+xSi7XCttb9TfhQbOAsntIAhvhFjjc3NAzElt
	 xU3n5UKpjumC5yTbEg7NZq+Ak1YuBoQy6oAAY2TzfdIcfWemGIIt2p9QNmGINpJfFR
	 lYptfIUA9lRnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94375CCFA06
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730675359.31910.1521594821043776603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8822f1c10707c00661744767e426f2301af67d894bde0c117b7ba638d3c2ee
Date: Wed, 25 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727306753
