Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0801C0DE5
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711777097; cv=none; b=hgqNwKudg+o7Dnzx5p0O9tExTe6S86DiHy3v+v147pSdmnzd3h8glhOtTOHXR9NtSWV3B7lwYx9Iy5hbHS4EBfyJR0gLmoGGjvbOOYdJWk378OPA/mvfY+gN3HZ/EuB6gZ40KnODzC9i5xpF74AfWl7t2eLiHUrrLNT3MtNq7QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711777097; c=relaxed/simple;
	bh=3ChP8sbhxgTQqf1W8mG5Vf0CTpQEqG+HNCO587b10aI=;
	h=To:Subject:From:Message-Id:Date; b=qABYj0qUfZ12zrjEvycqrZ/sjimb5SG6SfwxYq0sIl2/Mj4oxLXdiqV+ynUiRPKDcsI4ImzZ+7AsHTgoa1o09wiZDZd93lL5sRQxvkDQsTE+qh8waax9CoifNNzxeITLRrthTiYJstjBP+V8Y5OPDttf8VKNlPSSXT3TR3Q73Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwT4iaj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwT4iaj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F3EC433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711777096;
	bh=3ChP8sbhxgTQqf1W8mG5Vf0CTpQEqG+HNCO587b10aI=;
	h=To:Subject:From:Date:From;
	b=iwT4iaj+fz7rH9K4K139q10bRAJq+xMJWEVliZuBP+RwYE2eeYluB65aJ5D/M/WFd
	 oHIPm7KqB0vmQAKuvthkszqTUL35ywM4GhUwCxLkSlKxNkTEnwL1iCDcm2jBwkpu5j
	 htDmXlzSzRnnlkirPqgfVlePSxnSY7vjIrQAHLyt4Ov+QQnHUHK8h6Y/aIQix3m3HW
	 KWOGf2gtHJtwwGz871n4xD0+oDadJrN2/Zvrj6gm4MrhjTnmM8s1MmX30fkY3+MLC9
	 zi4f6b03a2E8+xSLWh1nWoNBOU5oLQ13bI5HGqRZFejF08hiH3d2IjaC3uOPP4UNkA
	 dvkwtsHQWgOCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E68C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171177709638.29880.15238845639950189716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee78fb65d1c816bc3f4f942f1367ccb68b2489a2320303538d31cc7d87d18d9
Date: Sat, 30 Mar 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711777096
