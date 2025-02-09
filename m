Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3AB3FD4
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739097954; cv=none; b=S/rCZrTw/poRc/ijhIQ5FYqEABhwfjUUqk4U5oOd6BVV+TuYPiw36gjAUJ9HNjM84uS3Zv9snNPfwl2ftLxVcykesO+wRdoKHxtCVDvbKPccqtInUwiT238ZMP+KuorDSUAUVRJABZHi94k6+FQldih9Qy3tsph+RJ9MA5tqE3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739097954; c=relaxed/simple;
	bh=+iL7/PlR/0dlc/c42gJ9hILnpFR7olJnMqZXE2iPDDw=;
	h=To:Subject:From:Message-Id:Date; b=C3jlwmS95Qv3CIq0zdh2ZMPrFkALr25RgDiFHQWwLKhzBbo8Sco3D74HVuf6KjdX7HG1N8chsTqkXtTZc3uOpmFgIjQ3BQRNOA52Tw3FYgdAG+CezEC02qxJdqUedO4wBcUCCEEGfXqks9BSz6yYZEUU4XdnWGFT9vzj80B42DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaFnZP0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaFnZP0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF382C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739097953;
	bh=+iL7/PlR/0dlc/c42gJ9hILnpFR7olJnMqZXE2iPDDw=;
	h=To:Subject:From:Date:From;
	b=kaFnZP0wUW8KuaQWN78RPRU9AJQhCrhifzVh9t9GSMcI4eaA2/g433l0S7k3vPJhl
	 8lIek9FWO2Wmndel5dh8V7vJ+Ox7Nokqs1YMsiBD1DNoQ5gEJMcpoK085e7uat9DyN
	 EG58A74OB6vtE/dQXKW2rFbzMpZ7Mm/x1xwkQ3BBhNf9KWmxj6bY80Z2xnhlic5BSw
	 u4IFeGhFPW1PK52OAercvJw7ffAJbPNgNOuCOyBy3HW8BABq8Q/SvoqIYtQm1hdfNs
	 p52zjplMc83y17SX/ORw+3sGrVAXB+zetmrY5OUC8NaWTMCtARtNRNMKIuYm7rpzlY
	 6tOMCtYxhzRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C7C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909795358.26683.16734491476518489918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f112ebe36050c41aefa37fcb1f6ebcf4b87407c69e756e1a8bc72eb28b0b51
Date: Sun, 09 Feb 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739097953
