Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE201853
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745173194; cv=none; b=UhdHBeTaGOMp86XaujgOLnA0TycOnfgPUERj5W9IlP2dpL0SFePLlX4/dXJVu+W8gYKJee5pWEVY/iv1eZCtuFkMG3/jGDLwy1X+wAWQTUH2M4N6VVTrFiiODgopSXIEC1QB9wLQiSdiX5NtbMd1tE3E8aLipH8bLV3zR8yP6DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745173194; c=relaxed/simple;
	bh=hN9ZjZcYt2hs4rLUWxcfCzTKUI/5eEcs6ZPpTjbArC4=;
	h=To:Subject:From:Message-Id:Date; b=Vmy0qjExDS5G1LeioOUe3l5cZqUbjtpPbwKp5zp1/v9Vwx2f7EZFXzdR5AkfU87mAurdKHKOzBe1dBP3tTH2nfPLCP5A5jZjKFglIzqWFh4lnUbyucVFkvAAdN0LjKqbeR6366WvAs+571X26WSS+kp0/U02I7aA91ldjv8LFVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSpRzyeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSpRzyeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF75CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745173193;
	bh=hN9ZjZcYt2hs4rLUWxcfCzTKUI/5eEcs6ZPpTjbArC4=;
	h=To:Subject:From:Date:From;
	b=iSpRzyeY+WwBGfDFuVX03ey6exnlJNWkw319RrIayGXWxl+kK0R918nxtw+gnYCda
	 hL0dV3RRQwb/WpFBWlPWbmJGpejUHpXpNoQvtLKQjS29eW+jHknrCNoFLSYZ8AHJLI
	 gDTnN+L6X976WtD8CMioPZK8/qFgRarceoG1530WRkwpyWu7q289EJbphTukv2w+Hj
	 0S0P1CZd1idnbUd63g0kuu5QYGO/EqUfZtTB+7X4KJMg2Pcg7Mdd/X4abUD9Y9IRog
	 yFVRPugzTt+KO5WFF1zETQ23zwRzT2eXIa+tVkatZ7U8atFG1Y/ahT5V8GsSNrwSKE
	 rG1FfPRXlgBww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A325C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517319361.32389.18155259373662860548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babcbbb809ca43caacaa4624d5aec94983bb1614f68cc903877eaa0192170154
Date: Sun, 20 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745173193
