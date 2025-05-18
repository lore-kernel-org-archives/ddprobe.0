Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3452FA957
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747559994; cv=none; b=dVqVFBUPHAgtqRWK4KWQ7a3WKPjyiTXC7eTB999iQkYUup6xbae286IjtsafZPO7mcYyi7DKRcMypA+vkDn8qr7SJkbwpZU+Ca0QnBU7ljA7wgCwKwsGqLE4C6YAjzE9L8lU/kj+HNXNTeAdkeJRgWkvFQCr3ogEzNTuGXplgOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747559994; c=relaxed/simple;
	bh=JDoyY5X55oeU4a5dmPDzhQhaVgdLA2OUB30zlUQ1Y2s=;
	h=To:Subject:From:Message-Id:Date; b=B2BYACkFXDuO9kQwx37FMcqgclSeWJ5xfwlmzXUcOZEFd/ghPyGpvytJhD0C+r3SVTkF/KnJtukInq3c1W4rEJo20JF1uKwH79jHScTTYuXSDw6cpnYWw2IJ16KCy6KbgS1gz0I1YIpBEGsudhQ/x1ogtiMaTrMu/PG/yAy6v58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCF0e5JI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCF0e5JI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747559993;
	bh=JDoyY5X55oeU4a5dmPDzhQhaVgdLA2OUB30zlUQ1Y2s=;
	h=To:Subject:From:Date:From;
	b=UCF0e5JIJaz+1e2PEe2+/ay2YyMeu6Ui+fNca6DcGWMOj7OKFag3oKwvpqiS8Z2ql
	 pTs0Kd8J4FCq5j7DUu75v+5HN7i6MKD07DQ3XimuDa1MRjVkhv2W+4QMl82gVzSQ8w
	 0S5PavzMS8zjZHPCDdEV9762BJQ7CrP71Iy9bakuwIKNXwSYaTXTaEdB+RLgrzhxem
	 pmTMGhviDo6zHChwtZ6lWgQsVkCXdRDkYvlK7ciCZ4udY16AkEDFi1Fju8dIis64K7
	 ihpscNzqb4nglt5tx3/Icw5g5NLdcdwmvKHDSky2uRmPuQ4t0sATP/VN36Vi8FP4UH
	 kheY6MhVSlsQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA7C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755999357.21046.709528723701906135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbf0af18ad7458ffa2bd55fe36b6871040ded79b1e0b0db47411b2f9665262b
Date: Sun, 18 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747559993
