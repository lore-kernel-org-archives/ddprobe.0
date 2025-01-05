Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2C436C
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736072754; cv=none; b=oUAi2jskwyYY9TubQIuPrMco47llzGPSmehO885XjHBbAwk69BiHbV6hfNaYU0W1sHYNFbLKbhg6PEWackh0o6o8OLvr7B4XPV+fizTwoGzGaewbsHxwHFdIU/JLueZ7mxZFYLijnYDYHtX6AEww0Sfjkpg43m1bPQGg9a24IXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736072754; c=relaxed/simple;
	bh=+GCricAlaFrV6JGMU966meznZ1QW/t2Ng+lLDAlRyj4=;
	h=To:Subject:From:Message-Id:Date; b=jItYT3a5CiWcwJmarllXEbVIcATTQbH9DLJsGj48bPn3sJINvcn6tGZ+knuk9TtONSfefJvO0dWYcn+eC8P0lIyFCOZagn+SR/jiyOufD9VOkXDpo52Qi7j5me8oifML22DjMMRRBpQBJFSmsSyNd0iI1vAysrLeVm9is3NtWao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz9s9nE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz9s9nE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E31BFC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736072753;
	bh=+GCricAlaFrV6JGMU966meznZ1QW/t2Ng+lLDAlRyj4=;
	h=To:Subject:From:Date:From;
	b=Qz9s9nE+in2bD4omdSCLGgzPxyneHT10qoT8dj45psONh+3A1kXofd29ADgC/K6jb
	 UuqFpTE3owEzMhHVl/mfmr2RsaQOKc6RtZy3cuCrARXbc7D1o9YuxDC66pxS5pwOBi
	 6l9KWL093ZqRbHrwJjtW8pH8ZOY4pccZyRB0K2fSuokzI7S1yYS77TsgmyrgD0mQ2p
	 MqaNM06H2sdJYCjRKB772bXMx9lKyYBbZFQtZrJcLyT6JwUFU5T/ONQkw8GuqbhOkj
	 kX29nEGffXx636k/vohBryz0qihtlLs+IuxpdEbNcopVsFrtt1AQK+Zd4aRFQIzK0S
	 Wsz0VGBBSGuCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C3DE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607275376.17539.17548185372823802143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da439c4276fab1b065cc7ac04910163af3994878b752e12fb969fd12436aec74
Date: Sun, 05 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736072753
