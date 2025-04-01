Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C78E1078F
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743466195; cv=none; b=Z9oKQA8R4qIUyjW0OH3mpx62Wbx7P4OSPAliZkQ0/oAwbaAOFDdgb+SQ9fYqvImPWXhzXlvd0GdrgSqb7XuI/PEEK+4lvVSFWDw5fczHR98yv7mQX8rIsIyKRCWjx7mOjOQsenu4bt8NPgUIQA7ynGmJu47UdKFLYqjqqc1TQZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743466195; c=relaxed/simple;
	bh=p4yqK0s5u4TK+DBjYLYpHrFYJwY9jOdamKs9qNtI7jQ=;
	h=To:Subject:From:Message-Id:Date; b=U3jLFM5O0EKTVkeHOJSI9g/PsF8kwDR5lMfYUDrYvWskpsa+UV1Y6M6Msx2+WPWm3xVURBSJhohuhG2qMJLPKRtWWS+blkprA/8xAgFIDnOWsI7PsOVLBHpFSKnBvSnuKwYhEXXw1X+Y3Co8Ws55pyukRBf63yzd+qCAkk+x6oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkePlWod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkePlWod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11E0C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743466193;
	bh=p4yqK0s5u4TK+DBjYLYpHrFYJwY9jOdamKs9qNtI7jQ=;
	h=To:Subject:From:Date:From;
	b=bkePlWodfOfBXvFhfVxFbh/oD72XrizNFGmMx6af9tUbtjrKQ5F951IMz9BbpSqrS
	 j8u5mVKwrGI9wRsH05z1cI9Eu82igIANc0VaBipjGEz9JP32o2x7WeL99wKlUve9lm
	 sQUSZUOmgkn84G8nkeHpBqNigEd+we7CjCmyqZsGAbGg1sCN/SE9XtVhMPYlMdyZC0
	 4gTPSRVG8C8kHff7r/s76kitsr7KZNJPiIa0xHHT/gCj/Qla3O68F117O2vKI7WaI8
	 G7TEv0I0Mwz/e6xYzbcAsz04IenuqPBYU61/l6/52j93WPlVKHZ75aZ/p9LUIoXHKH
	 Cyt1gvVTlLq8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBEAC3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174346619360.29181.151979101843609505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8adf629eddae4bb45b8d3406028253cd5413ff710a27f9ef11dce152dc16b792
Date: Tue, 01 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743466193
