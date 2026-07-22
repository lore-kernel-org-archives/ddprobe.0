Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE2C348453
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784750974; cv=none; b=V4q+Y/tIZ4ArBs7KrGVBoWEWVAYXdEykNg3UijjPtQbW1pOgftvdwDeXCxwRSal0V8kvOYAfktFRLg+N0vOlxb6NKVtooNvPING9fLU+LoqJ289s3yNHMNzBTz3BnNAAy/bXiITBC+ah3MxIk3+oCtZHdn5kNRvIVywXuhrFKWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784750974; c=relaxed/simple;
	bh=BwruP81GNsxQbqOAp34gGZ0dKt5RtB+lZeJQDHJpMvY=;
	h=To:Subject:From:Message-Id:Date; b=HN39kxRKiVKfSFVGm2lg7dOjhuYYLrTS1zp59BFXPl3sGXerjAsHm2DWCxWj2jkJTMqW7hsYS9eK1/Gkgrt5kBNIgjDWMHXWGwYcAZjwgBpEKdp4IhGDyg+p8MJFy/hjJz4j9qaomtd6umYergUMEdzGnPpNxMc8K3KXDboemqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOkgV2E4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOkgV2E4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B5FC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784750973;
	bh=BwruP81GNsxQbqOAp34gGZ0dKt5RtB+lZeJQDHJpMvY=;
	h=To:Subject:From:Date:From;
	b=WOkgV2E49upkWxmRBHdd4eohhR2UyDDwJdj5L3JN3/4+3iryksYMtDAmJ92n0dwSk
	 6jLyyqouHhfHbkImxZjYBwvxEntmi/KmYAxZoyC+w0jhigWCBJrtbgT2jtf2NC49QH
	 E0c0OS7gN/WJxnFgFa7QWR6Qy6H3h2dYVjHFA4+ZAggTgTejtR5WCmk3dup7/QgSA5
	 W5QXkRKFWDzxS8dKyjjmbqIkL3Ua5sB0WVHW9r3LMDc41P7PtFIfhCXBRmzhmkIhgZ
	 QtCrvq+wPmAXyZn+u3hFK2Y5f4uRvtqNYUOS1Rc/wJYHbhd/V/4rUw2cHFb5A4yz+S
	 pNrZKmJQYvi3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA85CC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475097369.20583.5366865674154553555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35291a47d6bc88a619ba189ed0a1044cc1a4abe40496bcd0da7531370a6f485
Date: Wed, 22 Jul 2026 20:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784750973
