Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EAC13D535
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718797763; cv=none; b=uuj99CpRKBbMSNI7W1D8a8eJDiIfO/j3PxaanSkp8PBrBUQ5hebZbGbKi91oa6q9M0D1Q+CHiLlZFqllp3ii1XztjHjMbUzA11KZ0MbopSsMUck/WG9xtYa9p6qC33hb5psNdqPT08l3jjySP20CkXTuoE4fpzDAFlN0HY8PlCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718797763; c=relaxed/simple;
	bh=RuqU9lTL9GvoUEYzCG5wx8a6tGyWZeH8junSjBiCv0Y=;
	h=To:Subject:From:Message-Id:Date; b=SOhA9iI33nc8eSCGVxEUa8p0/9GfuL7fmwCS0M08k//VMIpc4t1NAvok3aQgtOSYgbE2ppU/Ufdv3NkvYh7HHX0eXXN1ISWTX97Wv7wOjfNEQ6mXvJvywyo5q8fjlvppTYlaWozoBHAa+d+Zws7qz6sxLwF5J0NCsP4hy8BNWAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9D2zv7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9D2zv7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53CCC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718797762;
	bh=RuqU9lTL9GvoUEYzCG5wx8a6tGyWZeH8junSjBiCv0Y=;
	h=To:Subject:From:Date:From;
	b=D9D2zv7UMbQSwXuz0lFCdMnGpELcrtbZ3KB7T95v6jjKxCHbRR0a/bMmhmjnxihoc
	 V/4C2J4jIDOWvjn8R2ut8ozRryD6POmwAk2luxiHsYUM8UlUJojcVCzG9e2oxBhPT0
	 V9ajf7EzJTS/kxdiGrATCk/dVVhqogfMIZBLt26olQbr0bfCEHaDIKn8FhyFAaHGpe
	 0+dyV2mHsk3mYlYDdz09tGWY3LPQcNWqh441kqkddoECyLZw/LKS99sLSTADAQmU8W
	 dDy5EkRcOa/2FNRUyYF7vIXCo4hvyd95LJx5DiYaEM2musZfuInAqKyARpgl43SZxM
	 6aZq2PRy5W1tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA63CC2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 11:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879776275.21339.13159196305471742458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a78aac1bea07055ea417b1a585de100e3e09239fc925bb1a750e48cf83b4ac
Date: Wed, 19 Jun 2024 11:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718797762
