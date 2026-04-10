Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFEA54652
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775843254; cv=none; b=CMh53WNHc3xfra2KxXwAWYXjnWjT+mkB8TcPZ3EkwnKgrqrjmkTLB+Lo+TmFJ1Y5mu6wy8hqxBFWdSdfXsOERB0ToXha9ydrKBLKbmXPCRv+aGvH26osyLbxpVZLmlxRVftrJ81APmDMrAX+2mf6klAAhGsVJEyYoQ/pdf378uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775843254; c=relaxed/simple;
	bh=MbgD/jQnXDW9BePtCMBbWFux95cYsbq3+zuyVc2Q0kg=;
	h=To:Subject:From:Message-Id:Date; b=X5RnWuDcKLGD1FihG17ucODJGZuz/nPDJtUHhkKkh0TseR1ticZoxC117OjN6u7xi8d66NqgCfgDEU6SGpWru/l7xrovX9JaXX+2ncZk8H4vxTa2WfUU2+8Zec2FpowPRu7uRi3XZ4X7rUBNkwumh9EHStcH2kUbq/spO0zMbMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/C6zYKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/C6zYKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFB8C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775843253;
	bh=MbgD/jQnXDW9BePtCMBbWFux95cYsbq3+zuyVc2Q0kg=;
	h=To:Subject:From:Date:From;
	b=V/C6zYKkYBdmRBM6hbHeNVcfAUoXHKFWteRRmOWfPMrB7W4b/h5Z6SunGWLKDopcJ
	 iERm9oqYL8ZZqlXb5QdXGSseVnZxS1QzHmPPAQn5vQYqbWUojS6Y6lDMEQbJnLWkKa
	 OO4LqM2oxe9GSTQWwnTKQY4mSXPKdvlF6ga5eDCERY3xYlW/2oVlTWRZUPhDbrFpOH
	 d6o8HZR4cM4PJONpAAuxAFYPHjcYAoaLD2xqptEzHhfC0S8eHz5xPRCDERjyN9527e
	 6F+0N33Z/SK1EFubh7bxK/GarYYJqUEkdJxCEgGS2YEyrh07cbgzVQ4bjE6jyPmlyd
	 c30S48wpjXXTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC247F45A08
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584325369.29290.11832915499287118591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e73eda00c93faade177197375d23a691f3b5e21ef0b41ce3c9846f41f14600
Date: Fri, 10 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775843253
