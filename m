Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2484F1E5729
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754139594; cv=none; b=LlV+q4AU3nX6t2NZkMexdkqJYgVlcnJaw2YNkXPuNgJT5IBuWIRdEdOEhRApcmE6EEyptlUH/f61w8/XbjfgBeDIrrkfh6mxRWHxoe9mD/xrnp4wLoLjSfTvsQ/Gk/PH6Ze3UInfTRtCDdR1DPBlguubx+P0PuNbaJrFaYr/k+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754139594; c=relaxed/simple;
	bh=5G2RI02+KMHhlb+czTY0hq1vLMqyKGZS5WQuU5jJzuo=;
	h=To:Subject:From:Message-Id:Date; b=ISGVcPVJ0B7FAMqI08QxV31pFlG1j6igQLQ3PGhDOeONIhoea55ZL6QWoBcEes1Vd2hR2FArY92Sz6rwwyJgCaanO0ZojPWkSi1EYwE2EATAFMBALTJn6JFi+m9fAJ4rUDk+ZkE9zaKLgRz+Pj37EhjEChRDtoV6tF8andJzGhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilemQxAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilemQxAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B87C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754139593;
	bh=5G2RI02+KMHhlb+czTY0hq1vLMqyKGZS5WQuU5jJzuo=;
	h=To:Subject:From:Date:From;
	b=ilemQxAlBLJ6i4RJlLAp6hIbQp3ynrPfk0IzxBO0DMvVxsCWx/1/Tu8WQx6r/g7ZW
	 MNivH0GuNJWzcA3Zoidusd/tjrfN8CUJzSwV/xLOsF70AIo5xv2Xp5NHdBbn4b5w+q
	 FsE7WmYTPLiHi4Lxt69M+IG8R/3BkGfGk5IqOLQM70SOe+cQe8lljdErJp8GWjpALW
	 DdHgQpI9HgG4JLAJbD84XF37HhrhgEHdxSTre6jAOJNCEh977ErLuabEHkhB9FOG46
	 mnFOFFoA0/4UBD0fsq5s97PoPOXwneGjfu+I0CYkehbQ1qvz/bESOceKLQ7P5gnRyB
	 NTeww/eYlg5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52AC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413959357.27936.10612919747528092292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed288ff09f1c5f46229536a229321368e0b7a2cb5fd4276188337e38ea8bc54a
Date: Sat, 02 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754139593
