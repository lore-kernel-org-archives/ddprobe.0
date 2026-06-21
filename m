Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA0C23C368
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782072394; cv=none; b=LB1gAnyaC5ZeHCcDEXd8+kYrLQu35OyWQ2zyR6Byn8h8Vr7UGnAI4a11rVmv1NGMPKL6jNBWaJJaxWNx6BYtuLvdOUHjH97UIgQum4wpiifBBVJPIOLxZE1rg2C5BDHBiHDmiexkK3MCvcEr034/WVCF3HIss7sQc8fF2UfrSeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782072394; c=relaxed/simple;
	bh=mp91Cx2uGSUS3u7EVdI7w9LICpEkhTNRPIo/vJS96yA=;
	h=To:Subject:From:Message-Id:Date; b=ol4tHVfDtqiIMPjlIgpRH5aunGZ8zDcWcmDz/PErE4Y0GfU7WwoPY03958hjV2gOB1EfWQyBdTahq91TUZKlGS5s1cO0tWnfJloG0lxsj2UhT12IzFDS638UdVoxINub+32EX518rywux4siYqTG0vVEkhUvcnGivO/NbsDwK6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUQiBVk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUQiBVk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0611C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782072393;
	bh=mp91Cx2uGSUS3u7EVdI7w9LICpEkhTNRPIo/vJS96yA=;
	h=To:Subject:From:Date:From;
	b=iUQiBVk/2je4GoD0blAZa1JLoEuqgytaH2Cxc4oZViGSjvn6L5ILWHUDLP20G0p4B
	 NlgsvnPlM21j/OCDucYcERCvibBmlrcD9nU4T0jHvwgqVJI7cqK2iNfyaUKHwwheJX
	 21r3UVwgIrS/5mRDXF9KDb+D2U66B2uCvVDVIhKhZQsQ+tlRHeOqoyVfPo/xus+9R+
	 J/swWMUGXeOA5gMrZFvCzcKgFxVV1u418Bp+q0ux6VtbVZrQOPulnPLbAOuADaQy7z
	 RUVLg8Fhk4Ka3A3R1RZarT33DTc16HN6jl4IBMj3diA+9SEIeGpI7QNKDawPlMA0gC
	 yYNXdNMm1PqzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A15CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207239368.4841.16268428005653420939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d23a16da5e0bf7eecb1456eec09db49bad8396cdadd74973ae61eafcb4608df
Date: Sun, 21 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782072393
