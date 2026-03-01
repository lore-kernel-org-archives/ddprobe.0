Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181432AD2C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772398494; cv=none; b=C9sf1jL80w1fklNvaTkZnHx+2QfohuBB3HkiQ0BwD7w8QyYIarMk68F8WjeWrAxdfoHWyEAd93ZtBKW0X4lN5sFUsLWZjYe+OEck6wJSfeJEkoZkoFEK8DeZ8/37igHamv9/18bW67zI3Efua+gNmIz3Y0w7xysGEKENaot6ZsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772398494; c=relaxed/simple;
	bh=OBV2NskTLNjW9gONdCqy87NvLpvdDDD3n3LoplI1+zo=;
	h=To:Subject:From:Message-Id:Date; b=ZuDfeTI8n56avjBYtlBTWC7YnbReeXOtXUVlkojsfG8b+4VbPvbYz2kvUApr6ymIDrB4IuIiA7+wyPC+PjuqoeOI5Yl2cNEbOryEA0eNiQmKetidCn6lzT/RFVbbZfZiLvdI+89m0Z5NA0Z8Br1PG3xMCr2imLCjPT5Lhy/tZCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga6LY+lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ga6LY+lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B90C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772398493;
	bh=OBV2NskTLNjW9gONdCqy87NvLpvdDDD3n3LoplI1+zo=;
	h=To:Subject:From:Date:From;
	b=Ga6LY+ltDm2rRhb99OayReYKK6GZWVAsrkSkf0C2FozMRcvRb50t8k3I0DDgy7/iy
	 +BDeCLwKzFpXATuzx9hk9OYAg4zG8yx9Pn4ibLm1eE/cNHkf3KDrpb3LLcv9LmvjXA
	 5/Slf1IsOmB5QuNwwOT0PRWyIhJtKhb8YKqHBg6wdfw9ZGHZZwI+uDi3kAigpOlZMa
	 3Sq5K09cIwFLXjNOFmaxKfBudi4hqxkxFC9SNyt9mbhTB4V63VzXDHP4kS4/VxRY2d
	 K97SNeYsV6ys9rTMMj1qS9paxxnNrwz+JoRww3NWPI3rHbz0SKEQCWyE2pBIur1NMf
	 +enx33xQpZH0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BA3FD0079
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239849363.5792.212050144191922883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334bcbdcad456d6169579f8d51d697a0f629f16e8deed12991432008cbd7fdcb
Date: Sun, 01 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772398493
