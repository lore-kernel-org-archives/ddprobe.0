Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476E91A7046
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745889594; cv=none; b=Yj2I2Q8+fVq6eLrAgecn57LX1d4toRSe6e2mvSokXmBLwvIUKaS9JShGKbMKSCjJZ8vOdGBpF8Cp/wIM8y72lfqMdI6TKG5NUnQNo/SQdgdy3yRsPtUy9JH4Ztzqoif+B4YXWyfwt8a0b+ixqnK4K1HsADtNMMTja2dyroNaCkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745889594; c=relaxed/simple;
	bh=U7xlaxJ1zeOY9Ltqd68LIeZBP0Kf28ByAMzIi+HpRdM=;
	h=To:Subject:From:Message-Id:Date; b=KmhT0KZX1F/Pi/R1JxV9U6QBgn+6ltvULJNy1S2fGWIE9+8mCDqYDTtz53P+2NUd/dAAFKMheb23eVZJeoJdksAPKZ7D1QnNXGWm5q55J56ow/iTxG4dhBXIGDXLH3O7JkMsKucx5NBSR3XHEiyM58aJMjL7Eh+ciqT2hDg9onM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVtrEx5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVtrEx5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4956C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745889593;
	bh=U7xlaxJ1zeOY9Ltqd68LIeZBP0Kf28ByAMzIi+HpRdM=;
	h=To:Subject:From:Date:From;
	b=iVtrEx5PZPaRh2Q47BZfwc2wwZ9qtyGenpoOwI3iqM5+i4NkLUkVFZ/aN4gE1DNt/
	 LjyuTzinLudTHg9VhedNC/Rvu86nRGz8bpIY1wlzk6Jf6BQv3ocCqglWow/l4nJd7z
	 mw2PKIbi2lGdk8ueBmqZnOHVe/eBgriQqiAo+I7Kk+ewyeRSFv2dfInwqK+rQ2ua+5
	 6gLmXVaTQBx27Hv6aAtz6RdgoSUlnY971pwyD9wO9VMOuwdQvkmXBNu3VpoAlE18iL
	 zjF6iT2i7EMm6Ke0+VXue2L6zCZejuYksLU3yZG7TfyY87lJCHPfLy3SNqah1MjLkZ
	 NO8Yf5zx2QBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A58C3ABA3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174588959359.14040.14893156529792420468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b705b251e86002377679d2f4c685fe6dd29431b92588bb77af0ec6b1bf6c01
Date: Tue, 29 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745889593
