Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C471A0BD6
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747429194; cv=none; b=KAn5XZcGCMm2QT6GdarCUwWfjv6AqNxpOjtZtVS+QVfDXbKekLD6l7bkdeJLt2i5xEZ7wFWMVZHceSud7UKVfyTSegfLn5qgQo6YBMKbtKSKkhT/CCTCuXIbYqGUN4OGKXKb5cCWFM1/elCcrtKPMS7IgbdC8rbq3yLLz2mCpGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747429194; c=relaxed/simple;
	bh=WcX2pxPA0TezK2qYIFQU/7BF0iLKGs9XH2laiu0l/W4=;
	h=To:Subject:From:Message-Id:Date; b=WE6JwlI8OV2NiF+I+QFMD9k04/YTNBnrcIazJ/SIHPySM2ZiDJduUhDmJdQzRSp3gwboahvGW19CvE3dcR0OAt7Dpr62ofGp9wG4YTE72kCkuZbvkmIug9lZxOGboXRsQMA7tDZDt5ncDQ4Nhe/nhT65xVks5Uzpzjx/X/aJyEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZdj+tZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZdj+tZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88DDC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747429193;
	bh=WcX2pxPA0TezK2qYIFQU/7BF0iLKGs9XH2laiu0l/W4=;
	h=To:Subject:From:Date:From;
	b=GZdj+tZ2hCqOwL3maynzFfT/R8KtuANbC90I28NbAbQjaHAazP2ltQqcujWQCFQfv
	 XvuOnqb4Yyts7XWghhhxRqo8EZx9zQT1QeZOJZ3ELR1NGHIjfRT5VpKFwvsGnxW63h
	 ofiLYYVB5rgBTLG6xqZkIGLT8bcORWmDWTNcT9zKAI/YtV4wYm723AA3GBGW+4lrka
	 fvhfyweFUD2UE/MIEoogxoTAQCt4bBpxKF959zKL1eVHWJSS9mNSdTFJ6wXOE6eyfx
	 D07hl9RUQYuWrG7m5vQllSh6u+LXzYUi/BmWJ3t/QYFAjccTGPcVFbQ3iYS5/hBXCc
	 v8eyjzPpz+tRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F339C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742919357.12935.6510374605563706773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53682900e8fc0cb8b4057a157d97df6aa8b6533b036846b4db046ac8002e6834
Date: Fri, 16 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747429193
