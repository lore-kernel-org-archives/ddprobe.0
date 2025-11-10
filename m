Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1090335958
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762752594; cv=none; b=OFRC/HmG40XdalPihdmVHuj2gsznWCf/YxZsFpqYKUlxekzYy8r7C43TBlNiD0CBZxssQvW2b05tKTl4ZnR/tmqTDIPpQBBIDMrEpeG7w9oA3OGpWAZ7ndpkx2I4h0ZU1qQwdw3Xl56V7YPJrpb+OO6CEE5PAJHm9ZNk4xD9qac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762752594; c=relaxed/simple;
	bh=2S1Q6g4vXf4VvowkDY99ozbGHIDLAC56CePBGNed+xw=;
	h=To:Subject:From:Message-Id:Date; b=rgjM0646NNme6gwHh8dxVyqAy3cO7sFs7swXNxvXgB9tTzbP2TFDZWYgDbOR+4K4AfqjZnLWz3fo/KjI/lD9cueVTX3fsFbE5+F3Ty77hNy1hFfnVjmzWvxR4ZitwEIQHhYPpoTUI96lTXfq+HROT1bJpis0P/nPCziJJgZBccQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGacUAFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGacUAFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C35EC116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762752593;
	bh=2S1Q6g4vXf4VvowkDY99ozbGHIDLAC56CePBGNed+xw=;
	h=To:Subject:From:Date:From;
	b=JGacUAFfgklU5r5OThvK5ph21PxtRsFWHe2TPZur8vQAbi0Kn0MjJKEd0LOoQWw5N
	 mb5zuNl2H5yV8KesmMZVmU34/NJ/qDDEllVGB2Mocg6cjageL2KObOW4mDGFn7lz7+
	 XTWPv3SuZZfNyuMi58pjeGpuShvoevwc+H0V03IdHa3wOZ+2BUzdh2Pus5o4VR9k3f
	 78CSWhUx0leJM1WdQUd6oaDLo2KtRqYa2CEdMpW7vMYSTrUfksfFUmG5K9wuxf+luE
	 zjs26/sjW5KHfhHJTNGjU+iSAKmrOmS3vxAcmjWN+h44ZzcZ6yku+hA+2CwIq0oGj3
	 8lMLrKKmKeGeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB4CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275259357.22324.17877141452747677874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72881cf9c9f1df908b3dbb040a9e94041955323b0319a7de86f18282cdadef1d
Date: Mon, 10 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762752593
