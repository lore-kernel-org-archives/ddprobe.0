Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E437613790B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772627694; cv=none; b=b2TWjA2FijvVrKZs9q+1KUQBiITKV5SFEGoe/GLA7kDdTF7PN2nhhsBwiIEE+9FN7nQ9wqSDdlEgcJVAqkejdDDAM7H0NFBXdd+2/deo7HD74/sF74b3+OMLzn3Ii60ULQDzmG1O0IBlr8EEzTqkct/ooz2Tspamz6S9+UuC6w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772627694; c=relaxed/simple;
	bh=n8RzAnv9B+FfwqCS9+C2GV1N68ac7nSuXncFcIQPtoc=;
	h=To:Subject:From:Message-Id:Date; b=S+qt7DEkn2EnuWfG4dcGDmA11P6SAFMJWyiKkNzN5b/eBFkdt3ZiWFrTxWwPC+qeSRyEQgi+P9TGglg1W5U7gt1Npp3WicPbAFwSRhdut3+I9/vH3hWbLJfYwEJAkiMRhYJDgKHnTZ/k/4+yjSENEKm3WSCmhwQ0443BEAZBRJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK43kZi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK43kZi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CC6C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772627693;
	bh=n8RzAnv9B+FfwqCS9+C2GV1N68ac7nSuXncFcIQPtoc=;
	h=To:Subject:From:Date:From;
	b=WK43kZi5jz3rXv/E4xrgm+fcbVl+SzX19OBXWWK0p0h66fDLty+m1w88BOUqFDdei
	 myngHGbqErpYi05vKi7/ON4KciHLNdgYIpvxF6A+Bpi8AZV+St/AnMcydFOU1FGt8d
	 H50atL/iB+qTCJIZZ7inSQwkigx5Uod9Q5Ktoan2qdRJudNA6G5IuDCD5+WZw133wE
	 SXNo7YFqZOa1qHwMoFNA9BIbJVVfoZVQhLDtvZmpSIZWuMyU77cQvcfgHerOEEaLF4
	 mKSBxeUKbzEydDHRyQyJXllfUUqFgdR8eTmXR01xct+vj4FNR76vRkWnarqC3U75Og
	 CGhao87b2+vyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F073EB7EDD
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262769364.10648.15062793697431347401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b493a25d42772812d82d74db95afe76c10571e69975876d5fd801d58d970060
Date: Wed, 04 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772627693
