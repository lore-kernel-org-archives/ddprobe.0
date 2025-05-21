Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2561522DA0E
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747801794; cv=none; b=atfEAJ+MVN6X1f7q1U9rrjqy1EAqsBeNuIT2AiB9Bduul4Plgb89mzA11a03SQeag8xmG42knQIdDdnG8AExX3codFeR3SFGvF14RJV5W/nVmFzK/mV7S6WtO8iJPzHqVznQls14t7Yv6Vz3XE/M3ajJvZBNIojX8Jb9/cZw1Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747801794; c=relaxed/simple;
	bh=Ee50Xg9Q9yYD2g9z20TdK8A3bIMVLt4AD+LpP6k3LCc=;
	h=To:Subject:From:Message-Id:Date; b=C+So+3n1IV7KhGcGJ1Cqlg2ZGrCisVH8dUeD3DywR7ihVGxTLpfsg2HF4zS8gnIbpt+0UXP6pxu97D+/WbSuuIOPGaBFjSPZDzL4M/lx6VZ26Akg4KhjyrDioorjTATpwPp+CgrcNytfSrlk50bPu+obkAVvgC5hN9Wnf8mHXjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIHJcTRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIHJcTRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E0FC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747801793;
	bh=Ee50Xg9Q9yYD2g9z20TdK8A3bIMVLt4AD+LpP6k3LCc=;
	h=To:Subject:From:Date:From;
	b=YIHJcTRsXr6ZfoL7ShGJO+cmTJ3XOrZJ65/loycsyUeNciZjS8mZnp8+/dZBMlWQV
	 OUu1iivsqwHOioRl0E19awO2P+QTPsvkRn0XQNRkmQMErXoVkV9TQINq2eR9wV8eTl
	 X+5orPO7LtxXNY1adlUmaDnd0TEsvMKg4/bHpgfgGAWUKu0GyrV2T0WmdUNW8diCF2
	 WgOtyQDb15O70beSnos1ziP9RJU+auw9sccicQmhMQYw6G8d3AGdOV6xg3Il0r4/Hb
	 b0ha+dqAgXvo2RYl2N3NKzyYZ37jEvERD1PDJ7ndj/ST38bixAnjFdrxnKfLBAW/yY
	 P3T9AKh6+bPwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFAAC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780179357.5059.211138694141572690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb47694adf0c2345ec88001617603ca003bb852834a01489b0058fdbe7c85d70
Date: Wed, 21 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747801793
