Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E88B3A7E13
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768926834; cv=none; b=eXR+NmhLt2UeUbu4Zr6vKj4sbKSt5KWCwjW5YkN1t8du0RgANnVd2mytHOg78rZdDOcWrIrIkcUEEswKG8U7Jk41bzdas2i6F1k0dgNzG5NHDPiggEStbqVR3yX4c7fQvv1IITXJGILOixqf+dggEwzJRYZvp3SQM1aLzMPiB4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768926834; c=relaxed/simple;
	bh=grI9ebCT59eff2JVmOOJjWkL1zEC8wwFf7EquSTZSzk=;
	h=To:Subject:From:Message-Id:Date; b=lMenX2wR1dIrywct/Pavyfdz1sj7uYH7v0h4Zj4n3+DVSoVOi1JkOcNbd8hi5NIyuAeUseces5kAUit9PbfNOMS3zf498rmdKmlHqhx15bwAYOtIOM+a8p6UYei/12S693+vNhb8nbaH9K9FHhSv2n1HW35dytMe3euVw8S/TrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sd9FiYXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sd9FiYXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9F5C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768926833;
	bh=grI9ebCT59eff2JVmOOJjWkL1zEC8wwFf7EquSTZSzk=;
	h=To:Subject:From:Date:From;
	b=Sd9FiYXv6fFM3sTJkXupZG/3YfuFdGRIgYy1eNzHIGQ8FHDxqWQeubI+UxSG8wl/3
	 9vQ+fvPk/9F6yWHjYKchC68G/liuAhXvMtajDvjnAOTqXP49LR4QVrz206hxx/xUHp
	 XVdpMdHkkEojY1ZBdnPmF5clPLeu5E/U3fMRdh/RAbxWlDwsM0+edr4sTAJUVmv8j8
	 v4YNbraEd/RptnB+VH6Giza6qdnFGrmlGgKf3/9joAKS0GlsdGS4MRCV8EsWJGLLmv
	 N5q1XxACMJK+rxFlYbwdSvR/PZywh/OrFGaTH3oxJHR5ISg9umVNwSzetQQosHQX+G
	 chBT9Ran8301A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF9CA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892683358.4327.15678470487895362099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6eb3c1e17667029627af6f3e7921976146a40427c943642c62aaf37c08fb97
Date: Tue, 20 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768926833
