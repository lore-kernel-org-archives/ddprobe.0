Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C5853E0E
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713104963; cv=none; b=qDTA+FeRS+ozjuCTGnHYHavIl95RgL8L9jm1XYhUJB19ZvXGMHD+QI3VUCe6r6eQ8hj3yvLqGif/m5w/BXv1KB2nhlV4UNrQJei8EHgvE4Ke5glgJIDPc1fac0MgyV/F7uU/V4hBDvUzyI0WZ0JMv38V6k+Dgj8mA59s4PqQnxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713104963; c=relaxed/simple;
	bh=qxxCmEKLX41h7Ak3YJjRMefe3XKIGnol9A++n1zNDKA=;
	h=To:Subject:From:Message-Id:Date; b=sb1saTLxTfi8Q5YiprieGVH0X7+pcYgUJstkeqC9wzc9D5t9DWciQTWWqvsf/uz0nfdq9Wp/OIU/bnkH6RAOtAp1WgNL6yoFtzhm+O7QSKMyP9r61QfiBc6XFVAjy4OXZfyF8fltF8QrydsNEkXoyFq429nZTfhdR6DKKCbGxQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyVm5H4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyVm5H4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30BCC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713104962;
	bh=qxxCmEKLX41h7Ak3YJjRMefe3XKIGnol9A++n1zNDKA=;
	h=To:Subject:From:Date:From;
	b=JyVm5H4ZNhZJmKpoeQ71qkGUsghid3sOZQ69oFCPZev0UWBQ9h0EQ6gWio0VPhUc4
	 j85YcZIu3u/I9lkCDi8Lg8nIBVbPxitZCEXPYvBQiycH4IoBLP1RlYsCu8meX8+gW+
	 7fwM/k9lGbneeFyYxygycvXYdgj+QJ066IdrQbbYR9acngl1CI3Xr4jWe/YG4ugu0W
	 vxZszA3pZJ6Dwk3PW41t7AhO88byPXjg9wzpG36j8pwOgmWVRwYg/7S5akWn3TqWKD
	 gfSC1L9x3wJ0AJT84dcwedvHRS5Jlc5hxL4Z7vTgt/TuheyonYEAC7U5TUwke4SAcE
	 bheQS3hRjRkhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDA0C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310496275.4734.18097826531627263384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b84e19513b80a6c4ce918ad2104fc3ba7b88e6ac3dfb59856aaa8999ef4c838
Date: Sun, 14 Apr 2024 14:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713104962
