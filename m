Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E35DDBE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735752354; cv=none; b=fzjW73qIICS6RGHuTjsykoM+v/3xd1SvVSfEZARit1wO0jR9C9mhLbWFxEItLVEDkm212YWcbo4DErHAaGX0uhtjpHB4bazo18RgltLeP7MpyKXevQh8FNd95lwnvkiJ9m2tsZfwNgopKvzdBaj7Prpe9nKD6lxWMn4AudqUO/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735752354; c=relaxed/simple;
	bh=gX8W5iVIhtyUGFU8YGtWzgEjVB4p3ZpuvRA8f73zDXg=;
	h=To:Subject:From:Message-Id:Date; b=qdvq6hEY9KKcO2kJhtt2j6vIKsLnw/e846hBhOMnVxZ1sX3BQvE6aktsTLZOfDm9bQib5uNYbu+WI16T6hZ4OZvmmwnlBYoWlY3fotfzTIliHbA7EbnYRd6gtlxiL7icav3surPd1/nM9yNvnnycSmHu8rtTCAn8dwLfjqeBG4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6/0TxKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6/0TxKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B4AC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735752353;
	bh=gX8W5iVIhtyUGFU8YGtWzgEjVB4p3ZpuvRA8f73zDXg=;
	h=To:Subject:From:Date:From;
	b=S6/0TxKh1LDz86WiZAHCJxVW16GU2L13ah4fsHR3g+EVhqsiLBfkG2RgWjlACVP9S
	 P9OI+PfAXim1jDarehbUOW1+S1CqotyMotyTgS63uA/QPTCktv5BKybvfcRgvYvSww
	 ZFpRhmk9OCFH/afHhS617ZgP6yStzezmDnEI1zFnhEa0m3+j5CAMdImQrN+BpqFs3J
	 SkWoS3BNSZL4IyQuyye2RbFG9/SdHZ0g65MlncG4bAojR7bQCkGUjnZ/w/J23BcZI6
	 XFpvspQzuU635FK4yDy4wzDsClApDci+RfacZ52w/nDJiwzGNJ6itX3GtFcZoH1aje
	 HKmzue0qqzmfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B2DE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575235357.32145.13709416352519891255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dca0f998636b9b144b31c14b496899a59669636a3e68f2065c13cfdc0fc6fd1
Date: Wed, 01 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735752353
