Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9181ABECA
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736340954; cv=none; b=QrticRtPp0CEBR8TJ/dT9e1VRi1cKpr8EMkH8GwfffLf1X6iImtgON3JNsCgwkYiybpUYT8AhvRDLpJf4Hi9OtfnAKrL5JHEgu15YoPEMCjwMjgeSMpTb7maJkeDmJr7wshHCCTMH7F7msRA70Qzg3AY5DVXtZuB/LGjtNcbTXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736340954; c=relaxed/simple;
	bh=QFlICxzVNcArnmzPll0FJRBhMgTm+QQP41pFdZPR0bE=;
	h=To:Subject:From:Message-Id:Date; b=iNfAy8tQ3PvvljnA1Auh/hICq2aeZzkwYG7Z3YuBgeerBvPpcSVxE8zn3OFjQTxbY9J4kxLt6eW4K1YNRjXRDN4ZLMeqEh5id3frFqhGd6PcbX9sSp7Ko4baqBhaItA4sla8bj6V7Jyr/wKx+ezYt4FzSa3NYgWdjLkGG9FMcNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhmJ5GS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhmJ5GS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD33EC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736340953;
	bh=QFlICxzVNcArnmzPll0FJRBhMgTm+QQP41pFdZPR0bE=;
	h=To:Subject:From:Date:From;
	b=bhmJ5GS4k1te7B60x89b2YiW+FUhWoGuPfsSttbNtGGgdMgUXfzl4shYMCdjjFV8C
	 SrriWuXr829qBN5tQ+G0bkjKZChxUz3iIQcOWsND76NUhQp6hZc7U4BrW3hW+93lIA
	 tSCVFFtJG6Z7mlQvF9+peEecsKboMk+dMOvOO/EZINRVwrI6tcDF9YEvv8z6VxVxZB
	 clLGgfj9BrWkeVQ3k0PKjczyZFjUpdL/ROmmHlykh+/oSpRDQ3fEg6A4yauqF8q9IJ
	 CYvJjdsf4i7oMCnzCUW8ghg9xWhiyrMZrRzVj3+fCc94A8ISdYtDDVZCATUaOOdX7K
	 DV97qaM18ym8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C779E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634095362.20502.7488346893125792182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49df89da7222669706342a03530f9df123adfb4bdb704dd9b32baede1477021
Date: Wed, 08 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736340953
