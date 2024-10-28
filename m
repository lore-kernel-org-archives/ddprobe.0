Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14EF190665
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730108154; cv=none; b=pQkST6Tlsakv36Lw9iWVyq+EYTR1Rmkkv2C8SJPbqUEy3wyTFQqE3h0D6/pGEE7+uYYzDlyC1fuoTl9IN1mF64Zi/dyzw5hJxtBJ4BEoWfL7YORyl+2Ar8CyhFAkU2jrBkTPDCaC1H6ElhvXUNjWZ0UR6XFOa2h5E0GDMW7YbqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730108154; c=relaxed/simple;
	bh=lYA0sCew6VY5QUrZLKbNErBcRSgOOZTjhVp45Btmt5w=;
	h=To:Subject:From:Message-Id:Date; b=Ityn7gMN4B9qaFY9A2msdpyuNQCWGxIk5QUTed3SAPjzlTYQ7quSZZqnPoTnzfRtmxbtXvDw7HXpf/oGbHuKhdu6xUhKG0+2o5PO4TuLN44TE8Y4gMo+KBiiJT+V+xyETY1mN6yMXYhqETnhvgMvpth+fSd83g/ZsYjLtl2nkUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sobNP4kZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sobNP4kZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79F4C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730108153;
	bh=lYA0sCew6VY5QUrZLKbNErBcRSgOOZTjhVp45Btmt5w=;
	h=To:Subject:From:Date:From;
	b=sobNP4kZkvKAW0JkYO12UWIOXHws6EcNy8eaXaz3iBFqTeiIEC9lfBNtAjt8ekyVl
	 0ek9MXdGlHd0XJ9aposwDsAiIdEGdPnpCwI2EOjePEuMO/4fwLu/kSGNesQ5nuYPvF
	 BZ73c6G60vz5/FbWAc8gBz74cu+uCff6R3EdzzQMEo7o0yY79mEw1rl/UE1KsENqYO
	 JuRJuMPnwGmlhF4Up7Xvv/izVyghY8db7cUmL1hh6k4WycIQlqiEJoUFPYdd5Bd0zB
	 2lcKjw3cYnj38xn06CEgSYx2keLcG7is4dHyhfgUe6a8eAVGLyLY7xRVbxp232liHh
	 mMuhGhv4YPw6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46F7D13570
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173010815366.12201.15501423503033001488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e316ddabb3c2a6fde119adfd2a64f6a62e3fc4b9c7b51dd29109834d455174
Date: Mon, 28 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730108153
