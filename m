Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E53C548F7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722261954; cv=none; b=mc85RGHs6eGcDQoE+xp1MuuFYvI0HADZESFp6XtecCIxkJCS+6oZpg5RaPZ/bdT9NIz4wg2skBx8W+UrzC7qF9lrZUBTEo8wFXl0cLInTCA9p1tKiTCjMRTCH/iDuPN2jN4cdHodhoUY0YXZ5zsuhhd3c4tNc2+l08mpFYg8hcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722261954; c=relaxed/simple;
	bh=GdExJqk7oezQMS4N0sUxTnYWQ1T475jh0D+oS6LrCwo=;
	h=To:Subject:From:Message-Id:Date; b=XFj7w5l3Uxk6lS5RCnFhkkgCy70PjYs36a4IcQ8hnyVp/Gz2n/9XxgaHszJZoy8UAcZQBXV3H15u/N2oIU8GXEEU0L3qbXIfw2wJljVUrt5qK7BLBe3vp8NcHAQfxGE1Y+UFDbCKJhMc/lUMjCGkQHk4LV/dKRGUgB4Z5UhhE3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/4kC82D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/4kC82D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB170C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722261953;
	bh=GdExJqk7oezQMS4N0sUxTnYWQ1T475jh0D+oS6LrCwo=;
	h=To:Subject:From:Date:From;
	b=t/4kC82DV4iNwsvpsRjaTojVFsXMCz7mmqtngCjy/3nD3pJHAKd6283bbinAMxUKN
	 wludvSZb3gwqGDg851G4vjE+oTm2HPA2Wkpfb/+TNDGoO4HK/qdK2vNmPklRr+Kfq3
	 /rq4Z8mugp5HJeGNTjBNoofdjI4uOW7oZMo2WYgzJ9/jzpmezHwQms9O/yGCZmCq6T
	 tMAF/QnHoJKBUr9RskPqNC9nhiGeKQxgXfH5UFbX+xPy7rgjMVzSGI/MRddS5fC4X+
	 S3gY/1VK0gXpfZpMtCQjVW5pCKnVzLnuoLzWsXMUX4v5YW4dLcuM/Jw+5Afq2zIyej
	 NRl/EzmYcg2zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9414EC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172226195359.21941.10565034767587913755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa04e0d731d9e7eafb506a3f3c3e5f9a5506e1d9fabd867e61defd9e99195f3
Date: Mon, 29 Jul 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722261953
