Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262512B9CD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736154354; cv=none; b=rRo5XQ8xTgsFvEfti345Vo3fd9MDXGzqK+NtbnSr/c/DpbJjEHXas28Vv5EIA6Wh8dAWBUw4GaqH3aRmtQiDtW1jJPVLdgN9nzOrPPJ7CqaSlYXCCUL/KwiCjZNF4/jVk9/qly8cUJODqdcC3VchlF7P2SCOOfli9PosRXWxpA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736154354; c=relaxed/simple;
	bh=H6rYgEw3piCPTOwjOifQvOHmxdqjbhzE2726rRdOMsg=;
	h=To:Subject:From:Message-Id:Date; b=HrrjoKBFkJwGev8FtWLoftXQmMWYwRj67GYxy01skVg075fouLxjbH5NNyAgOXtJp4uA23Ps16MGHJjyxWfXMXtTMpoJ0LzbF0J2wh6pS/68UH/vsrA94Nk89VAcFq09VEiOPfHA0DRzKRCTSNEQgre/sWR6ErVGhOTqvg0mr3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3WXx0b/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3WXx0b/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21E0C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736154353;
	bh=H6rYgEw3piCPTOwjOifQvOHmxdqjbhzE2726rRdOMsg=;
	h=To:Subject:From:Date:From;
	b=c3WXx0b/UGjKwSshBoKilmpHLfHoGvsDCyMr9CI6K7iDn0jYo2M+Fs1SybxyTvGNX
	 3yK3OToWp9qCQHOzBA2KJ+oTwQsS0If7ueI82JrD+BQCbmn/DeSlB+IOw+aHCe6WNV
	 YhbOzw0XRALquDCEcKWpEM3ulrOrPk4zfEuVNNPSI9+vbZmIEnBZETz4wZhruKmlrA
	 qoTJGr6MJsHg0KUVRCeN8e0LWCMJu0ZKwCh6HU2sjLoKlMSCTY4rny4DAzluJa9d6W
	 vPYNokE8uG6/IwQaBDrrqocDfoaZsgOt7rpkBzKKDnrsw5qNYFd54M97hLd5xeyo1Q
	 nolGp7gSqnzQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935DFE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615435359.28859.9038120056009070332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b275c4c44719299102de195526aad67732c1eb493afc700923e2eb35b31adf9
Date: Mon, 06 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736154353
