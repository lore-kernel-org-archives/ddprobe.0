Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9673043BE
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778109454; cv=none; b=Hb64ivKVraueOKTeBw60i+Pv2MuKZFVNAKesVkf/tuISACwjBMeKFASbJx1nGvZAjphxy+PfSNu798wMRjlbmDuVckj9pcilvPfv9Gwdwkk+3RwtNv/yoPStVQIkAoeLRsBGse+XJ1w3gs+eON4wW9Y25X5aKLHtaKcej3LPCww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778109454; c=relaxed/simple;
	bh=72BQVmp50b1XK7LB9/lHXh8iPtYY38zeu07PP8uWtJs=;
	h=To:Subject:From:Message-Id:Date; b=pI91HVQjcTnGtwJvijRcryf5ZBksoffpud4pmBzvVxyMqT5cqey8O/1gFH1OM1yMufXGslNuc6qGIUzCzcV25PKhIjN2Yie/mz17pHaG5PnhR+nnB4V0avBtsow2gZ0tR3CbDwkOruU4JUI4TN8aYZ6rciiXzXRDhsmCHt9I3pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYeWffbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYeWffbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABCEC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778109453;
	bh=72BQVmp50b1XK7LB9/lHXh8iPtYY38zeu07PP8uWtJs=;
	h=To:Subject:From:Date:From;
	b=aYeWffbzKhFboal/3ayczq5PbB4cSq7NgmsB1NaYVuN6XBqAm+JCYOKJXGX8mGmZ1
	 Avf9xu1iRI1HxmXU4mHErfg8llc/7iOA0l9Nqf7H7Tb3DzUVpJOUp6CILW82OVgi3Z
	 F/UHK+0NqGNb3hq3Ean1YlTJkSc2wq76XSG0fHKWJ8XJ91rM3ZsvLCzIhdyAQph/mt
	 O/oUxsY1rjhn6E59q7stJsPcILCJnSTTNRmrFCOvfhGCDSPI/MjLXPTF+Y/TIeVzbj
	 esWNaZy5ntHHT62mYwM513qLFavC8EUjnXQUssZNfyXWvLaodzMumtnTn6u3nMYEvt
	 2fssv2XL5D/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB81BCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810945369.32697.1354007621142848307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11cccd19d003685f1fb0d94da9a3af1553578430c440675abd9f0e04e236987
Date: Wed, 06 May 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778109453
