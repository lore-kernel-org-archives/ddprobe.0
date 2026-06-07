Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA702AF00
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780791874; cv=none; b=uDhH3jxK1omZ/KXb+Zejz6fCE2QgVHCMsxonEqe/lcCwcG5lzth9BsoWdHZgb13KMf4eYcve5dlhk12+b4jQ32ff7Ho6vYbRetfVIsorvR7oIMK0gN2+vKa1nN+W0Z1+UE6sRJoYD+zWuIxtUnZjdBlwAONGtId0OuaWx5MJg+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780791874; c=relaxed/simple;
	bh=kYFubpZN2So2h6GvO9EMuqzILAzHoFRSldPRmqgI5Hg=;
	h=To:Subject:From:Message-Id:Date; b=dWgIZTulV9Zy4/cXIq7lrJhnnF9rKLO1HZO6M4nv5/IW6WhbJZtwKMqPZI4qVebYkceRluDNFzD32cTMLAIbyE4Bv906cBD78JScHP9XCbtLhy5oOd5XURkGno9WaMYOtGrOVuEAsgXhfLTauXHW4iE+To9mbp/s0thyda4MRKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ON2P6wVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ON2P6wVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1434C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780791873;
	bh=kYFubpZN2So2h6GvO9EMuqzILAzHoFRSldPRmqgI5Hg=;
	h=To:Subject:From:Date:From;
	b=ON2P6wVv42Dj8wyQWGoI2EiZbE795O6AF1xRzHRqRRMKx64DZT36eSe9ZUSCGCTqe
	 BlOd9H/KnY1ogujWo7ITxmqi5c3DUeePdBatsEVYftChbg035LEM24DkLFurGV75Yz
	 ShkBUOeCHnh1jjCtlNbEO/IoEWQs7W1FI0bJghOI+en79cJBq0Ew1aKah98VDVU+rQ
	 9C7tCb7x+R7UBMa3vYj5EWwHetPXm2uvyBlbf5RGZwbqVptfuIGrBONKLs29otcPM7
	 ZjqEWXxWytCl3VreJBZpfuNI122vM9BLfkQnUoQujSKGaTb7ahbBrkUBiIoz0ZsCxN
	 mEBWUvIbYvmPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD54ECD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079187368.1699.13680024883413535253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57def3f0369d5d727a911881b73547f74d7e1c01b9ec7527ccfedf11d97d183
Date: Sun, 07 Jun 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780791873
