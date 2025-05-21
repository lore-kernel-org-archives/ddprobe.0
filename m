Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E35176ADB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747799994; cv=none; b=uzgKZbzR4tApAIUHkN6o78BKMqsBuju81vlzRhgUM8vPOBPge7tlnyTlIjN/bd0/nKblpmE0H1bn2foa2w322VePm/2XlUFbl9s5h2q9LQzBiwi6hxlavM2S1XnpSpsrmZ2FTgJ7Iy8DIeB5OGuj/uwW5xcEMX9Iyqr21Aw/zng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747799994; c=relaxed/simple;
	bh=H/b9CN3/1cBZzcxheY3Dna04KhiAyl22P5lmvt2JmRM=;
	h=To:Subject:From:Message-Id:Date; b=mYmZwPV6keazkILW8mp7HkkVENNTP2Ly9RtZZNc8rhtD5Dv4QULV8+0s1keFU8y5ccRMUQzwaxp2dBgilNUICrdtqvAHDJQE8j7/a693DFDFxLxZDH2sKJO3zgqbHeZLyNZOhP+JFffsNnc2+9lu3XQjgWmLiEIm5wSErM5euMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqSEUbc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqSEUbc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C6C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747799993;
	bh=H/b9CN3/1cBZzcxheY3Dna04KhiAyl22P5lmvt2JmRM=;
	h=To:Subject:From:Date:From;
	b=OqSEUbc9/eR+0xBZFs35acv05Yzvxd0RmfZNqapbDyt1BHSAo6kKuy3Y4QmemQJSp
	 r/K8Y9ki+hZUwPq3ABJg5JR760zQac2dTDIx7BsYgw+n4vYB9oUwFE761r3HiCzh+r
	 EucKRGLW8okbkObUZXoZOIYF2L7imLX18qJ7ly6BZLmBC3FD7x9ZBx3cLmRlmLiCSi
	 kWa+lkoLZtH4Bvk3W0K3N7sjhOWMkZJNRXC4tYXmC+3ARuLjJm3SQZOYGcO8DDxYVU
	 A6t7c7zSPJJZPG/wEhdgk9Rx3RYzNDWLlRXoyMZ22ptwhH0NiZyYzpA4yeHkXH7Fv0
	 yQKYTklGpP91A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158EC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779999357.14637.9340257941838804810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d5e5246bcd335993f321d80018b4c55f8a54f1c1ca07213b70b209233d7697
Date: Wed, 21 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747799993
