Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7CB1A682C
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778350654; cv=none; b=UXN8yIXMh3iti7YEugnQcV1z+oE6j2uHnBrBVldlflvrFptMrWKiTqy7YpORQrm9XkXWJbv8oCe8lQ7rhsGpWpKz4tP++YGqAa5hSSl5wJfLIq2v2M2Figkp4HXCDvhtWGal68H7IWGL+u7Hf9zfVKnyvnuScHV2HXkstxJyJ1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778350654; c=relaxed/simple;
	bh=AeVLX9OShM/BNSAktkxItawltRQBk0Tnxr/+UOjo38w=;
	h=To:Subject:From:Message-Id:Date; b=Q23EAKaIh6a9FphHs+coetYdEZ8Y3wEdpQ8Jz2s6Hoh1ho/IFjbC7nzZMw4ZE1cOEGG/rxe0VhSdrpuWgfKzO/daNB9/4n/PvhSSEmjNyUYzZH4IQaRGPVVr/90zm6PDGvji3jLZgGB1eNamZ23ctYdngfFvrEI+naMDksWoz6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvTo+jHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvTo+jHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41508C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778350654;
	bh=AeVLX9OShM/BNSAktkxItawltRQBk0Tnxr/+UOjo38w=;
	h=To:Subject:From:Date:From;
	b=hvTo+jHBmo8jx/VEBLjrtrIs/vjN1nEmfWPbl+nCnfKvPdreiDrSLPf3fp++OyrjE
	 gdK30uQ/gDMfN6x7bJEnmXc+5JBBAbbfQf7ZtrGkgBDIe1xNxc8Ace6HnJRstIgG7c
	 vWQy0EnTTqpZSC0f/zwWPeywXfjw7fqiST4g4vQFbkZZ6V4bSpA6ddesG9KYe/y6nG
	 9jQjDnX5ry86HoJ3zUjdr6Bhb+t75B4ylKi59Z5iOjhYSGzPtqQ56ahKnkDbHoRje+
	 2mJrKnNzOe8oyszbuWfIAzPExswfFCE49jqyVdNrNQDXd/W+38/OaQ4bQaVgSc9H6d
	 iVV0zJ6x1pZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0827CCD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835065387.30890.17571971029823659294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7269302ba8397011d1775d8d88e448eb023b8e7d2fc1fe305bbb9b4c69d576e8
Date: Sat, 09 May 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778350653
