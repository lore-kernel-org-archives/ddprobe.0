Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212B21B6D1E
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729857354; cv=none; b=HhX2eptxyWgVw6I2nxK1EeZfJ/F5pDPVtG53YiUkgkKzn+4tuQRfbfiRm7H7Ku91cYw0E7+vUrZFgIHhXVJeOkZ5y9wBym+zm5tnQXTy7O2RjUlmGnTXRsqvQREMg8LxAk/7kmLna5V1fKNNs72JVcRLHm+PKODfa8U0VbkBvVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729857354; c=relaxed/simple;
	bh=ZLVwJsVugxD2WbZrMXDhQco7GQN6vtvfu/6dkUOFS2g=;
	h=To:Subject:From:Message-Id:Date; b=uuQquDd7PqHl+baIONqkODnE2kTf64L9LN7a/xH0GvZP+i1WKwVa56o+LGy9NczELTe4ldfGnH+7CmW7fSsHJ/HUwYWi5d0KWXg/9qGmvAgtcgzmdv+TsAU4/O4hz0ABj4wZOtLXGC8lskoTrhf7xIP8ZzVSovMy1gmBSC7KbdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViQHH0TE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViQHH0TE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8707C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729857353;
	bh=ZLVwJsVugxD2WbZrMXDhQco7GQN6vtvfu/6dkUOFS2g=;
	h=To:Subject:From:Date:From;
	b=ViQHH0TEUWL181HQ+zIYaJgTOw0X7g4ouK37mstBkWNKnyuWXVugsUKVHcd5SqY9B
	 QHgnebUoKBK0qibup9bSlhLQ6CiD8/sboXqbbB9VXJFRHP1LezT9vPMn2ugT2uJlB8
	 LI4OxevYpRYChdybvaWmMExMxJD3nD5wIXCS/nwEIRjvkkri2RpW3pCh8hlF8yKPBX
	 +MnZhqXosS6REildrCf2gQpFpltZIEYtgikCnCkAJqxoFIILn1Us9kPYOIHBo/JNeM
	 fZKVcGCsFiLwv0oHXHSxTO1a3oN4UEphZsys4N8iBchT9ZknKXe0H+ewNPDjRHIQo7
	 pQ6DJX599i+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E26D0C602
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172985735360.9851.17011181227582827884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8196faada639deee52b9e6beecd4e20d6a4133a291ff9f49cb24709ceeada39
Date: Fri, 25 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729857353
