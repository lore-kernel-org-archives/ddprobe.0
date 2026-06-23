Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32258377ED9
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782210394; cv=none; b=YBTf3AeUNhpx9rQu05wcRy/FvRbFEGhr8Cx9ma3EO66lm8kPIG1fHtM2QDkewL32QVHzatL2S7LRe3kjZJw59Olme3wKdOWtrTO1iMFEjL04LyrPx/8RWpoSPXLd2Q884VnZfle/4kU4NEhLK7X9LV/zzaeV+DG6OrSDUdxZFnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782210394; c=relaxed/simple;
	bh=evQxdrT4KCToUVEvtb28XAle8fQ9+ECn0eWTuQYBEKM=;
	h=To:Subject:From:Message-Id:Date; b=e0jTlVJTk/NLnpTEOrHLntS+WFMQ9ZnA0uq2XYisj4JDCP+js4IfZnxOz6Bd4wdNlxmn7yk4XpCaG+uRch7YPXxs5tMqvYeftMyR1mrDvYj5tdE0LsL7jboOUQRo/z3buDEQDFWaoldbg+KCTOI05ixH+k0JRITA4xoIcdiZvSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gor0uj46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gor0uj46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F74C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782210393;
	bh=evQxdrT4KCToUVEvtb28XAle8fQ9+ECn0eWTuQYBEKM=;
	h=To:Subject:From:Date:From;
	b=gor0uj46Yw2VAOZG8epBO56LeSyxbSF0fKJiClVNzonWv3MNl9+CnzhHb6Tsqt5US
	 YQ1zH/poovbQm9Qc4xA++VGSbat6s6kMHzEMiNVNOQ40UmLjXjsDkkvqIsKwhZTGmb
	 SONyo9V1jQGunJfw1irJMB34scGYOEOkGiooxQZViVw22AUWsfIazZ18vX7jwRGznV
	 JUZyKyz3UlEEUQlhcM9GTDTht29JZ6R6aVed2IJpoi50Pu2fH1teueOUmH716fzdCT
	 4HGxg7rWyAma1VNonOKIaIEkYzOHxmRYoaqvUmse2+8UI21q1GIan6FnTVX+74SdKb
	 z9OzO/WaU4sKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB851CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221039369.18816.8562918447107649341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317c45f8304f0ee332f6b85308ade5454f71056537639b39bc7bd7b5e42f4321
Date: Tue, 23 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782210393
