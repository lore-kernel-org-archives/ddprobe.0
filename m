Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2182C3244
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779309034; cv=none; b=G94mp6iNCjnt+X6YybkMVH69MpMl17TEjdZZiHKleujfpTcOAKdBM7KXlUXhfIHQJhGXcdijMjmF4MGEkNUV7q0yNXFj7bS7Ky2PDE1rsb9fjgyIDjawP/TWPxbeUhV8qWV8ZvyVt+wPUjP/4QxOEuDNCHY+DOY+bL7R0RqVeNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779309034; c=relaxed/simple;
	bh=zerI9e81lqflBAbBVFmFYV34cHz73hSXkWlmXZw3H0k=;
	h=To:Subject:From:Message-Id:Date; b=l9+Zeig5BHlSha2QosxZMajNGmwp+qw7qxYDkUqkXzNV8Mq5QjcttVdAyfC56onhYcLKFiHHRmYWlFh3UCSUdLCAa04OhNhVIOdApMT5DBcfvZ/P885o6mpmhhsL2F83OrVLDdAG7+IRZAFQBt4ySQu5o8Rw4cZaAsIjPCYwrx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQW4BXA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQW4BXA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06017C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779309034;
	bh=zerI9e81lqflBAbBVFmFYV34cHz73hSXkWlmXZw3H0k=;
	h=To:Subject:From:Date:From;
	b=iQW4BXA6GmrxMqM9CqK9Vny+2qYya5jMpT54YcvhYTHT18QtWYZWkKYjzKEQsmUdh
	 XPvspzdKWAqdtmsjSf6I5z4cmKfdz2VIUStLIV46aDygoEidiUR5jd8B0MZITdYg4m
	 69wt8k3kvgdEWiJrQK0tnU78LXJQQf7DhXzhTe5JtmLW2Yl0l+LRuAkl5Qkkb5nDUo
	 JnT3n5I4gxmt3eHBn9B3K0E7rDmuvAsptbzQ9NTJ5p1q6fqEpGgfw7ekjkcmIeu6kf
	 TYQXYTfuoA5hJ/OXCnQchA6fgQx8yjESkX/Bi7jZxieqOJtaUnVlwS0wvsdDSmG3rL
	 cVnbS45qv3uTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE607CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930903382.27708.9658981783295212773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af652bafec452f10a4d0286d9dc9557d3a1a8d91f0334c1c680095cdbabc9d6a
Date: Wed, 20 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779309033
