Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA5028DF21
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750373394; cv=none; b=SH3p/xMryebPpgGF+KTQnlIeocokzWCMejxZ7xo1UQNtMltKWYc51epA9IKabWCysOdWeRywrIgeCxowXYnJxyfHf8QUw7bJGcYIF3mdCnoZ0UTYQFb3pMLD8AdzRPPQW03mifIhnpCjDgOz0yLEbS/Kwc1VGRvCTC92y8CYaog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750373394; c=relaxed/simple;
	bh=MQwTt6VZNnf8pDIF5mhc1ktA2MGTzFjNZjpatAxFpKo=;
	h=To:Subject:From:Message-Id:Date; b=JYWw7ilyk9n/AOBqKOLcAieDzR5Z4jJoqLg5KvWBe28RGA20wGNc125pN1QHIah3BQK66glBjGftTYCpBGeKr1VEuF1ovootgPGau9IEixNOcnt2FTYx4LTkNDopT2AgmPJAbW55wfj5XXf3zBAzxKIfdbmGURg8O+QzylxKnoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLzOe9mo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLzOe9mo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA4FC4CEF3
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750373393;
	bh=MQwTt6VZNnf8pDIF5mhc1ktA2MGTzFjNZjpatAxFpKo=;
	h=To:Subject:From:Date:From;
	b=cLzOe9mowLPqWgq1TG1/qSWeQ1BTMdyA0Dcd9yAn/slwZ/wNFWN9ReCOvdYM4RbzP
	 rDGzVdTJLs0U2976aXqrDUyAA70lVSgktVHm6aRqEqCtjoA5jkidlS9v0sBMD3bleU
	 /BvZlt/MKTvT+t4XYptOdR8mE6m0dh24NX8T6lSKzIzXaccreczIu6VshNPJl8n5bg
	 xO5nWAubT8cS4Rh0QD+GHq+lsr9ngzs0+Ahh8mDQCW355ZNXcdj321n7ueCX7Ok4B4
	 9Zu4iRixSmaTNBMr3SJKUDrygW524RovRzGy2lcqIWcllGmt9Wmsa8sYxzfXJxAmID
	 FA332aHmggMZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF6C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037339357.21687.15877024262991060954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2db37063848c3a0ea59dfaac716f1def8290755d15735ca08cde6326640c3da
Date: Thu, 19 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750373393
