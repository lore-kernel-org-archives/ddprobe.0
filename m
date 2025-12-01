Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF1010F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764571374; cv=none; b=Ykg6Jhamac0hIjy63milxboAqMQgsvR5gK1Jpn5/3R21QYvOYJ60Da135p7OiZGOfjt/zUXZsNMuDOmMWkjPoiIA1Ejf4ZrzP8gh6zsnDjq8eG6661AVfI04k1mvT/TZdRYPjG+iWZB/dhcJb3EZ+qv2q+8HANQc3Y/2JeS6/ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764571374; c=relaxed/simple;
	bh=nfUFezN87HdBulQVXmxiTA4AC4mCRVb8WG99nYppdvc=;
	h=To:Subject:From:Message-Id:Date; b=MwZZ7scl585TQ8YVhbXrXCc5MQgDFvlx415FutmDyYf/iI/UibI3lQ4l/3hsSub828YNp6k/Ld5h0YRtFr83CeMnlZgBvr7ywYPIftahOkUh2NEvsJPw77av6L4ElUUV0O3Ap+CtONQj6DkPKxlE7Biwkzd0JiVbjgoq4vHTt7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3758QA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3758QA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50F2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764571373;
	bh=nfUFezN87HdBulQVXmxiTA4AC4mCRVb8WG99nYppdvc=;
	h=To:Subject:From:Date:From;
	b=K3758QA1xpRum6o8G7ycg4hyFJ0/wTvGlzv8m50Fgu4xVjiOSkFKsGnfroBVuKQZb
	 GFr0eU9Q7cCkfAgVDXzhpGLLF5jZeH24BLVi/NNfb97VMLKbYxTsl4Ta7e32c8V7Vs
	 TJhs/XWGdd2rB6RU/clGXZ+q3LEiBtHz4aHnPcoD1e0HvcZw5nbC+6UujMOZMAvcyX
	 7661tWAKpYCe3UXIgheTPgLY0ZUZL4Z8yQWFlgWQNiKk1925FlB98+d5nyA9CS0Dh5
	 jcDorwqz3yAZEKWLE8tlEOphttbcamWpfHVFAOnbzgXuMXQJmusUIEhkj+24Ik9f8Y
	 yMNEQpWxyUwtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9618BD111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457137358.25261.6020735978470200423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e862a8e9635d4b781133f7beeb0ebc1cf0adee6d5a9e05dfc75ee8a1b54274a
Date: Mon, 01 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764571373
