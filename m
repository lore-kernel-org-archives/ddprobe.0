Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CE125484D
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758750593; cv=none; b=axRdbkYHM9DqyIPSriRXjwSPMkK23LHVUko7z5SFLCXU6BNc2RH1BXEuZ2ouIn5JDKxkeO2R91p8on3RFWWiFnc9zItaSNJL9kI/3mt1BEFPRmUDbcsUITo/crzJQlLGwG4lUBVQlg9jC483F8f+fV3sgtGPon87zLiCYwY3gXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758750593; c=relaxed/simple;
	bh=OmY1Kcs3xIh+csTYejkhlzG8nbO99Vpp1cHsWzjveoM=;
	h=To:Subject:From:Message-Id:Date; b=WnDcbBO45PWOOwl5cf3UJ1O+qxPxadMfGQOOWJoVBeAYA45h/yfZceN+4ruIG1HXW1qVN89aq3pKheN2gfHtgZqeTRcxGkVjIL+oT9qUN58AwJOERKi9+xY+SdBEJrqyCtpN6DIMs/D3jNgknvfVnaxvuM/VTGfu3wtYHv5sMW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4XnJ4Vi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4XnJ4Vi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFB5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758750593;
	bh=OmY1Kcs3xIh+csTYejkhlzG8nbO99Vpp1cHsWzjveoM=;
	h=To:Subject:From:Date:From;
	b=L4XnJ4VihdZO1TL5Saf+fUfrB25InyW6/YxYgISM3l6cqY6NZQwX+87FQqvm9gn23
	 bmwwKErTtce0/jcAoZQqkfuyJL9BxSMIPLrZqNh4i/LfLxVN6fwOwNlw+hw4AftkWN
	 H8pP12l7sNCdMN78tDcf9/J1H7ahh6uwT7hQ0fVJD3OsBYYUcfAQiL/4wGgHWwN/IG
	 TwbD/TzyQksQR/d+87Sg32gzlN2rZCTsRqDK0Slhx9/5efU5fPIz02Km5QVczH4MpB
	 /aDAUj9KW4QjZC3DX8EPUY9StnCqFvOsVlq9sJ5UoJjCY/Pjmkx9tHl828nzHTtCcD
	 bLeX/bCSyzovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE7CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875059358.19463.10429996681118209280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f59f568283f8db61ba1d1f6ae158489ea96dec9315ec6c3db68e411228f1490
Date: Wed, 24 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758750593
