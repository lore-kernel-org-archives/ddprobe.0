Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411557DA6D
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745307594; cv=none; b=lHLFT2djsIGMes9INPcT/MJUr1y89B2pa8QTwMWdK+delhsMoW/mhTUIUG6qHaHMuSDVEcwcYOvwyjFvimmp+hIGv+i6itVkxEAoFVumTEVDiassb7zjze25WqFJUVL0qivNIWCHFP7OEHvo0I8H5hhPexQRPMmI+Hztl8d6XAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745307594; c=relaxed/simple;
	bh=yeaosltNLTSZle5dhWIw9tlEANH9dAQETY+Y6NF8t/k=;
	h=To:Subject:From:Message-Id:Date; b=e6kDy2YX2HX5K92ZXdJTQn7v7VON/IEZz3I5x7oq/THbFw6y0dGs8abkgTzksK1WFs8Ql+7DPTarbFmfBTC0PClfV2RQlseaZWm6GfuwnkambsTT2fKbJYJpAWsYzEZTpo6iHp71YNFs8DzIqtYR3wnGE8wfmqeVafWw4YjfjKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMn2A0Qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMn2A0Qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38BEC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745307593;
	bh=yeaosltNLTSZle5dhWIw9tlEANH9dAQETY+Y6NF8t/k=;
	h=To:Subject:From:Date:From;
	b=mMn2A0QnLyxAN7n4jZzSpTbh2VJnEqhXgymsAipqN5jskGihjl09OEHdL/W0KPEao
	 /eDRQ/+VRC6OligtLI9FKt0oc4umBRBSZVxIZlrMcgFdm5iro0WRsMGC+qowkTJzkr
	 t3MPNzjic7hM8Ymgu2oyR6AemXo5lpsCVjILrTSQlddUMMazmFhD10pdWlV2CPBGZa
	 s+hxKCRqMkA6U9MnYaYp/DWoj43KzgXPFuw6aKypBOhnIVmCNluTaSg8VFGaQfSDro
	 Idm3opF0o2GK+YKzAJgBMvrCuEIohrw2evZo+WkzRCSLpUxgtIPi+Sjx2T4u0ToGD2
	 nAkim0DCNetyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2F5C369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530759363.8008.8410561100760190317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59abc41b90d392275e09fbe96fdfa541a5e45df56d6837e595d7e587a6553423
Date: Tue, 22 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745307593
