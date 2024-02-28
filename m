Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86F75E074
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709149696; cv=none; b=SRCIEqch/t9hJjSLicvJRga64ekR7TGwCISg7NwBRsrPwyLNiQvuIytyuBC4I7QPlTl4m4xdNMSkdUNSTAh/+s6ZcQidvhQDe6AVcVVKGuTzgaXLoy+OoWHyDsKD9CAvb57uxsuH/ps2nhASI+1OTFT66UUBSFvoj1Q9YvXQ++M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709149696; c=relaxed/simple;
	bh=rFVu5RLYC8skwGNKD5NkcZ2rlY4eS6iERFnTrbpxu4c=;
	h=To:Subject:From:Message-Id:Date; b=ObUdO+8BbKyAMt7h0dC2wBWzt6BhIWRyAqkTHUIB7hQQK819OC97vpdObcCs3by70DJDUUBSTz5nStAqOPUwdsptXnvQhlbJTyFV6QAOm4/T7ergkVGrx91EPAI/M6xAekfq+spuYN5DUX3LAAxG9dFmJDPk7jlC2BUXF2NaPBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hg/IbeI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hg/IbeI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BEB0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709149696;
	bh=rFVu5RLYC8skwGNKD5NkcZ2rlY4eS6iERFnTrbpxu4c=;
	h=To:Subject:From:Date:From;
	b=Hg/IbeI5iQGGFPQzodZSNoZEmUrrq4IZNFgKEnw6FxKOokmLa147z+jf6qaaRWm6E
	 NUA6KEJ1avkOxmeq0ni/lE2QYX+s32sp7Dcptla9IgyDnZY9q1pzccoogpkiNpGfaM
	 pLbDoe2KpZiSJHKmZqIW3p8FY4NjjWCOBHq7goZU/+LOVrq3y5LjCcJQF7bOmS6mTd
	 0kISzRHt4CRGRK2K+aW1zBua6Kkl3r4Ttw1epoAok6V+TfoGB11x/YImMEC5noGh3H
	 hpLjNyit3XXdq76XA2rWAMHWXMqNDGnc9K+JBdFAWzlywit3WOz+fopep9ux6nZFZ2
	 XQ5GS2pnYBOAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618C5C5478C
	for <ddprobe@lists.linux.dev>; Wed, 28 Feb 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170914969639.11448.1865603628358989000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3407607af1c39b2a969c63c8d1cb89bdf0512b2aac913e91b84203ebd5334bb6
Date: Wed, 28 Feb 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709149696
