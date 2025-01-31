Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABBC2F56
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738362954; cv=none; b=I7sNye+QPdkA3hTGTd/q6hpWGlrNQk0N237msc6Q1Dm5WpFaSKrHubmZ5w7LmBDcgGd3OOAIjGoc+EqSKj4aCqrYYQUgRTH3ADifqt++Wz5w2V17GXx4QZ/jnzHC/KpZnidvVtmXWsSR1ZrpQ77TltsKC5aDYdalmZcrOQChj6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738362954; c=relaxed/simple;
	bh=9FSTk/WBUt0V9O3Y6kkLqQYod/weNMdXvOhAwRSRgy0=;
	h=To:Subject:From:Message-Id:Date; b=E4/uU7C8jtE1lwUbq/OcXAJde22YFxQYpwY4pbB98bj55JD54+JAbR6yYXR3JRn8IJ+1RoXIwa5aoNS+7eDVZDuAunv4fMk3k5y+WJv7fIzg8YTC3Ym2yKhWq4M7GpgpNoq650M9aoHLrTvZS41vTG8x53ji2xAHO9ZkbvexNcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuLhrg0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuLhrg0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD9FC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738362953;
	bh=9FSTk/WBUt0V9O3Y6kkLqQYod/weNMdXvOhAwRSRgy0=;
	h=To:Subject:From:Date:From;
	b=FuLhrg0mF73s7xoNijvYbH905jQeNQ+A/ryyWiPzanejZUCTE3IXJrSWBbZkjV9nk
	 +ukuP8W0LlXxmvXrq0F2+KG9ThTQ0ZVVsmADJiKU/ac0L/BZGhUrMvihE3eNQuWUTn
	 STua4agM69nSADkkV5w/mMaWlM0UpQTcj+sNhhZKqKmoMgy+Cr9qfvg8qnP+7k8ArS
	 jZA0DAQE+JqBz+4t5BnT8Y9hpfeeFTAFgMK7R4+cpYUSBi6AZN5GgIVRkOGyu/LAhV
	 8e3KFlVVKK2yOXr/vCT6a5GKDTmdTqcRfI8bbumlQWI3VBUm2PnDjWttErh5MGMWDF
	 asbZWvnV0KJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC79C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173836295360.26583.10489571692257002940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfb84968de8c696306d1d6a6c9cf96e748545e64e78d41252517da8d1bb1712
Date: Fri, 31 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738362953
