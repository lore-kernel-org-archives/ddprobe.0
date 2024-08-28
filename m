Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E191A38C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724858754; cv=none; b=tTS5mvFX2F3jysjUkqH/OzIhkz+t6yZS9RdKjq3GXlSccuc4bZT7TaAUkCX2sHVhv3mM30mpGno4g9O3i9FH4G/wfdv6F03Yto1MH1M/oTeZisDScYkShmp9bEp+qlAXaSJcVydNZCMryQjBR3aOLHJmPO62IuHpukkFaaqt3PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724858754; c=relaxed/simple;
	bh=Kh+lVcKCHNNy0m+W3SbvpizC2ihSZJ3UU253uSrkpdk=;
	h=To:Subject:From:Message-Id:Date; b=mW8rfHvNWtS/N+B5RbcHoaoHrarYxXB7kxP/OXsUg3eT/N1dh0h9i08pb+uCe13biIjmnKdPJ1y7M9dwC920/RAVNv/Tyu2X55Q3nx7dI80Jg0m5fpvMP49vZlgPxmNPh2v44WYOSafzCVHW7psNzYicBkgnJPV2UR9tP8giGLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnxPthnS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnxPthnS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E5CC4FF68
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724858753;
	bh=Kh+lVcKCHNNy0m+W3SbvpizC2ihSZJ3UU253uSrkpdk=;
	h=To:Subject:From:Date:From;
	b=TnxPthnSZE9UuAvliceiwhaU2dhmPYkjtU96tuKIRgQ/msR74MOP/FwqfKD1Batvx
	 fDoVJdFU5MkLnGHDWHU7EHv2k8umXGTlICez63J7djT0WmaZ6cwJxPIDSQf8ymLow6
	 gqaQSAWIzXevjc6mEtaA8swN3iv8AZHV8o6EEAHaNqabpjC4Hed+gboqVALL1jqZqz
	 D6x9K3MoBNEUAMgxtgrMoOSg+FDe0j8Rjak7jJfyepU2jeb5qNO+dn6jgpZDYtuyI/
	 9FK5+8M4+Yzjs9phwu4O1Wjy73QDHmQJPh07vXBf4t5IOYFBcp4Xamiuttwxqb3Tr6
	 22KeWPqD1dBZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DBAC5AE5A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485875365.18250.9000729633445668029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef8a654a8349dcece28d386b7868153d01a7a67bcfef11876e5eae9e80aac7e
Date: Wed, 28 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724858753
