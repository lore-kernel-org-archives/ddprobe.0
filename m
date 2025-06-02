Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABFC2AD2F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748839794; cv=none; b=PFt0xtQT84nFsrToPqHuBlABztDkT6+n/u31UiUzigBszkpYvfePye8oKAO/tvasW+lVMkBwX6XjDXdYVwzWCGtQnMaK+ClC7CjtIjsIDhHqyXZiFxZq/8CfbcwEpiCTDyErzaK51csNdQsDhypCGarvgtKzTI2CHIHstfq6DnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748839794; c=relaxed/simple;
	bh=/lWO59tH0b1G5GC9EO25c7z1/bI+sR3xaXHuZUtVdL8=;
	h=To:Subject:From:Message-Id:Date; b=mRA0r/+ZQgXqaswmDYyqXUd6NWBGpkRSGwsbHaU6L20/NyVrQjXYJzwQvPO8PmKIew5XmeOTVGwInY5y+mwPq9xotJx2wHLum6z7yCe4DFQV1OkCS3VE/5kZjCaYcVxTXOk8JuG/th5uMmpOxbwuWH7hZSztEqs7isEKT8bl07g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uK351ZiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uK351ZiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4CBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748839793;
	bh=/lWO59tH0b1G5GC9EO25c7z1/bI+sR3xaXHuZUtVdL8=;
	h=To:Subject:From:Date:From;
	b=uK351ZiFSMG7HaEfyK7wF/q+pCj2xWKWsiL8LZ91sEaQnhaDQcxhoSKxBW78aqiCe
	 xO5nikWbduAhwbHtbduO8AQm9CzjZdmjpCDa/xPCpsqSlWaZfLLpoRCDcdXUfQjN3D
	 Qvy7uFObNnbZvEu9oxTb04UJRHPoX5FV0bY/MoKUaAQIV3sgonReB7HuzPGTQ8SkEH
	 4D0q0+Z+VGjqM6K46NWRvY8W7T4SwbOOuecwqD+tMvbAF29XM1Ujb/uJ/aCnqnqDvs
	 LaJfe9fjij2yzPI80DDqyI4yDo3hkHg55YqJyeKJsAarTYhUqHVkwQ0GpR+CMWkET2
	 DAdzexFpZ1dDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96137C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883979357.14252.17429228965896537991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc4404872a72222f3ab4b6ca08e2baa26d5b779668cb4504a5839721c4d896e
Date: Mon, 02 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748839793
