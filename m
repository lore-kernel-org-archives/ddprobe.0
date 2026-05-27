Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E8E30FF37
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779866554; cv=none; b=fHZdN0leCOuM8e0AQ+IFDGs+q8JZX3F1Dhs20AQqpx7ocavNsBbv4JdmxdKjgqolp+iJFqIBUQRumzRLSSKIPRN2DS5SmitLO+GLcuAy0jzsfhubRIVIArRhe32fshMx6fKkQ9aetTcGQFma2VUBoqlfp80+shqIwEVRmg22Q9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779866554; c=relaxed/simple;
	bh=4+0FfjZwEKySyoJPVha0RFKVCsJmgEnHVHVe++Weju0=;
	h=To:Subject:From:Message-Id:Date; b=IFxh9PJLwz6Z/u5y+DqI/ysYRHiaziUIV0gS8VicRQKVHXmjWlja6vFvh7M4LyfvyJsX3G4vn6oR5SEE7W8J/lZtczCC7sVufgTq8DCbmqyyrrCBqNJ6W9UsiRbEh4V1hTHlnyiTwl3yLcYTDZT+62cnPfy4G5/1ff+xXNHpfNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvJ52aQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvJ52aQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0324C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779866553;
	bh=4+0FfjZwEKySyoJPVha0RFKVCsJmgEnHVHVe++Weju0=;
	h=To:Subject:From:Date:From;
	b=nvJ52aQ9HbnRThvCGeds+YyY7CVD0eerys3O4ixt1rq4cpNwRuZsuV81ntfro69lB
	 ERz/yF+bhKd4nuO5BZwEbdVGWe+sgSPfWwl0HUfnmzIXmPvC1CAiEBs2nqh7YmdLH0
	 cSXphOiYPBYyrYkYLQeHnvYm/kzRh7wG9NRj3yENSVbnruWCWzXKv6qKnhxYdwC7rq
	 z1YEFSABKx9/jqwNzT7q+U/bVdV3UGwzK7Qlz/1aLRdrmKu7iheAoQbvsyihBAUGWj
	 WihRb9Vo+5jI7P4naVBq0CIe9R1XVv8Z6H8cL+C0dzD0FY+o5rPU2GvuSKOrTSZYq+
	 iZyTFjmxFJvHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A825ACD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 07:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177986655368.9781.3810811042954673053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0d975df99dea0d5bc3fec1a1eb0c67cec40de131b49f87d17c643af3a914c7
Date: Wed, 27 May 2026 07:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779866553
