Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1507B7483
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761481194; cv=none; b=UdCnHdKc4zF/1pRkEoSB3PDPTTfJVc2xNqdNgm0m3vsZ1ajddGYCW8NzjyEbElTzDvlOrfYgoT3doQN4WfguwsSe5Yq59RChAjqry9tVE70FkoFwUqFPp+FBn57+pqTSmTtiLRk6MbuVI8eKhuKp7dlKdwMfQawSlmnCoVW6BhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761481194; c=relaxed/simple;
	bh=m+nFzfQxsshrwKRPCrKT5XYV2K01Fi6W9Iit+tG98po=;
	h=To:Subject:From:Message-Id:Date; b=OHlSvw70OcCbRuRsPWmi1x8WMATlu0peaZvIE66rArU+VSTtV5IiP4BnlZ90lzo7pzRoBO/SNbFlKVTvWhe4mFkdPzrXNLQl6Dg6jnSKU92Dm3a6TOsedUvpY9aHHbIeoN5n+dbEEHa+/mRtbHrfK04tkg//kxdknpjE5WjWFBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZLeC4xU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZLeC4xU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E88C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761481193;
	bh=m+nFzfQxsshrwKRPCrKT5XYV2K01Fi6W9Iit+tG98po=;
	h=To:Subject:From:Date:From;
	b=eZLeC4xUEDN42/S8kfLiUOB34tA9C5gUYK4myo0+PcfDheh9xsh1D2HhtL6X58lEi
	 8jU45x8kUYWauBH67HnhK508BSbjLk35BiOXDcZSzUK2h97Y7po8ucqU89jvVlTZNE
	 CYEUjla9dBQrUlWHnf62hhMcNnML80HJpv77FUgMLlaP49kPEmPdKpT8T1bNkakrmD
	 qKiMmvhEUqVV7KzCPueg6AGI5Y+YLqZE7bLMjRnZBKNsYLfei+Pvr1mNB429aS7ANj
	 Va8+p0/4qaoikVPxXStmPwwQDuF2gF/aQS+oIyvh8RbH5fSD2esX6C7AKRs3Vy0PLv
	 Rh2bOqHrXUzUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9FCCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176148119358.32422.9493170055406414715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0db2bc8e2a86e63f92171bc059cc43200f4f85c8ccc8893aa55dc82c7a176d3
Date: Sun, 26 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761481193
