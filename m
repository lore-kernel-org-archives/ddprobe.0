Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487A53750CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784641714; cv=none; b=HwnI+wqqwvOfMbVKNxs8nPQLJXUqqNLH3pEUTMTbc4wnR+k1/pY2z6aq5Qy869qri/MJ4hieBqtf/A+nnZvxkQFtSSvW0olVUck81L47TsEcRjGMCAbbgI6CoqaRF35VlRG0vgsmwBzWl+bvZ7ZA3OvuJQkj8O4Unve3nY1X1Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784641714; c=relaxed/simple;
	bh=DHjlxRdeRTHa+PjBUt1DTQg6NOcLA+itMusX9o2iwYI=;
	h=To:Subject:From:Message-Id:Date; b=J9X5uZhWald7sQJb2FggNnBGyU0jg0R+aDrhemLVUUizCrAfgiV+7cJVcemQJz+ufepvL4nOe/6+15sgVou2dclpfIUA26tl0juzxOBf33/AvjqZE8B5PEy3r1710aAyvnXpt+Yvhu2ez0cpoWLKC/xBN21UuCzv1ZgivHC3wF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyPVKqRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyPVKqRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19CDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784641713;
	bh=DHjlxRdeRTHa+PjBUt1DTQg6NOcLA+itMusX9o2iwYI=;
	h=To:Subject:From:Date:From;
	b=FyPVKqRTWFw8GMeCYsbW8GS/o4kWSlgqyuCMauASlL6dVNezf6FHJ22SEo6JdVYZw
	 3R+VfL+9dzcHaZiddeM0kBGX7TyLzAQk0smNoGAbqo6RVJAXGtrFKp8UwI5qa5Z7rM
	 0lGdJK48GRaKlQ7h9h3D9tj7yazAIY0jtpJxnMRaKr0oMN+PO2h8+RvE1Wr6uxkGhE
	 07KAWJOad1CXrAP3+/A5/at8eBz4+/LTUzUCqzPZ7LVEsihEb3NBapBY7JkiHaXMbs
	 RmLwT+EhH1CLPwPkmiPJeMF1+aW1bUM0N9YN5/FQgNGO+Hj+qKst69R58s1tnFyPyr
	 odoqyFwTizimg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFFEC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178464171369.6073.14635033420581260459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdbbd5d3a968eab1aa29d8998986332652a42566bdb7533ec994dddff32f6c71
Date: Tue, 21 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784641713
