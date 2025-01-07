Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAE81F63E7
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736294154; cv=none; b=AqYTl53jrtqyLqexiIycbM8P2W6Px0QhiqvUoXcX/N5cGaDNJNIlVSRFOloEPS0bCAcO0vb4w21nUGFmp/cDwaH1ODkYog4dyDJC81entwU1LXEIGCpVzvZfWUMpFPDdE3C97Wv8t9PVg9tuKFfkQvpB+1iEiphBzpGqXCWSAgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736294154; c=relaxed/simple;
	bh=DhAVZ4tEwK8EeqmgNGZQBVI9dM45yy8x9hQIFogPTm0=;
	h=To:Subject:From:Message-Id:Date; b=OLnFvpxcbK+I/Finc7U2vDVR0LsT5fhkopyUzvcQ2Zgi1jGnHkFCJtwTWz0CDJOy0ThMS62hZDgiWbs2UoFGBTOa4Dc3hYo3GOvfnzmuX7HazPSyGXoFct3jD3C46OxWL43NewEaBBZhX5NAMt5aaEP/zxkhE/lL6zmVPHyoXp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuHIhYc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuHIhYc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4C3C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736294153;
	bh=DhAVZ4tEwK8EeqmgNGZQBVI9dM45yy8x9hQIFogPTm0=;
	h=To:Subject:From:Date:From;
	b=BuHIhYc6o9euVgdQafYCSxBn+bkIR4nJaJ9U/wNpmVBdMCKvY9uV1WEIC8U/7Uu8D
	 69nhHQ8gUchahjCAZtsUIJl9mEDvteDtZUBv2fdOYdg6enzY6HRrlBimCzXn7mwCzs
	 SgqJw5Kbnz1Dqsrs8hPXQTly7bSsgs4xjdapL0dxJJqZEqumn130zvPLh2WqIUmrr1
	 YJ8h79e8RLmzjkczHMr0YIvb/O7oG8RkghMuahzzHton7nHODCwZKbLu3RulEK0CTg
	 JIit4kR1RQ4nmoFaKA+aOVMIGu3hjUXpC6dekXw6W8gugr0XqQpMeyR0rSLZgyuHOW
	 NaDi5TzT6fqSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81D9E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629415364.2599.14807970772077735397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039a274e55275b11a32a398ee3117fca244932f6f9f9f953a259bd63559a74fd
Date: Tue, 07 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736294153
