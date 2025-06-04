Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D6328D822
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749029394; cv=none; b=HwLKNcctEoceEt4Mu75a+zzFSz/ET8vb68Y6ztc4HRWAVWe/AN9BdaSca+FP9dwBaMgw4pG0RvaMQNgox8ebbCdIScEP0Tn7bNIyIZhiOy5TqOchqcZoLztme65UoPdd9gcxCkAOVn0lnrBM7yrRUyA7w/qJPCP5wHe2yl5Viiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749029394; c=relaxed/simple;
	bh=I/c5zyGWRzdjmF9Vr7jocY16GqCefKMwPq6DODlWCIo=;
	h=To:Subject:From:Message-Id:Date; b=cQalDhAgvcCzhmhaYPazbi0lZGnLMnYKkRdQJYJ1jhsYTzBIzU02Mk+6EG1IqQcznG2pQVd6K0t6OiPWbZpe0rhOrvdUtbEpaFiHcAxq2UvBfY5kjHfSbcxMF7KTCilzCvkd0964KvK29j+sjMWMJfv/CZ/VOlJf35JtuwjGfJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsEp3+S1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsEp3+S1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBE0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749029393;
	bh=I/c5zyGWRzdjmF9Vr7jocY16GqCefKMwPq6DODlWCIo=;
	h=To:Subject:From:Date:From;
	b=JsEp3+S1WG/GAAJLD/bec9QGoYd1ONGPh6kOABwoybDsQzlkYDWcSn+0g2QRC4jGU
	 aK1JWhuvCtw9to+oF26i5lIayq0VdK51zH+21D1TSRXykL23nbl6mMAPTIP6RjI9r/
	 7eHS4KRWD4Od8DXbRPulQ9EZIOqhn4Mz4jsQ9ZyMgA8QWnQWPcXY0mIH1SHg2cH/aM
	 AoVrkzHbc5NxmqU9oXhggcT0ZMlneHoHuLZLdTq3IiGBr8aHMqy16Bmy8I6IBFqlIQ
	 lEO4CLk78re7lEQuQ4cWgOHmB19/dO4eqs3KY+14g11QGW/XwvyP+7EViW9TcgTa+V
	 uuxyhghnAZm2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A6C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902939359.8489.7143181635352892510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e633af908ad860fc3be40a93c8a25d03e2777b02832fb216405180eade60129a
Date: Wed, 04 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749029393
