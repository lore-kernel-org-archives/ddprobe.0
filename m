Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151D71990BB
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721913354; cv=none; b=QLC4qabxPreUyvaJ2M6qCFpS186NYFSg9ESiSSP776S+OD4O++1XvZ0o+hQ84RlmvHG7rPF0g/gZg2JvQqK0gIensiGylTLcj25CvpRhQ+bPkmkY7gfLywzBcaSd6B1j2c8fGgX6vw2YxL67JR2SqJeT8ck/HY/ZnRq3lS31BqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721913354; c=relaxed/simple;
	bh=NRPu5+6CBFJWRfpffJ16U0i2N/WDgrgvzSsSw0EDDRI=;
	h=To:Subject:From:Message-Id:Date; b=nqJcKpokBENR+H7LK4UnIZmNnT8aA48+B9yROs7RQTOQfA7hSMpqtAa9zpzIm7c6g/e3J5ao7tB23MC9Rbb+5Vv5fEI1PV7gta8RAPimxmlpIrKV7CxcQWKQDI7gHaWF9GhWsPeLYlEWMVPKc6atCUlaBEMRcWIzAgZHWIYZ+XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlvocXEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlvocXEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7060C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721913353;
	bh=NRPu5+6CBFJWRfpffJ16U0i2N/WDgrgvzSsSw0EDDRI=;
	h=To:Subject:From:Date:From;
	b=jlvocXEay0uW71K6St+tXzDmrnyxkSVNCXKSId2OWHj0CrpqMA3K4xhXrqYhttOI1
	 k1atnNysPhvjMSjiW/YfxyNdbs5uj/g/E5CVaCfqirzDGtggLIDDW598jwlsn9r9Vp
	 PMofz6TARKawrCU+nUoNqKNggnbIU24plSreBurORa3jVucbw4j4iy7cy+mR7kjd+D
	 eVQtM8Sc8shrfnRlWFSTNjSVFIylovJiHtoShyajW39rX2m6v2Yz8+SAvQCWGyQOYp
	 EpJXFwRW9oVPR1n+zQ8bjVJ4gQxHYm6OY6PFF92ak9/2ucrcvie9Z3OfEYlbr8zXhQ
	 Tb808hEXf8tYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95158C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191335360.14062.2606836485366280270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf68d8ecb0dd317d40a58f1901d057cda9be607633c209115e2b1254a021f98
Date: Thu, 25 Jul 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721913353
