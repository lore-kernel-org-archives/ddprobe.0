Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FFF243951
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775390134; cv=none; b=QyCMRtzkB76U/kQVffhilweKcyM0P1hEHawWH1+Heqqk75416ckYplHaGNWqMYJDnjETg9TvnP7wglYL6evsA6H0grssFaPBA6BdsqnYwnLl/sblP6XDzpOtVrk3br1+6JNjSy1TimYF3udQI2uDOKO+y0wwr7tQeht0nQRVtWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775390134; c=relaxed/simple;
	bh=Nvg7iNay6WfXNWNPRb4BJv7Wv2/QB+JwANITPjCnsYo=;
	h=To:Subject:From:Message-Id:Date; b=pCzeCYfcYpa6MudaEU9I2DzadsmRGtx2hN1lqZqboI+O5iwTj7seJlaGDGy+SYu3zCXAehfjbY/Vra+jMD0ADhhjlOUXbFhtA9G0aoCUXSH63n4L/RnoT6lU+ZkxsICCReBK7GAUORNZb0wfp4WPgHbmcQmXzaTNVAVCvk+xjDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWDL425/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWDL425/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0BAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775390133;
	bh=Nvg7iNay6WfXNWNPRb4BJv7Wv2/QB+JwANITPjCnsYo=;
	h=To:Subject:From:Date:From;
	b=QWDL425/I1clWfnQMz/mK9TUU6wu/BNcgnMZ5LKoDuoWmaXcC3uwCZqpjtjfssff5
	 mbCXZwXr+dvEcewsrhbD6NI53jknlH5Vfk5lOr9hzT13btFdTHmMPXTLKxAfifbK58
	 wxJa4p0PwjPuI6LTlToalS58MGb+44npfvsiScGMD8XMTBq2J17qN5DEl7WKKkDeZx
	 HiAOXXHRNUuL5AmsVDagzqu49a7YtPUxkIiMgf+Q1Ry3FHl2NJ8KbPFVMBEXo6kRIK
	 EuogAUrDhZ/aGN5CSKW9GvKYFa/pj8W5K3UMwPEqFdPO1DZLVUFHuyD5ZimLgr+fc3
	 V6j+gI8++AwvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB26DE64013
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539013369.6188.17515471381241910855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada41788faf26bb05532da918de94239e31442c3b4fc3f1ac56d19a337234318
Date: Sun, 05 Apr 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775390133
