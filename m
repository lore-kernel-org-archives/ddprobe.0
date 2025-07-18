Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FF819C566
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752821394; cv=none; b=C14pqKFsdAPD3LiTStnAR1B/a030oWabonWTg44BWPpQnOKNu4R1+1ZipNQpKaVNzdsHx8LV3u7krafPs0SSINEWgrLebVRP4feCyzROPw0AUbnJAIZE/8pCI3hA0DuJ5cdoUd/0XIE3G+DrU4PoR8hShm6dJbct2PsTG5gPvJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752821394; c=relaxed/simple;
	bh=GZAyQytRkThBqAYE0kotIFryOMkQO863t0D0hB2uO5s=;
	h=To:Subject:From:Message-Id:Date; b=lQjAVsoLDehm1oLz/YjUAbk5UdF1DkbObiJ8NutYsya4c8ESa7gnyeVKEJc38PmpV0K+2Xw38v/5WuN9JXJxyfaKsgVG0JzewkpwravfHTEguQZgSb4hFk9GDlEhMGA4byZFkVXBj//E8UiDJ8wwuVXn/D+TpEFGcBnpkCJFcSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inWUIGhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inWUIGhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87F9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752821393;
	bh=GZAyQytRkThBqAYE0kotIFryOMkQO863t0D0hB2uO5s=;
	h=To:Subject:From:Date:From;
	b=inWUIGhenO6tzZf4KvRSa/O4p2eEklb/ri+QzGuPpCJSdnGvAt3eTSu5pGJHtTgkO
	 FhYtckj456bp/gUFgOGVDczIDmhI3ck+iHG+51vJs4rjyHAI7V2Hm/AYj7eqR1thJd
	 EWqU9pTm8r++PrjMjrICzrk2NCe+Np9FojFL/uNEGcW9Doq+lYTxXwcEC8GNyosYFX
	 FskltdynC4xF/F6lZ42EjWm2Mo7vBb6OC+nI2g20FgXvoYDuHNe1NuuGxdHOyS2/cR
	 h8D+z0rxBOf6DLAZSZVEepZLAeo1gNA/efPNt6MK4qRJejkncMbLF/KiSN7ZQniefV
	 0FGZ+Ztt+MfEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA6C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282139357.29696.3809389761547872769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10787e8f20d2319c066b9ba0d76e461520175a060fbb9649525a88edc6c386ad
Date: Fri, 18 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752821393
