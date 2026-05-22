Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6E2195811
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779411154; cv=none; b=Q4yflZy+YCdPFOPmHU/5mW8eMOMQEySwbLyAtboVRhWlqqa4Q7GxadYkZSaPid8X9lZFblQgP5E31ng5+fGWy5fwGhaxK9TMEMpVE6V976BHAmOIDwailpmA6W5HTr13myHec2yiVkahznoColjci24bekLbrGSsb7EvPL8sR0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779411154; c=relaxed/simple;
	bh=i/OobM/ZnzOhzQQvVQ+rWcSJhVXxglDGW3xqNnbZz08=;
	h=To:Subject:From:Message-Id:Date; b=SzCNcTE6OluEqwoORmA6YB6/qIC33CMK1n1Fr4kvdwIqJmKy0lWpvmp7PrSf0grcA/n5MbtYaO96holusGv/UAO+Voq+B21ikSIe09n7xMaT2qj5om2PxzFpbUJ8rtI+YHdbItdShUDS23h/bvIlZV1q35jMw1HSUeBWiZBMMBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBYYygFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBYYygFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCC1C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779411153;
	bh=i/OobM/ZnzOhzQQvVQ+rWcSJhVXxglDGW3xqNnbZz08=;
	h=To:Subject:From:Date:From;
	b=MBYYygFu/6e6S4JCrcYGriLYHAYFTdJGSZjZ2pASKhNlAq+DAOuw7deVVcVCMD4rm
	 557a+RosJ0Po+eno0VUtu/EVLoF6UWaufpwEak32+k6M5qsgplTL4xZxjNei1oyYcN
	 OUyClkvSeIrPOVpkbU+MgUF3TBvzTqM0qOp/aVvSUVBZ8AExF8p0M8E9SssCW4u1/k
	 sOj6pDbWym59J05xC2CrLoPUiV+aXQXewQesaB9ieF9tuLhtoqbXQaX7hvqxYgg7fW
	 CXjfk+DiVu52L9MDJYAcLnSvgSV1wpR/GinLHMnrG3bEzJIZjA2rQ/T7KZfME1BeW8
	 sIbHJhkpXEkXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3101CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941115369.6846.13101275720971047275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac550f2760a86c385a789e19cf8883723fbf41c2a0207729e84dda7ec16d5554
Date: Fri, 22 May 2026 00:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779411153
