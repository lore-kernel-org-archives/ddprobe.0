Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3186E209F5A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750195794; cv=none; b=S3cR0Ua7JM9YZ9OjGp1IGAAIlLYcRdrCZegAJmMXVmHTh7VuUPedyzl1sxJ/a9rRjEWd666UBFow2rUJYhtVBSQK+ZeNycU9TfNHDq/upeXssHCrQmWtzStm2fsYxPDB/3G0ocKYZf1TeRfdLw6r2qHQjaOmnHanb5BxA07vV74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750195794; c=relaxed/simple;
	bh=2th/wWVjRL+tCNRgxx+LpNxeO0V5O6ka0gVjHDGuuPI=;
	h=To:Subject:From:Message-Id:Date; b=CrfhDyQIYtuhIr8+qFo/iH1xeb4GuxFlI4wUuO8vXjJDuRI/MCsa2JEIrQNNqn344V15AVoWuUjau2JdqU/jHPyvG+PGIaHkVJu8FxxW04MNIWyJYpAdSXpbvHUobf4Dg/OhVhZHVHLV+TKbliyvmrc8c9uCPvO3vwqXXSbZcFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0kJJV16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0kJJV16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE1BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750195793;
	bh=2th/wWVjRL+tCNRgxx+LpNxeO0V5O6ka0gVjHDGuuPI=;
	h=To:Subject:From:Date:From;
	b=H0kJJV16NUgXFitRaiinxch+18RhAQijNX6O5eJPmN01ANxtllSh4obEE9WZfrvCm
	 YJtXU+71S2CvWhYVJTI8YRugSLnHk5KBYhPuJSnOys24EXhjGb+99gRptR+WijtYLX
	 SDvSQ15oTD/J93R9/lY68POdgD+I+n6xtizFG0FSJSiy6zwv4tko7A9tnhZLKZ+klC
	 ttLc8WD9cZriCRisJ3A/roCdLDb2XkVjXmYSaYJNDjWtaYIVqupOuBriG+/Iu+PYAI
	 046Y3zY059TvdDibl5swvluzNmNdzJr2oNFisGah2P0IJAIOU5JqhO8BDFQFMmZMaf
	 lqynj5jrH/vEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E69C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019579358.6405.7304036255552717862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 865ade440b5cd6cbfcc38edd8931b56629a8d8c46f99c4597004a5c185e9cbfc
Date: Tue, 17 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750195793
