Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4970E2CA8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737680154; cv=none; b=B80iz4KDZmPbALUBQlcXXFwqme1ROe21c3WzSgVKJMgvekXfKUni9UTg1RX5ApMd06wF9EXLvxiRXKGJKNJJaL3vCQKaGbUkU7jk3B4Acr07WiZjxde6oGGg9aN/xWqlt9IXGxcedXTziI06WZX7oTaQbZp0ckEifTfaogyKbPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737680154; c=relaxed/simple;
	bh=kopM3iLHO07n/uQq3qYOx8bSJLTBC4hxOMy/hiF7xEg=;
	h=To:Subject:From:Message-Id:Date; b=BhSwv0DtQ8dKApLtvUtTYiM5kak1f6ngxt/UMr2mfLR22Zx4WoY7/RBETHdgitpU+rld+cL9bYTGcGFy/19Ei9130WaP6vCOL3pdIa8eT59tcBZIZxyc1Df/Be3jxN2RUGpHmDP6Un9WdUClMnueZPLK9w2J+S7zzkqhG7emhKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+sUt5yE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+sUt5yE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FF8C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737680153;
	bh=kopM3iLHO07n/uQq3qYOx8bSJLTBC4hxOMy/hiF7xEg=;
	h=To:Subject:From:Date:From;
	b=s+sUt5yEATCvdcWbiZrkubz8vVaQakt8IcyhpJPDyZNbthzqpZ9cwex6nQq5X2hoQ
	 LTo3bt9apJkolFljaXCKF8ffZQ6NTWo9lZhrK3VsyiIAXUOZjDL7T60niECgsnJuz2
	 u7T3FKuClIGNpItRVQR9qjr4feYDhJTMtB+0oX6DI3D4Hquy/0ZGL1frke4KXItACq
	 s/XpB0yYoP45zefQq9XRrkrooamMNH/fdqYQ9jDN1/xSejhF8Z8EyiDyQ6ockdVZif
	 DqBeeJo0eNhrqWIhTbbFNkuFnWbcDRan/oLXnqzFv6so+uqT2+d+w9g5kB7Am2Vjjz
	 MbylBdTGAxgqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B471C02182
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768015361.23970.2113465596427266583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd563597498abceee0d037d44d425ba27c80f75f7bd9338bf115a3d775a9853
Date: Fri, 24 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737680153
