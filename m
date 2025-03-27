Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C50128816
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743100194; cv=none; b=ZX0aK9+lGqL8pb25aF6ggbSiht1XqrKRjTs0oLyXQqtODvj7dldTn/RHI7oM6WQf1B6GeE47/VycclXb/XI/BaDSZfEa+TXFTrEqU89Lm6AJ21FPA3PB5iHeSRRRmbcZG6SddpsTU/GTbY5J3jsCkS1LUC+a7enGVnk6IkVaBVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743100194; c=relaxed/simple;
	bh=KG0X1maavkA4AmZXvIs8TmaO4i5Vo3MnbQiYLXxQ8Tw=;
	h=To:Subject:From:Message-Id:Date; b=TSZscNsOI7LwQXJwzQxlunvsQdoYB6PbThEYwQramXH6psn5gDhzFHgfKOA7pavme5aWhiYMo2+4vDoMy2UMBmOPG/jbL1KWpekZ2ahD9pO4zSlxnNHdrTH8tJVLU5wIOfxpDUzrOHvcx4ZK2NPv8E4VBxrJpsbYmP3I9y/R0Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLSzLJUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLSzLJUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C54C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743100193;
	bh=KG0X1maavkA4AmZXvIs8TmaO4i5Vo3MnbQiYLXxQ8Tw=;
	h=To:Subject:From:Date:From;
	b=qLSzLJUr9NGGBu6F3iM4j2V1YmMKqywyfLlPmE8w6tODvEakEgqMC4Y5YpPCea3l5
	 cQamX7GE0W5J9/uYYorFre89F5cR0SwFRtVNXi4kQEdTI/WqBZPaD1w9s3lvFYwLoI
	 TjpWq3wogxYkAoWxDa0bf4RHc0/g8pQEKtvLrjLR29i+kPbMPG9lqeVn3OeLAb9WY4
	 3P4v3I7sreA5wf5oZsKe9uOX/NTbDttz9KDplvU1lKeTYBB1MbjGsUa5eHZ1yo4VJa
	 ZzCMHxJ5wS0bjst/x8qJZ1FH7SdLrER1lKM5km7bn854VVOr2AnGRwUCmDO6xjnDDo
	 SUJti29EApstQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AEBC36011
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310019364.20119.12315701548254526774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b652456bc33fc8ce055abbdbd14636a4a13e49adb4dc17612edb55cc7924f813
Date: Thu, 27 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743100193
