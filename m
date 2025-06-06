Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5EA286413
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749198595; cv=none; b=BvmHUmBa7iISuo4+MtyvFb13zBXwvlSz3rFfkF7Ytqa/3zcvhC5XvMA337xpXHaZiLXcvSFDyhJiPHHF5nX4r7dP8tpDs29a9toYOSe+jP+dFyis2k3j9PN91sPFVhzczesbAnmOjrPUea6zf0HqfPWWzHaStPAQqWCryKZcIfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749198595; c=relaxed/simple;
	bh=ifpy5BHCg0cPDD49vcHPytcX4zUSJTTfmKUaFItgOTw=;
	h=To:Subject:From:Message-Id:Date; b=PY3T1NHCTDkC+Lk3m3N2mWFyiHYNZgXB9rmPOUrROB1sGf/1utqe8xScCpDGQZPn06RfXVJ7KgdCLl58U7Oi0t4cFHbCj08yW5IbT0nOm6Dq1Sk6bOnxLkUYSZMnoRi79OcQLkMsFXJsPqXwE81uY4QoiyPulerF3jykg7vK5sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9CCMZgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9CCMZgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B57C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749198593;
	bh=ifpy5BHCg0cPDD49vcHPytcX4zUSJTTfmKUaFItgOTw=;
	h=To:Subject:From:Date:From;
	b=j9CCMZghm+lZi2wlGCozE7MH+4K2oYN6UisQLavoTOh6cuSLH/vIEWSLGSguENJzf
	 eD9As9Ptp7czvq7wIQ/xcV5u5jq/0IP4F/F/VXU4W1WmNaKcKMNRSRNkOYsPNQM533
	 WYz33uWe/a2sQueK73WfGXp3s0XH6RqxmMun/j6X0QlNwNQMaiMFX51Nu/623u6As9
	 bzReR3Ka3b+RdpBE7ZSzGRIiRIMSs/tHkqsL16rnkIOof3H5v4kUqfSfB0CMnRkLiO
	 mna0w+D2NH8OdI2TZLKzxTHAM0dVp4g5VbDpWHjXKu7QXhvE4Ay7Tbh5rA7WisMkYk
	 q/rSD3QHgsnVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB9C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919859358.24976.17330463331847205712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c26ad3edd88839fbb4d16acf0897dbe468f97670ee41aae7b8882ca5338da77
Date: Fri, 06 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749198593
