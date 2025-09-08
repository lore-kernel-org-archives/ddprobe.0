Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB981E7C27
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757328594; cv=none; b=fUzesOzDZAi6m3U7VzV40R8i2JNqFOWNHW0/52Qocpcby6ygpAAh4eU4sgrQVh6JSBnk/Wh1b66JBq0Y7T4FfRyq+0L9ibuNn0eU58fiVc6nWR7Z2x+y/4Q4xsM9Gfr9LNLugqZ8NWITp65cox5IvzdHYwZ7XF/YDAmQto48Oy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757328594; c=relaxed/simple;
	bh=SCviW8Ua6sognYK+DluqWYCTdbf7kJR9WMwDwXt6pYE=;
	h=To:Subject:From:Message-Id:Date; b=Pxdp+IHhPy7ajKokdmJmVnhkxqyq0o2LTKdk+RtOdliOG64q/+DnO3aiX8S0vX1ovkim50mEU3eEb3LlEm2wgy9WDNf4CFXHl/rLWEm2bDkgBTb7jR7OQt7GRj8ERbh1JBRhufDdAPi5+sAiSoSW9qE+Kr7sXcKqG8g+5LLE8ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZdEAyEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZdEAyEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B97DC4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757328593;
	bh=SCviW8Ua6sognYK+DluqWYCTdbf7kJR9WMwDwXt6pYE=;
	h=To:Subject:From:Date:From;
	b=qZdEAyEA2Eqzv/lbEbeOOs0iHYYJyDsDkgB+uQnGbQMkOyW6dul0NdFEIL1C3BI5w
	 cgcAI/Ae8KFC2tjYU1tWEPABiTIkQ6WR4GywzjYU15WL4b2dDOpPtjQNc+9CC44He3
	 fJxZ2Jw76XJ/lpKVC/UJkvmc5D/6jLxn6VQYesk5Z+qNZCI72I3VDDlpp2Lq4SizuV
	 AEVJbCmefxa5x1GMoYdObqmM1tZWUY60ZRgjHgfbBR6b1V+6mZK7UNZC602IIP5SvB
	 o1A/cQVfO/PP+H2Gf7u1P1YqDQZoWpkapUgTKt2+076JP6Wcal3WiukvRxRAsXl8yt
	 HMhiHA4RcaJ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C2CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732859357.13119.17756232956397796296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb85a88405ceb8ce868676c02fec9a99f6af6b57b0c2afca0d2745a9a344cad
Date: Mon, 08 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757328593
