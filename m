Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3280E2ED14B
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757926194; cv=none; b=jlQrR4Tc6BrlL91RS6W0lxYdGDPYFGhUragwiSFm+9xpUXQXgo6sYiN8mTZEufxGT4LOhyRnqH2bR6hFU1X+WWjF8ue3p1pNSmkBiT59F5RzNae/1rjFjJM9mjS4ACYH0f2zyrDX9XxS4uedlAk7Sd0dRUayzKQEOl0M8l4NPJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757926194; c=relaxed/simple;
	bh=6VaNw3sbuyiBfpyM6W5Ev8fyUFKZrxSzzTN9lVE3UrA=;
	h=To:Subject:From:Message-Id:Date; b=N8pqesjuN0+1Q1Yok4gGwhb1T505TIu4JgjHpjg+kZVhPQ1AsEGRjeX4svK1UwijzMVgXxYGED7M7jN7arDIO/XraykP8CtWrjA+7mdy8fkTlaFnNKmIFJwlYuYIEwM44dHyx6LF921igLV23Lt8t3GyJhc6V9+TmyjFQYxXBYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsF7BmMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsF7BmMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A296BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757926193;
	bh=6VaNw3sbuyiBfpyM6W5Ev8fyUFKZrxSzzTN9lVE3UrA=;
	h=To:Subject:From:Date:From;
	b=NsF7BmMAnYdlqIRmjEpbCe/AyIYNoSx72ZYPuPCbTJrptn0sKWQjmkXVVTIMhM9zJ
	 pbo1CjUtEcLioqZjxZGiElhM9E3Wf9PNDaptfSiZUofRzousY66Rp/tRgUJBYrL5C4
	 cXABoY7zusSH8Z7i++7v7fNlxX1MMKScOTNcRcyAtdO+o54fnJ8te/dH+j0UwJoMAO
	 4ISCyh6vMHnhToAWQjipxH26MvxcnJipI+9RcDVnHoZ8m9xCaVpzAsd4ViWZ3J11WV
	 ErvHazOoUxUbBEiDNryn0bslwJ6eSW4AqnBDyAiS4Z8ZxvI3i7t+qqlKl+LqZcNay/
	 JvSOFCZ2BHEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1FCAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792619358.27277.11592958180288095723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ee2e54699ef6a3119450a7563b3842aba9afcb450f802db16b88c90ddeb764
Date: Mon, 15 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757926193
