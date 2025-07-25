Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2112D2E2EFC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753439394; cv=none; b=Q+/UmNVhBqHdV42EXQr/SZ6xk93SrbvZOdl4vWpiJ0PqqG75W4ckdzRIhOGvCbOZEYgpS76o4j7uvKQjt4TkOOBfUJIoh0YnXyD0zJgjTrRZqDatqt4e38u/qoEVOtWkk4gQFCvCJrg9X7PK7TTbOXMNu4xU5aZwKM5g6utac4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753439394; c=relaxed/simple;
	bh=jWUuyEknSXkxw23xu76PdNl687tjAZWtPHOPTc+p/vg=;
	h=To:Subject:From:Message-Id:Date; b=Gez5SMOQXsKWeQOw2UhtY2IAgz36qjWiFdHe9OcNe8ejlbqz7X7mtkT12OFuy5pXSpkyUCrGNbSlA3xkRtj1u56AJ/9NdK8lpvdiH5vWH00KcC6mwlsNbfiFtEcB61ZuaMh3R22opX2vO8sRionIUziwKbzs/GO21b7sHdA9JGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXYY1trg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXYY1trg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B9AC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753439393;
	bh=jWUuyEknSXkxw23xu76PdNl687tjAZWtPHOPTc+p/vg=;
	h=To:Subject:From:Date:From;
	b=kXYY1trgcrxN4jjpF9W7Sd1uliTt2x3UaPMsZwhfKnDhEModnxlk0zWI8975OURw5
	 sDGQUouCZHTV7TwPJNlt4FXGOHAzlmUHfzXI5om4A4aBJlj47JQ4lZGy9qW+gRfbAn
	 sQ7uiB3sfsxQs4kRpdGFvGGGVMJq76Ib8YUgVG+nw5cd/Z1248duMnpMyhN78c4DOK
	 KHnh0tK0mUvwaKkdgQiZuWM5GRZLikuDkZ57mqM8rpBFSqVU047airdonl0NGdn/MY
	 3u7qycT4bqrEKxLNmPBzw6gC89o5EywXSAFI2Y1Z3rlSwvHnSD/4ilJNAAQEwNlaXG
	 toFJZBUl9kIcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF3C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343939358.30260.10048818503178569725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ff4521035670a6ddccc3159e1a21ee353ea7133965359f6c65457ed31a8b07
Date: Fri, 25 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753439393
