Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198E4213E6D
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753082394; cv=none; b=upgNOE/xCnfmhOFEQBrbP8n8kKEvkBjTm7MVCEVCEiGF7AHXjrQPUmC5vTxQzmWV/461rUjikJMfUVUhW7rzO1DldMzNdrHAhQDC+BmyogmX10jVZeY/csiSOjzrQvUqzN/BThaQz+6yWRRPXJMB568MFyfHmuuxsvmi5IY9Iw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753082394; c=relaxed/simple;
	bh=Gq56EGwsDzD3oVOCWL+xrfUZqagXD8tDnsINnx7o1ro=;
	h=To:Subject:From:Message-Id:Date; b=M+EEcCUmXi7vKObUKiV4FI80aUWXtTgjii6+h/R/ot95qOhCVBtSoCiatnaqS4ESWT8zMGIWJKFlEcjFEuArGk2w6rOcSokBXYLPusSCxMciseTJqRLDlqb4lAxt/7H4rUalULNt0osFyiGToVkH+T87vTRIrH8qbqdVk9V0OZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiROC9P9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiROC9P9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E2EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753082393;
	bh=Gq56EGwsDzD3oVOCWL+xrfUZqagXD8tDnsINnx7o1ro=;
	h=To:Subject:From:Date:From;
	b=EiROC9P9sVXZLDZh69wb9UjxanvQlHL6i4mCJJ9gR3cHTb962GLq+4r+MSmflh7h7
	 xeKUz37nrtmEiViZyXnRix3tXYNZA0sPVyYbAt0TBLzM8g3BLcVhadeLfFdRugaeTr
	 kuX3Eo0FA2NaVRpU5MjXLH+s0faiWNEakqgnIHRT/462ffHVv3hUCyhuQNCLrfW3C9
	 feS0TNhLCTBLtqnKI3eFbnWHsUfsuwCQ16pba43ZPSM9Lr31u3vQNyWNEyK5/YjZ70
	 h0g8VLxcKDUw6fI978yYSC3tPVyjKFbPlP1++GPXMVUk7lWNvegN4fdDQfli8BgtKx
	 9KQvqESEaJkiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE8C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308239357.18991.9238434226247154761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92996a2dc5d1d149c771a6c5dd178e4d9b490e282eadb00611bbb8ffc0de9e5a
Date: Mon, 21 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753082393
