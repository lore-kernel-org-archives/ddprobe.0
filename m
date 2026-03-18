Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B462C15A5
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773871494; cv=none; b=BWbN0D+hBOGpaiMVNQFgFiS0B+/iqXanYYPKeqrnyggrAyQ7yxVkEAMJ2t/pAr21sB3R2ASo8ZuwVx6JZmLmZ0jaCyZMflbdrG9ep6ddX3hV0b5Z8/wB+AjH3WS3oZxWD2sOWXMm5mU0NmGu8CFTQiPBTWzi7+Sjo/GZ9sTJAKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773871494; c=relaxed/simple;
	bh=z6jxBEi8s2B28kZ9BqHg7or4h8uMJh9ow9I0eR/04NU=;
	h=To:Subject:From:Message-Id:Date; b=hbZxQ8fMWTSlBbWNTP2cEA2sKsnQFVpQbiCPMVyeezl1/CX5xgN8hW92caFs9/x4R7n4FKBVpU9pXAhhXHSPf6YAxw32asYiIqhVOmYu+0vO9wRrEr98DXp3WlIAt6CzmHG29npopp+AwNrzzGtqUuk0CF/nM5YPyhT4057V9wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D71387Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D71387Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA729C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773871493;
	bh=z6jxBEi8s2B28kZ9BqHg7or4h8uMJh9ow9I0eR/04NU=;
	h=To:Subject:From:Date:From;
	b=D71387Xx84XnJnXvkRbV9CXRQraeyNvVxMvWETtXL5SQtEufq+L3mChHx2cfPzIYY
	 G0D2iiBR5WnAxCd2KG4yBqh49YJ8KVCW8yuPxSAxnd7+Ask3RnHxk498Owps8Ut1oT
	 jgiV9mZe8iFL0pqQnoCQpxBT339JGANYhcI8DmZdlZ8v90LJWFxiV5FzR1lV4B0ioM
	 QWsaHtEsShoRGadTkMvPxK17HTfb7WU6XE/Kuw5HiBtRR835m17Ils40AFQ17P9gnb
	 Ii2fIdf7ZLR/HFT4m9T/0Akdg9iJ4jwkn2W5KHbv2ikCKu4w4tjKLZAeJ9NKoP11W3
	 QAqN5bGVmZsfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9566B1088E45
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177387149358.27339.2623905106861699597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e312ce2a8701727e61225d8b82867d86c8c052e9138bcd5b6c27c09fbdcd84
Date: Wed, 18 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773871493
