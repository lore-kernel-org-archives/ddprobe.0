Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBCB1E4AE
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719253943; cv=none; b=XFi2K9M/uT9CvwPhNWxrGOdvn5PvUu4FBc5mYJ9QCQiMmu26DLG/o6wome05eOjfI7peg7TCeQe5IS0ayXBW6tOp0d2uhrb2FN0elmRM1RfG7M2ATVj5vdwpHtbsATdo96eJMMKiR1aA1nz0s1BPG2/Hr8IohGJ5hjH5KqHducY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719253943; c=relaxed/simple;
	bh=VRQBCCzuLPKNvRjJc2yRua9IHfo46Zv7Tr5MwkQcEY8=;
	h=To:Subject:From:Message-Id:Date; b=EnJQ9nqMrhpExIjfXnS5WFu0w9uRgqF94MquC+D8KOFq61k+maT6dcElv/71EX6C/Q+EEIbx4kfUPtd6R9SCXwM+8yyCRTMl8mXqrUe1hqasJw65rsvKpM0bD+qbMMW2cykOQfGk3bDR0rZmUGsE0iu87sJsOM7KfyVlZj+UwWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t44bLv6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t44bLv6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D3EC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719253942;
	bh=VRQBCCzuLPKNvRjJc2yRua9IHfo46Zv7Tr5MwkQcEY8=;
	h=To:Subject:From:Date:From;
	b=t44bLv6AOizqNm74AQSQVl1VcrxiduiF6D9pZ2K7tBgmUeQDgS/MQ77USXOB6jL5w
	 9a6Dhl/OXIYK6H6FI7RU4bdyUxMfeFsv1TueTFe+m+Hwo2zxv6J+HsvahXF0eVFgSc
	 NHKbxNUgWzjq0r++7R1qb0kwo1YsaUi7rJtOEBXxcxUunRoi38oa3Pm61guQsdUAXl
	 lRgHAM7dJzaROsKsemd4fXDSeKngXyLl+Nwq7ntPpi7q7phLwrcLItsxBZ4QSb6dr9
	 vncNmlRwrdL/ow6H9q0KfhbovcjhIShHhcT7uNo21LhpcMnspYxOwA1yVXRAYNyNDS
	 RhX8pS/FE8RwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D06A9C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925394281.19602.3289278983196025783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da3f1f5ec8b963d8d667b277848f06f35837dc28d87a2cf32728500f3d80576
Date: Mon, 24 Jun 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719253942
