Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5349DC2EA
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780018354; cv=none; b=nVCsG5Ja+KEKl7fbITINkDhlUwI1lf7kaAmLdK8fCKNnO078jz4NAIMTF98vnaFptsBXt+00xUR44rb57HSkMvGmk8UL4px4tFF6IK1US33xWY7HjnLUKxURMv5XRs1o+fcOkf4ehaAGlMIUdrH+0FMXUPyIhHrt5n/9orZA9Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780018354; c=relaxed/simple;
	bh=hvIyDl63XSrpBFl7f1blAX5tjRDF2p4OVt5IxQ9jmxM=;
	h=To:Subject:From:Message-Id:Date; b=rjDdm93JJeRT0OWLF8/fLdiK3oYL3nJQF1Cw9ug8I/AicSybH9MnZJeVN4uc65wbVpGQZ7vRcTjxZLHYykGr/ApYYUujef/5SkaPeRpSF/RvSK3/NwRgQ6sJX7wKC3XuoxPEQnAkAu5iJ5DmcsVAJ5/9uDSk/DVO6ff1/WhOdeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFGBvQ2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFGBvQ2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67BFC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780018353;
	bh=hvIyDl63XSrpBFl7f1blAX5tjRDF2p4OVt5IxQ9jmxM=;
	h=To:Subject:From:Date:From;
	b=vFGBvQ2cffmYsZN1twzF49sTl47tHZjGsROFCQ2TckilWnFhXhvYdy0OnVOr+RV5s
	 nERId/yY+WTVN1jJG14AUuDrFIWorkbAaoU8/uH/veiHyovL7m68m4nrQeoKC4gdb/
	 6/nvozE9Lf6gb9tr8I1YbPzwPqikHN39Cbx7Mmyrot5ME3TqewTh+317RT5R69xXxP
	 03b1O8mvqLEFnoXzne2Jb3tG/MU+v9hPZgMI0uadxnhTue/6VurCl4YPX93t3rcXJM
	 gek6gw+jV48r2nOIV0eyZjF5LEIoKKXQuHZS+m+AHLpxJgRc1xCkvI4CltMd4y47ve
	 otmxyStvSW1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD9B8CD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001835370.18344.12317633923723718788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08575f0c3afc9264711fce40c3d98e22f67e3d44a96caecae59e10d27b2ba097
Date: Fri, 29 May 2026 01:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780018353
