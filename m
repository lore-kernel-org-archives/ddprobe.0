Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391601FCFDC
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742842194; cv=none; b=LKrXf6BAFnhCObXXSrjN7yQlB42Y5/1THqB8mI0aMYHqc1Oap+FVxcQqgt4zvtJPG7WPLCk0eeRUYJCIetzGZiyHP2W13yWDej60ueJt6wML858drM8pJM3fJuVA0Dj4rYRUE3SOq6XDQCgktWZZhAoB0WNsUN84ExNhmOnlqjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742842194; c=relaxed/simple;
	bh=FX9ok6u+VlVIGF4uBfGyOW7ABe8kmtG2PprVoipaRSE=;
	h=To:Subject:From:Message-Id:Date; b=eAKnAAuRc03E7cF3bqw5KajhhDXU7EIpVLropo9Cr2M5753oVqE68aiQ4fDnJhfihGRsCHAb9oRzTKYxnIYDCLPe7eTjyygwnrqzYrv1zqKuljE03rbmqLSVQyudh6uw+6JNcJmSBHTf0+f+7ttW1LovKykhQTJqOmE6el+pOMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9Cj4GFQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9Cj4GFQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDCC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742842193;
	bh=FX9ok6u+VlVIGF4uBfGyOW7ABe8kmtG2PprVoipaRSE=;
	h=To:Subject:From:Date:From;
	b=f9Cj4GFQfSeRfdE8UQvxLSW9FSwQfPsOL6flmhlU6ZGhD7PZ+IfZd5pWYRfuqnYtt
	 EU4dOuArhE4U1hdFaICglJVnzuqCTFMSYgmsGqLQInTCB8DPhpVfWseO5oMTcmRbuR
	 H/uE0JbAs+fMivi5geBOZ7aK7TB7kEK+cAIc7Z5//qlzn/2oV2zIHBYZeKnFr6hPo6
	 LpVFk2grgRNoP3Qpik7C/y3mzRfAWVAg/3Rb0yd0+KoJm7GGbmfn/Mnc9wAW8hWJrQ
	 4bs18WqCN4jCJmZOu+JI9KPEnLqLREBskKQQlq7W5KhoPYkW6ZIIV0vCIfQctdfx58
	 h2oGBXXjNxyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95376C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284219360.2466.3413330690749299505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111a7ecea50f48c0669b501340276dc7a525cb34a1e102803de9bc33db7b0c69
Date: Mon, 24 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742842193
