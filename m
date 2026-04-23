Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D941B87C9
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776910654; cv=none; b=eWlkzhplWiAgV3lOJtgeyEiXi0F7oG7DEG8R96VidrMs6mxgwdu+2fFJUch7Mlxc65fjx+Ci5esEXQv4TxXcQyEE6i3sml0S6lN8us8DLCNibfO7jjGjJ6vi64WWeu+Gg5LCY3IVM4CJQkvKNUsQZMVZhYOYsTCfoN41Rzb3j64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776910654; c=relaxed/simple;
	bh=NaLbd2errEM8BsWkDT0BIJtrr5b+lK5ch+jyEJs47VA=;
	h=To:Subject:From:Message-Id:Date; b=gZSIS6qjYS5Ko60vW423ngxmfk2l4YvwILviCfeKrbJvexNlTL1JLlbGfXjU862gcBlQW9O8buML2fUXDW+NnhuVfGbnaYdkOToiJBUSv/9huyBC9e0v2nYkXPYoFA4/gOU5wNvXkjFKieN/vZWUyZwTflXmJKWlWcn6pm4DaGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjthFx3C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjthFx3C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF337C19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776910653;
	bh=NaLbd2errEM8BsWkDT0BIJtrr5b+lK5ch+jyEJs47VA=;
	h=To:Subject:From:Date:From;
	b=gjthFx3Ckodel/ejDeF6wquSFLymh3jNzSqYOjvfqg+9OBoZwnFa8tDwKvCbXNKFu
	 l9cfF54H5xVzSAQJWrDbTqA8qPRhBObm6FLxKLcXFvJLm9nVE+WNwBdCMAxiiWEG1J
	 54yVB+vSJhsB4wc2DcBdbwby2xS0vLTpcTRjtAqNstx1JujORwPMb3NGboq39uwUaP
	 RwulnmUItr3YLK1N305ZeWtC+xARPoSNhOI4WpqImUAahGdMsgb3Pwf2U7e/a91lRj
	 r4kyFqB0X6MAZG9PQtt6t4yDqF9p/2JrfvQa3qZq76g7ythrNEsKP7ZjMt5uXDJicK
	 pg5By/e6b49IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA2EFAD3EC
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691065368.26782.9872532403348561419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8434b2dfe1e08d877d6a5ff6894570d6e1ff68abd7cc4ea38a35d924c27a4f
Date: Thu, 23 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776910653
