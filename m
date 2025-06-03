Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7AF4A35
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748915994; cv=none; b=pNgGHbqNfteB4E4f+8fBW6AdVr5z7vl8mHQtcgTghLbja7pQf07a7hJM4lSGOFssu0Gio8fktGZ70ps6fLgS7DeQK3zQYwuCIn2u+9/sxxgKcb3FoNYplP9bzMPgKEq+qjO8kRVnomXu7Ytv9j3vtALrVhI2uHWPhS+1U3lp5Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748915994; c=relaxed/simple;
	bh=/IrXSuSbLEvo75ZpF8Q7L/ofti8BfTANgbsLaYDspZw=;
	h=To:Subject:From:Message-Id:Date; b=kwIlOJEYv9Kq7BkZhMYVZRf0cYF9cK5ciY7Qrq9nB9hsKMawi2fav73wRQ9iOv/o7vErm9AQ+vJfr+wt0rTgiuQDjD7bx8pihGTMOxjhwAtOriTuKH0ZeClcjUcR9PUaKSKxtiu44Kahwo5Jee+xh8qMu7xPkSpdq21GdBI9SpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tE/AhZbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE/AhZbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EB5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748915993;
	bh=/IrXSuSbLEvo75ZpF8Q7L/ofti8BfTANgbsLaYDspZw=;
	h=To:Subject:From:Date:From;
	b=tE/AhZbUOGbOyDJ/g61bwjUiBjS9Rs7/riXOL12qcnMbXqfa3BbSjDmqplMBFm3WP
	 rgA8L3ldWT0Vwqd4QJYR3aOHlR2HJBZtDuBL6kVeusgA2MNC6IpJ8+gwW2cjnEG6RE
	 digp4ShV6tHzqJTWv716uQ145SAXOeJWxh4HfyB75w0HPO7CywCJ7spYmZh3TROqmJ
	 n9KuWnoT7RzktRClgYTplQiOAtAx0RCTDrh8QxUa2rc5p4pj6GUjIUDhbuHgFLEJED
	 jaDfCAzeS8Lao9iAnQuxXCc38cGL1ClF7ui3s6ajI4BbwPe6Q3yEBTz/R7Xtt6OrVg
	 MpRuRHbTw+GgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FF2C5B549
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891599358.2273.13088928029230018340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eeeb14e444a4daa4d81dd7db0d0b117b181c9fafbb66ba9d84d4db2307f5983
Date: Tue, 03 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748915993
