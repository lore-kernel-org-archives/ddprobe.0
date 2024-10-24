Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347731B6CED
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729764354; cv=none; b=kRpxh4Vv2p+af0F9M+y7sAxYt+1m1Ma0GgYTHS1QoV81s7OWEIMSPKinb9/MOaUWcPCCncVTJBoey5IQYaqshT4N1qwmqq85CQXjqF9NR6EJ3bXqkfdJKKLgJs9iqVOq18Gk6VAKJsFXXNMEg/NK3wnghe5XOkfTz56lQUQ3Zww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729764354; c=relaxed/simple;
	bh=iZAgA2wMkmTciScUpCICOMs1Kt1iqG/9V9kayOP8E0g=;
	h=To:Subject:From:Message-Id:Date; b=Sau+VJIChGY0TpS4CzjdEfo821mzoGEg8YyyqCy1nsaygSZ/sgHvUdck0ZpbjJ0z+HKuvg+272BJQdteOWNVBvG2gx9XFRqbQevpaeJameIbzYSohtRliIbIy118m7LpjL8v5usaLXEAevbOVUsTdR6rX6MIwFmi10AiMmcT+PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh8JTjXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh8JTjXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A200BC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729764353;
	bh=iZAgA2wMkmTciScUpCICOMs1Kt1iqG/9V9kayOP8E0g=;
	h=To:Subject:From:Date:From;
	b=qh8JTjXa0jYnvv4myPlkTZ0apphaOpe0Yv05Mla8yOx+TOePgGWhn3kKHcalkEEwZ
	 HYUGVJE/dwfUzshq55NAuY0bZ3tYNAUfccYkLj3E9O/RYV+ejPgJVZS42CfI4Vvkcs
	 JcYaYFHPZXJLcT6mZ+RPHP0EJteF33jNlN0rjmLxxA0fX2MUPNpgKlQZ/Ka6J/vUxE
	 uwfG+AdBXpuLo6QbRmipH3rPP54HgJEEw8xrytgaDcVRcBuFDJJXblk80/lb5V3pXH
	 iXd+9nfAwbIv8RQkfPQIi28i99To02qAUpYvWCsBvmSh2Lt/vm+tAN5gaI/d7G6BDa
	 ZmOfQRzi3xffA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9178BCFA456
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172976435358.16289.1108152899287402574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26a831b563dae55767b434b37c96f353085b45f942eb258dcf639a833ac71ac
Date: Thu, 24 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729764353
