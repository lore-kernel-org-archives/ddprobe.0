Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213EC44E05A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777382854; cv=none; b=GaK8QIvTXkMPqon93MNBSCm614453El2fLOHS60zyh30mT5CK9SsNPatWgt4nHD11/zP597ui1v5o+LfdEoMAqEBRZLEeC5hSGKb/xi1h3lZnsOaXcIEcsf/1h8M+2zUDRqTzHda5hiCYtNN8Y0OEJzL7vM9J608DIuxB+zFK7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777382854; c=relaxed/simple;
	bh=YlYGk7qOeIlcMZ6I7JSlNKgPFWFkiKKnmsuTpkiab0o=;
	h=To:Subject:From:Message-Id:Date; b=u5Prj0YRu4Ph+6KJjtwh6qJvNHtGu+DTxROp2tM1u1Ftb8Tex9kxM2dNAILSA6cXfnyJM42zwNPJs2wcQYAhMrPNxCHYfHhNR6rC+IxsKdFuJtg37Ru0MKo7QRWtUbRsseaa6cI51KuQDrr7sNYj7sMphcBl7ehgTDc8q0Y3qbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOHc4Mxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOHc4Mxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CDFC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777382853;
	bh=YlYGk7qOeIlcMZ6I7JSlNKgPFWFkiKKnmsuTpkiab0o=;
	h=To:Subject:From:Date:From;
	b=qOHc4MxmxpKqf0Vsw+W+OC/BojSzfa1ycvURNCzCgxEyiy6pM+gsoLCO+9NMN+Cvb
	 4ZOyaSkWcnyXCyBftZHKUptlWXwq15uQAUjtYSwTnsEJDFh3K8MLobX6dTPfbZag9z
	 E5S2cE+Wm3eJT0lMVtp1ZSTz3uaY9ZiUHr2ig2nZzcZjLZzH7odF9ar/FBO6UxapHj
	 VUI2hy0AIr0hhnFNYWGzLb1lA/3gz+P1vgzWGJEPzddJNz3ebZXUWish1dm4BJP/mi
	 KXRelXrfGl62VOGrdoJMzf7YlDvcEss530J+ictwq1UKNj6A9xILMXWVhDdXBLlhWg
	 nr5gdl0vzafgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB426FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738285369.26922.8813608445013230617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c337355f0c14a7af9ebdb1800dc95f9e80f8d9d168ce191a06ccbb80d50c0ea7
Date: Tue, 28 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777382853
