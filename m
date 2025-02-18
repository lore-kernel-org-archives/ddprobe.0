Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11186190470
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739879934; cv=none; b=O7r7tFsSQXW5vCohJ+4uQWuT3L3SDitDrozmgf/F4aZsZjAhDOyM0ZwDcEiIur88qTliX7oJqU03RO4AxdCAcDWR16G32OkVeYHbBWzH0l63VJSfSplDtSF1x2TFVh09Fruuki3ag8RHZeaNMqvkDHAFmsOfBm6IWLCIOxIx67g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739879934; c=relaxed/simple;
	bh=CPRU7erELV9rns2AMbf0sHtIkylNd5vfdbSab36GqF8=;
	h=To:Subject:From:Message-Id:Date; b=ZTSrjZhjSzOsz6l+oqFqr4GNwET2OuwZdnUEmXem+MrtFV+U9L9TUGoGWucQrc8YdF3XR7yfOExydMEV1SNUUAbq1tDvn0sjcr7gjW9WeYy42qqqNbsjq1cUi2A6XyfqxmqpCPGWz4AOMS2j6flVgRJyn/F6d06eJQDwNKdrEb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JM+ZiF/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JM+ZiF/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1AEC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739879933;
	bh=CPRU7erELV9rns2AMbf0sHtIkylNd5vfdbSab36GqF8=;
	h=To:Subject:From:Date:From;
	b=JM+ZiF/1nHnjKkbM8zi9H7AMFJZCtm3sjFUeJCMgvfoLnPRDy8mHxI4K1+j8RH0s6
	 A2w8Xoan5wE+v6ZB3XaH2nxR2/D9/JVDODQu1BCHDuvleDSnidmzPQ0i7bX2xNaclZ
	 Y8pJUz1rJM/QxDZmQTEWysk7urDgpZo6tXbSU9EOrwrANqqxshV0Gb81PuVPVKw0i5
	 i5mjOqPOUngxN9nob8nrIUgdvX900zZpWTxqsm1AvBX8DJGmuEAXaZ32PWQDzRm3U+
	 0GVvHmlcj7rTrK6OqI1XdqbgHX7pT1+VQTQpZgTzAodNd7s8g75wt1g8IrQjhVi1TG
	 9ZefKnw/LoywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96A5C021AD
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173987993374.2857.14587572275225604098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9598492b8dcd6854fc8477043d6a644839fc001411aa0b640ae1ba2d575c20e5
Date: Tue, 18 Feb 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739879933
