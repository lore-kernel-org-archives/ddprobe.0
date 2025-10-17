Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBCE2D8DC4
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760693994; cv=none; b=JgILA3gmzxBapob1iIRi78dpwqxrKiLalxqD/3+anW0lwe+3H5bcv842dggjG+6Qs9V6G3q/LloPT0XWDBFOY00QUqSWcjfZ+PZ8orEbsZ/bS+DTJYQeCrlmGq7pxVqYBRfz+3CEXlW8iibo7Nk2muX/o/30iK8H9/obN+kRPkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760693994; c=relaxed/simple;
	bh=g6oDlUuBa67SH4VKTEiLfLGMuk+1pzqjDfWNnNFRi38=;
	h=To:Subject:From:Message-Id:Date; b=T9aXMb2LIOH+sPDGtnGVKh9Bb0b3NCN0QjjwnDOjHS+CkilKWNJO3HNVsCVqSc4LSkLYubRQWbrBgTzVPySxXd+yxGnSKcBMSJetChA/1f5FrN282SPW8ntYW+YyA+cfg56HNzvoijN6bRs28Q9Kk+WrzIsWpsUB9VnMeg5XeSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocS8sNgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocS8sNgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D536C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760693993;
	bh=g6oDlUuBa67SH4VKTEiLfLGMuk+1pzqjDfWNnNFRi38=;
	h=To:Subject:From:Date:From;
	b=ocS8sNgLBJbGAyljbMkLHBxvWODpguLbN8ZKecXp2cT3vYg1QfJfELKQfNY3f51BV
	 4bBFCew/j0Q0ZU3aC4PU+bV3wA8N4tKjQEPuVLuLIxaNe9Rls+A4cs80lYQ09J2THX
	 qff/0N0UhzqGb2eaQJvwbgM67W8mDGl7V9MUSTPXX3qAw4+VROusI0pFzYCK9mQWcE
	 2LT8hOuhPOWoXZ97ybM3IhlTftr5CsRce7lcm03z5FZmT4RXZv+Wc5ZQzVAIpTWDkP
	 5EgXc3tb3VEyw8PjRzHoMBq6+Wqd3o0Ybs0SQFlSD9K5+IMipgi/yFQE4X7ZdtvFVU
	 nkvwiVdXPVYSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F184CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069399357.1824.7143752582473521567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb9d33efc936876d1fcc967e5e5071e42e27fc167bbdc29d33efd90da287b1b
Date: Fri, 17 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760693993
