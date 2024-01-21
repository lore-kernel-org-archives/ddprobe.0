Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FF912E4C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705834097; cv=none; b=LccBH+hP7GXpG7E45TI05Mh9zOXXMZ75tnzcvd9BRP4nS4mQiPzXkk2WUkuw1eMvLIB0BYy+QBHidc3KBaX2lrqOAkfhYYbojHzjDX1bRQSCLeXEpoz7wO7mOSjrsLaB1zVh9MfhyY4iCmSveW3/TZ/XacmmTYMWc3wSG4JzlRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705834097; c=relaxed/simple;
	bh=jWXHd9/MHCbrVwWmIHq/kGOh2t0tb5n4bUKfxkWrPYs=;
	h=To:Subject:From:Message-Id:Date; b=tmB8DO8xjsI7lXcaqB0ZAUqM1qwd2GFR8yAr5MziH8FY9UG3Yb6B2zEO1gvgn5vBHKejdjVbcW9WaAmDdxktEIFDR+dWAoOTde7jdOVxJ5hDygDaqw7Cg2h7x3hoPm6I/c8OtRR6BRIsKVkUXZAdtvtRFky0YU9NbBYnWo0nY50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8POmzzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8POmzzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79895C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705834096;
	bh=jWXHd9/MHCbrVwWmIHq/kGOh2t0tb5n4bUKfxkWrPYs=;
	h=To:Subject:From:Date:From;
	b=O8POmzzlyCmSyIQH0BIRqJimH5jYPNILBz5Y4I0ozduu3IHEf4TvasSKRnZeDZxzm
	 1V8m3NXKHalYc2mS8ElMKMerUrYRkaW0QL8xSBwzFfUR9LdUnA899Vpr0ZzHps9h9y
	 BOvrn7AJKhkXcVz69pMgSCBXPkQS89FVRarwqoc2/iI6uuW9ikx3qi7rPfbYofVAx5
	 UGWFk+L9m1WJ0whYGxEZpFz+amLH8Wi6ff4QUC0y2QFUfUMichw4yAIA8OzIef9x8m
	 k453aqtMD4dnwz+V6vBlxwbISgaDji7F7p720lPfhfvwNkwPI0hrAUCrwHl7WUDV/m
	 uGwEp+tQRInsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607A9C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170583409636.15611.17558539375374715423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496a383baea69a658a5d8fc50a484439fa9d6c7d6b6f2c1931b7d7031c64aa65
Date: Sun, 21 Jan 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705834096
