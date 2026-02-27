Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F0732FA22
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772190293; cv=none; b=FlvtjOjeHMtqsfPtFpGs2JAaiYyi/7PtWEvlf76CKgnbQDzxxLc//yIv29IYCMslxyi8396x5AmuVO42CqwN+QGE+G5SD9Pc50hXpN62chiX5XecpUN4qbP5uMm6oGUczVLaKjvT681yJ+Z2E9bpZqQkDuLJ1wtceUWb00UZ+rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772190293; c=relaxed/simple;
	bh=PTDcHBFGr7Sixn5kKOLBD20D/irKDdH1qoHIzjMZkog=;
	h=To:Subject:From:Message-Id:Date; b=SlK39ea3gdgzntyFZH1Gv8JnFWqNO9+RXTurAl5wSFn2YQIwbacikfIYjrY3vYjBKz1sRjMedCm7TP5RdZOYkZBVcqbxSPtFkfhQHrsVy5lENTKXf7VZH9Q2yUrZyk+KtimJCrsAf3n6eWAbMsaqiXvWzdnwD6DCe1/G3hu9J1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaY3PYDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaY3PYDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A72C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772190293;
	bh=PTDcHBFGr7Sixn5kKOLBD20D/irKDdH1qoHIzjMZkog=;
	h=To:Subject:From:Date:From;
	b=VaY3PYDpJSccep3x6bd1SRPC9pZ32a+FyXs8Oor90C8HrowfKkV2CPxUMG+fS/12q
	 J+987VZDHgXsET/472HRRzhSKBKV4BBD8XSp7ZoB/t1d6QnvF1Aa8FPEFbQ105bx75
	 k/U2AQvhpC36raqPQdBkVJCw1O53kWaAMMi1vUznF9Dqs4oNygHeC8s4yVXrb2fOlG
	 sTG7Exd18QQViFrVftH2PF23dBMtS0Cp3z4Umyy4fySc8l37E2N7FK+MRqjBoRRmgm
	 oAXNcI6WvGafdFJMVVYk2f04mI3uBpUf37YpIDoE7NaVNS5kX6BA8xwxLHAUFzJltu
	 Ymbbi3p5zf9OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F92FD7F94
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219029360.3094.12064684956241070187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdcae7698c6ece0c4978c8d7fa89e54cd578878e48a387ea719ef6ee4ac6b4da
Date: Fri, 27 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772190293
