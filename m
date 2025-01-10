Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFB51AB6C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736490354; cv=none; b=W8GFku3I0WHOGL4mw2nGbk3+cfrvxcbvMz8Vrqmzc72NmgNY7Xgj6gXKYXAu5i9NFHfF+9KtDqTMjPyrdwIyLQKLPpbplfGty6xhOXJUvIv8oKZz0kDIZ1ALzah9zx8Mt0KE2S26JfpLRomoEf1/fcoqly02VVZIrM4gl6eL1yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736490354; c=relaxed/simple;
	bh=dqgYMctw2W1yz735XX/Q0M+7ryCFKwlpd36SgsNVY9E=;
	h=To:Subject:From:Message-Id:Date; b=CUgefH1wAfk3NbLPJCcRH2IkAQVymHGyKnl9gs2biA7wr348YkLcdQnwtMPqY7+9G32sdiHkbMllkclovwmwQNxE8uwwyUMgIXpCgRPhj2ePb1CCy1pL45ByvjXk3ZWnoSXzFXcor6XlRa+oU8kSrNXNxe+dQqtHl+1wBpKLnDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAs9OMsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAs9OMsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B8BC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736490353;
	bh=dqgYMctw2W1yz735XX/Q0M+7ryCFKwlpd36SgsNVY9E=;
	h=To:Subject:From:Date:From;
	b=GAs9OMsM8/N/cwgEbNQTl9KtKgv8ctZuWL6qx6imMFXyoRfwbZf2mGoGEZsk/qmYl
	 l3doErqN5n/3vq5klNV3GFw9J96LuXPjCqZCYrRdsnVd0XK9xYHb7rw59AWADYn5KJ
	 4XUvBAVN033es3EMen5kzqEPRhq302Ke9sq1YVo3qrDbh7gkAGn27t3By0Med1ikkD
	 P01e4WK8FRsqzzXIo2xsPYWB7D7QYpUOxTCScfx/S8tIi9n9szdFIWYyHE+PDX+suC
	 Ae649ufzFGhu46PeBRqOsVbcqY9Gu4KCYMbjL6EiU8CQIsLfKXN/BofhKNljtfIGKi
	 oraogEwUEMcMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C40E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649035359.6315.4046374950132909329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8296444418b7c83e722493668263e0d9b698a50a09e57aff6c48f2b566498eaf
Date: Fri, 10 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736490353
