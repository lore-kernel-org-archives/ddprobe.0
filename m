Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30382476684
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790811634; cv=none; b=fR0BH9uLyXq2/r1HjfYLYthS8GJ52txxlKqQmGZDZSznyR/7jjcLd6rOEy7Jj9zDRdOrtUZYN0Sc3ROVa0UAOfH+OYqCugp1yp/28rub8waDLYwiQwM3c3JtWhU9LAmCAGmXkN+pzGR0qcMHrW1aF5aUxfdnBKlX0cVcRKKThJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790811634; c=relaxed/simple;
	bh=5Mfkdo8coqoNYHWfVQplTdM7nR6M4Xq4bamZjSTMqTE=;
	h=To:Subject:From:Message-Id:Date; b=nb6t2YyeqN7jleowVqciwx6X48fxKhNpHi+Bu0vTYrF06BFok+whZp5D1Cmu33x0c4nq+qsPcAO2AQmwHVwnpmlavk4Fan4aOPMfopjehu47gclcfo1h7k9UxlDyNt3oOcJoLCgh/c+ONiYc8SrRZvaFUUa3Pn/Ps83lMz+n1bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOcNuPDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOcNuPDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42F5C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790811633;
	bh=5Mfkdo8coqoNYHWfVQplTdM7nR6M4Xq4bamZjSTMqTE=;
	h=To:Subject:From:Date:From;
	b=vOcNuPDE53YPi9cEKbBoWaPXyiLKIPaa3NcK75NkyGvBN7xA19KGRMe/ybiusdhwh
	 x5gPF3t+ZkIM++5ZyEbtIrGZ+E9WRGMXnDCizsaRIot367yXGZp+9lxnxG+1eIV1/p
	 suOFp2jAnGwCPFHE4eKyLKlY/T8NpInPg6wpjlWbEADXwD0mzZlbk5NaL4r1lU8R48
	 AgHQHoA49M3fj1C3jvKZzHW6e4PvHETfYPRrlLy9DgiZ2idv7uPBKCarZxkbN9Cx35
	 Wexymv7KuWljg5rO5ygN8z0uUSXsfnSVl3uzy9PIo4Iz02kutJ0BZiqP6K5G7X5X8D
	 Ce5Gl3mLHz3Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF013CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179081163369.9994.2310010526521686782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ffc1c825f4925009912af7c2dabd9e416f920d91b9209104e4251b11cbfb0a
Date: Wed, 30 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790811633
