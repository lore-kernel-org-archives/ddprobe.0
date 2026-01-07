Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452F6358D08
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767806634; cv=none; b=DGxggbRcdSFgkSYqOfo+/QirpcAZvGGmtyoSCP7zRJCgPdPtVjf9CsjXwPjqmWgK/YsZ5m6g4pryOK40io0qH9CESENkXCu+m5cW2cAYs8dxQthW+vjzr26X40E51bN+jT2/i4Q/QZ/ckAeobau7zj1S1lt7iXM5RSDyr6fM5jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767806634; c=relaxed/simple;
	bh=Wn8NxxxGRpoYeh+VXb5soq7cxtWYsDjY3O7Q8qO0LvY=;
	h=To:Subject:From:Message-Id:Date; b=iNafdMegQOfq7IQM6RKlC1z/MLvio/GhrKH6wnFEG6NzJWaXvfIowAnkKu/8eZvf0/WAi24L0gUO76zPqjIhjKoRoBVht7dYSde5S4VoBmpu9x9eLBLz1lLaiRKwAuQwo9kIdeRCp5cxV0n9BryrksHAMSXAdIg78gamJnRITDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zuj/rjkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zuj/rjkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0289C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767806633;
	bh=Wn8NxxxGRpoYeh+VXb5soq7cxtWYsDjY3O7Q8qO0LvY=;
	h=To:Subject:From:Date:From;
	b=Zuj/rjkJ8+3tHOTHbUSg3IpSLm+ObzKb7OyezTV+TUwPnk4XpXboilf8k/kebG7SY
	 IPGwPS7zmy/IF0XspbTHXhvqovmv0m5v6d45wvKGlcNnwVhjDcZ0ROWqgmqaW5QX7x
	 w7VWJUeHwnl4ifvhqxcsvfqQ9f4+uijHAPNq9i5MibfQcoyHgiD1dQE5shqwC9orN8
	 ABgqPRnVCl0CQ8pIkP9HknWPxF5KR6Q9MaiLW05M2BdynpQzWojWaPckmwDLXjnaDQ
	 RjTmUsRkMa4Q3TU/PcRolJofpQsuz2xza2XNsQse3LwsqDswLkZ8xz9Rd38hSFndFn
	 SFkNyzIECUtIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907CBD0D148
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780663358.2931.3305255109552731915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d265b03e7bd394e0df8817c195140fb46a4d3a6521b5bea4f092c896b7cf604
Date: Wed, 07 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767806633
