Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567EE149C6E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719358403; cv=none; b=t/wJsMGCm6xsGgX5MqDYZo2Gnhr8jr7tIkRR19+yIJX+jAEORdsBLV3mwLdTb49FJIJMVKuivjenhRMHLV66vBFJZK/LwQBSsLt+0iodF7cCEhbuzQppTbZ3WZrgjjxeEXCIb7oB4ognE35VxlipJOLBeh3ZmY8yiBoW5CBtxM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719358403; c=relaxed/simple;
	bh=tFdrGsDVMx8GalNgFJfUP+EgJWkm9rpUtFWJW0c8i+o=;
	h=To:Subject:From:Message-Id:Date; b=HgvAPF8pCjlwVaSFLGtc0Zwc7vStnYwbJWJpvbQiqRsMpHKnj+3f7ZOZHmC3q9uPF7qELasXqH4iZGdDG6iF7YbFWvzloRryikeMVA4MIjx5d2Zep+Mk8PYurHWgbS0HQ2WhEDh1iY7LZxOXKCYuZlqOokEcl+WEprYVio0yRX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsmVik28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsmVik28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB839C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719358402;
	bh=tFdrGsDVMx8GalNgFJfUP+EgJWkm9rpUtFWJW0c8i+o=;
	h=To:Subject:From:Date:From;
	b=QsmVik28H4eIC0vmxkPLkydN9ydymiDCsc6+4zzCfmmt8oTV547CERggZVzhwnYum
	 3T7AcPNlSVP9vEifNRZ0IWaNR2vlNlqc9ddwPaeb0lZRy/jrvqB428pZkjx2f52iQ5
	 KOfG0cJ4Vz+nmdzS51erit8REV+u2B20jqb4l5w9If1wjkJgyX8XNNUOJ81wnatTo5
	 EhArVmHq3MzE/0MwEit2H1CHriGjlFQaU/Al2/El2JgqQWcKIH9Z2vI89DZ94q2Jn5
	 YIOO6DhCTe2SGOsRtjymzxlqxx5VPpBQm+0/Ttas3zjyxqFg/n4C6HPlq6GVy04xMR
	 QhSMAGNO+v4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BF1C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 23:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935840276.32594.13661467646164403879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f06aeb76516e1373d2956655d51ffb542b432747a74cf83c39cd9c7c2f3a2f
Date: Tue, 25 Jun 2024 23:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719358402
