Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B0B405C5
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705922897; cv=none; b=Yxm3JiZF9IRiQFITgr21nmYDD1GsmDObHn2flpIyFrySJ2KpRE61Mrs6SisPdJ28Cmp5tCZ2K66E/zL0cVrkj6b8a6Hpab8YTdKtNX4MrzHyB5fZzEsaIXqYHQWQ/U6ZfA/4MMn6HuXabJ0oBVkyjfud1upCt8n3U1VApyk6/4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705922897; c=relaxed/simple;
	bh=6pAjacRCmTjcIChg3hKd5CGnsNjby+L7eQbrgn5SMo8=;
	h=To:Subject:From:Message-Id:Date; b=TDksGwQ6fEh3eljy0ruDmgdrwb6uYjTLbNRko8isQKRLBTfSJOCqdepRx69BufMtNkmckfcmwTIDCCHrjuRH4rvgNyUwTuqJWI6SrljOxVVaeh/CYmMlBZJLuCs02HSulngCiIgpBlhJtFu2PYPslXOYybIeijHxX8gA+uMuRhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppjj8hZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppjj8hZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFE1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705922896;
	bh=6pAjacRCmTjcIChg3hKd5CGnsNjby+L7eQbrgn5SMo8=;
	h=To:Subject:From:Date:From;
	b=ppjj8hZS1H1Fa1dMa+MH3wQB0DqOoSsL8Ccu0oPWOQH/dGtsKQXazap9E9RHAIkqk
	 GxE3uClyIshnmXyD6u0gyMTHXS0isDeEq10O8q8vtw7QAwnAv55YkZdNzt7a40AnlZ
	 jKGNPpNZlnaD3/0b3FcCC0ASpeyOSnDnTZd7Z1JNwEVVlSRO3vyphzv4H3tCcMNNyN
	 4NnH7NpMyUq/hlfuF8xAvP/kJMewozrgR9rat71z6uI9AKof6XkGwnjU4MylIpqVdb
	 Vl3NOSwZyJKw9ji9Bm0iKDYo21RRf4s+hK/uItnSkRJH9YnWKi5Gyf7uKb+H3otJBs
	 XqLpYNkAXHgBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F301C47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170592289638.28315.1663373468575390503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230cb7adc62cafa09d90f84f047e6ba68b781e37128f18f973c4f113eb8b5a87
Date: Mon, 22 Jan 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705922896
