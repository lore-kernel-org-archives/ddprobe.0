Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4947E19939D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719504863; cv=none; b=GpT9Nj0mMQGPo1OVLpHOiDcKEx4Y0gVSQs2XpZ3Ubttm9+z8ho3T2up/9iUJWxxXG3b1ivAtv+Yhrlt2h6oADaMW2qEc8L84XMbdKNzk5LvEJ/OfKuQ5/ow4crgzZjMtlqdobMrs1oCyp0iRLJ6AmOqsgsQcv8mJwxOGzN8GPgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719504863; c=relaxed/simple;
	bh=BaCgTjTK4K2Qd7rI/+iQu+Sp+BPmpYFc45k2D2hMxzg=;
	h=To:Subject:From:Message-Id:Date; b=ou7BP+XLuBmuyNb7XTN56ZgU0d4CFmu/bePUIfwQPCO0dOldZyzoyavAxnYIOXoBSG4YyK1ESSDzJZRUuoGhROidbVHWUCW4Xhee06Vi0xzP7ojR/d2Ylj5c+f02uEvs8FJwuBPayww45VP3gCEoYpCdWw9rTAPOt0vU3Hsjw/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbYkLsGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbYkLsGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E4BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719504862;
	bh=BaCgTjTK4K2Qd7rI/+iQu+Sp+BPmpYFc45k2D2hMxzg=;
	h=To:Subject:From:Date:From;
	b=jbYkLsGOuinAiMigvJFRaO+pnrQoFcLC0wUWLNQQbEBuhWL4I2ZgZVSw6BENC8sqB
	 GF+d68NakkNY/kJcC//EvOJ/+wdkxkB2xFTtZKYQljz+O61yV6MbaOnQwFPV8GCcwA
	 HoZN0HQZYty6ukJ1CE3TNJxpSX2ASwJkTkJ5X/FC0xS98tw4uUTquGlbYvWOJ0qR8m
	 RxX29MO6/5sMhXt7ZnF8shPSmtvdReolxxhy8JToRmi85AUaCDjKffxVSTkEYuYJTR
	 UZnHToc7JnVWYoEPuqigJ0XC0MTrIplEc+34O4y7JnsqlY9MbX++20x0eBMrDhFv/D
	 415pAEaCu2FSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEEAC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950486277.12671.6232623213238571043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c5dd7c17d8ff4ed1afc3f6e433e0abe6155aff0e9f9e0a809629bb4e5e16af
Date: Thu, 27 Jun 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719504862
