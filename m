Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E549230BEC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773044694; cv=none; b=rf2s3af5TOTuWZ8sfexIWM8uHtevpLvQPEPlo7o/hT+zI0u/KRWrzD/nXMym2CvIoj7CeeZ4oYx56ichMjuiTj0FRvmDCLiEF1zVbMU1FyHp5UFiPg7/IOJKKm8qTMQbHmKBT3p6/4oW9xFX7k25yS0kJ9Qp7mnMFcHh1IaVzIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773044694; c=relaxed/simple;
	bh=JJutDgbasdhpjxEx5uFgUriMLplW9+KL3eE26RDy2vM=;
	h=To:Subject:From:Message-Id:Date; b=u4WZM1GswgxWL5fEFgWSg+ZotghKzC24TBgKsQ0UJ7882AWNdNjXa93m2sisJiQ9/8xN32xtaKPlZnh9V0Su839A4k0YwMsbBgML5pqyKO5Ovl6gE6O2Zyg0byD0wn5vENrrY8+XcXNeHfXxD0keSvx3x3zEgsOcaA7E4GEa7vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu5TmI07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu5TmI07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D6EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773044693;
	bh=JJutDgbasdhpjxEx5uFgUriMLplW9+KL3eE26RDy2vM=;
	h=To:Subject:From:Date:From;
	b=uu5TmI07enRAgritzVdcN8svDkuAg4n5PTT5S4QpXiDP5PL6POdlysKSaEybzQi1h
	 SEZuRo4Tfvh9RlIYBRDr3V6kxjQZFwCP3SwXEiWsVYKB1aesq3AVCdJQVyo3HyLJtR
	 FbCkB+8i5RCn2V1dhBmKQHii3QyF1dUMwI9ezONcUQGjtym8/0JgSXuFFvXlt8oif6
	 WjrQXo+GzDlW2+FXy5Uo9bBginPlofNMFQ21tz0VTezuOPSFwP7q2lZ/XbnKMOvVhc
	 kZLBlHTnKu8jfHM+Dr+2pAETrkaRP1aonL0ZxW0vIqq6flWvVej8MPvcmA37UPaec0
	 +3+0n4eLQw8ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95787EF3716
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304469360.23742.13510061264450477924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec5f6fafebe694a93d43a7992d4b991b15de1c99c1e3e8605b29892a1463723
Date: Mon, 09 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773044693
