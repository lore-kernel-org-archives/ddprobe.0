Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E71F3E1203
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791892234; cv=none; b=gyY7RB+J8WICxfQJ8i+ehW9/BIjf3HP61R+yNYhNcaEc9fsP3XfNMCgf3fvzXQOqHvwrZJOnPY9yBVNId1TyFF06/WtxcInRHq5Mj5IRW/SSVAyHlgEIVWvaKQieJKHoKTMrwK5fMCby030xAnYrHBJ3Zdc8dxJbEMzcdXSlgzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791892234; c=relaxed/simple;
	bh=eUQ10BSwaUCc0NAfRXN058pGrdSWLSbcqq15BpXAF+U=;
	h=To:Subject:From:Message-Id:Date; b=mUGg1Y/bmqFPL9ZGN+LajRlvWlpAe6HRkJvsoytW3HqFI/5EA3JkkElyZoDbNycyVnCpnKxZox7xNPbjk4nlLJVDhZtgikzds4EtaDeBt2CA8RxEVYmABZxJRpW89HSYqCe9+/vvWQjYroyTSaNgEnPS0wXSLL0/B6HuUxEBV2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTewn353; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTewn353"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE974C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791892233;
	bh=eUQ10BSwaUCc0NAfRXN058pGrdSWLSbcqq15BpXAF+U=;
	h=To:Subject:From:Date:From;
	b=WTewn353Lhfowjrj+/aye1QEvkx5TzbG/rbOaMRT1pqG8HLtShFUpFpr+SBCii//X
	 svua+Bzz91gQVkJdKKNiHmVtug0eiBgwrGLWFUyQ/+SMz013UI9gkOQYH2ibBAPIZC
	 HfbTXCn5evlTJDlRYFcWc9VeA1tbMvBPEhxjRWxt1F6J1EwSAnpgcNTOzQUd2N6MtP
	 +HBz0lbyUH9NAPBLp4hxuKvdhuVDoIaDU4gQT5LZJQp67R9V5Gvr7lHPdZWHiJ/XIS
	 011bVmT2OHzfYKoZ3AbOm4NOGTVBfKq01ojOdHzpJX1Ni/Oyk3tR53hqL8G295QFk8
	 xXe8kEW9dp3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC047CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189223369.12692.6711958330890826182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d230cd07c0a9e3c5cba7c60fec55c5864b15f1aa5ddc996264fb8e6d9808a62b
Date: Tue, 13 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791892233
