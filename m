Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578A817A2E8
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786821034; cv=none; b=qSFb4X1nuqQlV1YLgz/rwtudpnQ5CAEiQuSQkEHlGv8JwntfOflL+21SjAv8cc5R8RBjPw+ZXHVDqBVzhxKKeB4pycrNQ41d/NTv0HZoG9ARjWGyqOLm2qBkUjLfEASTtIeGrmt+EfW19Avnx3yf7iIu+1q+nhwPw+SSwVn+rBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786821034; c=relaxed/simple;
	bh=R+BmPsjOPtEQaM/HcFKyrvrvQbO26QX/zJtpOgGShEM=;
	h=To:Subject:From:Message-Id:Date; b=a3uQ75sgKcsa0BQhGFw7tJO8ekFgsqEV7zYZzjvs9vfnARXsxDPcdG5d3X5VYQ4njPO00yK6khfZ2OOueZ1i8ZQqfokiV9BkB+jZbZLtAo1HflgSCDlVKB6h4nAN3YASl8JQcWYnFHAMUJ/S7fYxn0a23xspV7EQF6I8tFTuS/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOqQmMz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOqQmMz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EFEC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786821033;
	bh=R+BmPsjOPtEQaM/HcFKyrvrvQbO26QX/zJtpOgGShEM=;
	h=To:Subject:From:Date:From;
	b=vOqQmMz3kMGUL1P54kc3+oqCzU16OEN877p1uvsT8JYEuo9ff5Zwi5XzrIzGb2KuQ
	 /dh7XtilFoib+PJ4PKRJv0qvUBpBvgH5xJI/ZxTXoTgyE4r2GGWEzK2P5b20NbjJ6T
	 7jwbyH8Yl0TBtx+/xBKWykLzGYZErkT+9jdTlq2eJUl55QeNlEtkW6AYBdWWIqYmdJ
	 DiA9rZN2TXOrvzpZtkfq+n+qMrVXcGkofn+TMFZ/iIbsJ239cb9N13FEDuQAkf+KuB
	 Mwhp2bDXqVpWUdWqPJIeTfmLYjfHPjEnTQYm4f2XyP3eJi58M00cS7pCqjMDZUGYxW
	 L62f3F/gapyTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7FDC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682103369.3054.10078016070316066055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125a63562b70c37993ac35db7e7ada4456002298ed5e722be3be21f4d4398898
Date: Sat, 15 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786821033
