Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D8E125A9
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776001654; cv=none; b=NEESy/puwi6YcjVoVN317Qy8diDN23eH4BjX4VE5SgwOgNHwDKv8mNQlYI2hQS0CpzJEbnulJ3JB87cbUrlTRISiw/RDSNkkiuBKqxXkHOIZyEz2+lylndRYrYFbyVJdc/zDb6nVuxk+8EQiC4VO99L5OZwo7GnUa+u3umGQz1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776001654; c=relaxed/simple;
	bh=GLB4RPRN5L8irJ5lGWroqHs/7AGLg1Ji5MCpr7kYM/A=;
	h=To:Subject:From:Message-Id:Date; b=ZJqoA6ZDq6AOuGwSqvX1yUwECHPSfufMkVhsCVM8VXUwxd09VeEJPr5GPb1EG/ph+LGvFpcsN5WMLUQsBqADS5+4Ro384wjzFK3xfzq0YMtUh5Xwx6HC3fSENN2ZgCnYQ0kI4jUaT+pXGY9sJZKxjZ18a4Kn8lWIdFvp+sNN8g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ltes4E5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ltes4E5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BA8C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776001653;
	bh=GLB4RPRN5L8irJ5lGWroqHs/7AGLg1Ji5MCpr7kYM/A=;
	h=To:Subject:From:Date:From;
	b=Ltes4E5UB70XnmMrgYVo9a2vziQBl1zKFFuH8mtLnBqKZKRT2Cd/2DXwlJ7/caOk2
	 mLJgRz6atcy+xFOVuc45CeYKddfu4tGGpzfLG5dmxHr3eCnYJoZDQFZCAOJycxcBPE
	 GlelW0EfRYJVX5NBYUgqtNfLPTssPJHvt4z9aUSqprZtey2Cz+ZlT7wQfxkA8v1rRs
	 WpybxrY0xu3QoGWRbhJ+mJBvsw94zAtKYAVYcQWfBX8fcFlPN6Y4IS+ArEiq1PWqm9
	 gsc+Tf2n49X+3siAoC33tX44nB6OMpbKfTCLvkXDczBrThBGvVXX0MSavqwMxhhdz9
	 xAaT2ibyezBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDB3E937E4
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600165368.26657.7289125361764002710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1214bc22a3353aa1e4edb113037440017633746b9b387d7419e4de6dc229e08
Date: Sun, 12 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776001653
