Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1303D18EAB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762400994; cv=none; b=EB462pdNmS+f4IFZ2xhnrpCmnY5c3wDIx1rmm0i6C+AaPPkbNUQmqRiN2NC53REJytRx5dbuLXstBUdFayqotcB1Zc+hgEZRsn7tKZnuOFbF0mckWxNulFf6gH1wPfR0TjWkz+9vNJNrx49Yg0th1ldFqkg0/v+xfAyuVkHDoNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762400994; c=relaxed/simple;
	bh=PpKKmYmAWxL0TuAujR6tBwqziBkmThVfuHDg/jCB0nM=;
	h=To:Subject:From:Message-Id:Date; b=s0ZXjGDTEtC7Ju27tydbM2PegrlTWnyVh0k1jx/eEY2XfcTl3xMRHFpnwge8g8nPr+dTqYgW3ER76MSBj+fieydbt0DkL1flNN4jEa3dhC0isQqqjVHHxz76CPKEhP/qVGPXBjPbAQ3MLUUIvTIS8EEUoBppbddAhdaXsPT9h1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcyh3nSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcyh3nSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 998ABC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762400993;
	bh=PpKKmYmAWxL0TuAujR6tBwqziBkmThVfuHDg/jCB0nM=;
	h=To:Subject:From:Date:From;
	b=tcyh3nSKYD34/bQ1FCPsizyKmfX9YGk6nmEDB5VzS/jxLNSaN0+qME0BQYsUq2RB/
	 9PxQjKCi4D4LH6qkrY/HiWYXy2kt01ND1iv4NVzmIc7fTplO02g21lfXoInqH80Wiu
	 sGkQpHU2+FRx1y8g/YrOIWNf0UamHGgb1XycHRHoyunWq0EszRx7rPrawJ5jw9/VgZ
	 JNMCmXVZzTolT6/yPhPnxYbnPkZ6A8IYwpvmY095PKbHB7fLYeByYq0wULgvd0iFpU
	 I85L0WIDV6j/T09mORrW0b/HhXvxk4LOpEk5oZ1gEtEvXxRXyGBWwpdDfBfdZoBF67
	 HIuYhB9kGhKbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E768CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240099357.14915.7649263280822207000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2fbc6c396b8a84a4073a2ded98776d0bdc6c3770c46bcd6576a8d74bef9216
Date: Thu, 06 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762400993
