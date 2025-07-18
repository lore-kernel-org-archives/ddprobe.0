Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F64110942
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752812394; cv=none; b=qlHdV5HAu1ET8mPwK23RPwFtHfR4pg5HsKv6/2WaSi/ssfTYZmZmnhxTWKHcgx8K7WCgz4KwG4YGqcP9MU1BEz9eYUZRd+Rp7jxZK9fSFXeVMr/FvKoG38bv92xIb9W/eA3hwMWcvxyfUT/QsH4KR+JHGq76rVrr5Vpb+I8GbJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752812394; c=relaxed/simple;
	bh=REApKKhmU61rP5VYEJEfWXCQrUjMFo6acv203n/RI5g=;
	h=To:Subject:From:Message-Id:Date; b=OHW6mKnNB4A1H4rsy8SvcPD5pQhqaOtP3hd4I3GUw4X+FnoBuOYxTGhehLYrPQP8DJfbjXz2X6WoRMm3wXme6m/gKV7mUCayPjYhPSxoLAEp0Gb9UVZ//dxrpK8D7F59i/e3CYSusXm32qK97XtKlIiQ6lESuMh1xhoSrshZdGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOh370eT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOh370eT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3AAC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752812393;
	bh=REApKKhmU61rP5VYEJEfWXCQrUjMFo6acv203n/RI5g=;
	h=To:Subject:From:Date:From;
	b=OOh370eTvQyFso4Pxlq4N1wCxzVoZ9djb7ZGw7+j/qkJthv1y3Z5+yFNqcmygEh7x
	 h+3//RSVypsr93TfTwLU2xXZUxcSjmQ/15R9/wNQgOxxe+eC/xLON3KznAZbaHbX3Q
	 CjxBZ3P4jF3tehs1P6NnY1M8krEl5a5IwuwMJjXR58M2gPq/6xVXW21U/eZN8Hed4l
	 ckSuvA+bHL3jXjWBoL9RBfzUKXy0QLi4JWLQ7NR3WjYgl+lrE3bSoFhMfUDKKOtRF+
	 gCrGo61xOXXdduINoyv0BDC1xyZwFNqKrAOcywZIrrUFcGoEW1oGrtZM/l4gDDPUyR
	 wXfXzqDx6LPbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920EAC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281239357.11944.8063493045164175170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed928123805e245d9823f5a97117006baf762cdb08e99d0c795c2e2fd617e1c3
Date: Fri, 18 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752812393
