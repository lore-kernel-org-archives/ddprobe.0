Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED37263F32
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756511994; cv=none; b=NbddzRtZc+YH39Cx74GTDZfvKUpK2OyHzcnorQIUvOOf9rRlm3VTQwnvfiwMtreiEv1HIC8r42pbLcmZsvKjenhybbew/LY3KjpFcfvw5AYAH3MmYEcKmcNAdM4NMMgxq6XCeN/gP83B5GpamDwbtzL5sbNCE7S/2FeZfnsnZNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756511994; c=relaxed/simple;
	bh=bqCVMqW+CmxRZ0XHYPuyu8nGk5f4KrSh7fYNPvOiKgQ=;
	h=To:Subject:From:Message-Id:Date; b=EeeTa/du2yYeK9izfNngw2ey99tpZZNOfxv3Sd+Ehh/sqpM7wM6qNGpaNCllVYH+jrL4/Y7ZInxq2PUZI2U/b/Yol3418wyKiueQ6dzWNkMiRo1VePOz9NmB+5AGzP2QGGxuNe/epjI4MvApxs4CP/Lohv8t/HK67dIqRlvndVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIn3APLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIn3APLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0757C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756511993;
	bh=bqCVMqW+CmxRZ0XHYPuyu8nGk5f4KrSh7fYNPvOiKgQ=;
	h=To:Subject:From:Date:From;
	b=RIn3APLbo6SMOQuaoptkK+gGaByCQhc7L5m3OpogKZbMz/1xS88Qtzf7S+VFcjZyA
	 6HQcBYL0qHMFc/L3LBJk1g2XpQzzfcGR7Gf+UVAbQMnSWn8MUnzn3crq2U89GBf5a4
	 MnRnOYGws9SIJ6uJXkK8z8sPIOtyJtsMP9X9V+bjkBc3D2qutC9p2hvCHP6M36CUjN
	 n5sbqcY7lH3aw3cEu0R+F52Z0XlnWAc5g32zv/H443rZZKzHmT+0ZAq3Vi9FXNr+B9
	 AjwJHLLzQ+IVCZKgX6ZByAxkokg9rFa2fVJqEGDNyy+j/6m2d9wOuEGrGdriDbt6hQ
	 XI1yjPezbY0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F641CA0FFE
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651199357.16709.17412476180669489516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16792c38e965337a468ba8585489d0d7be143cfec4ce26fef3603af9e1ed7947
Date: Fri, 29 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756511993
