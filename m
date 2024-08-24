Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD9DEEB1
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724470554; cv=none; b=uKPw1gF/TDV+waKMbTk4hpyAsb6Zk5GpQr7OGQNfC+IHG9nAcdegJLofCyLl0EHANK8FmIwKI03lxKrZb04Xicob7fG54NmavSyq9+KhBKIooVCyYu+GgUKZMRzz6iD1muartNCHBXq526fwU08WDZK7S/puepqt8VLlTQ+p3j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724470554; c=relaxed/simple;
	bh=9ECqPSneZPUPaxfMKpvgfQ+ROZbBBvFJ5/5UU0C4Gp0=;
	h=To:Subject:From:Message-Id:Date; b=u2wPgOMiZTDKeDVqVWCjG7AJ5QVwKpWwf8RtCjnjGZvFg9iCqcS4tWRwqJc4FGvTI4FwprkriXREpxTMh3zny/7EKBvlwtyewPKI7Osz9pkvpdlz+CGcYxxD2z6oCWltDRUEMc5ci+0bdQhSfpKASZ2EEU+CNWyytn0sUyozaCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3BDFZj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3BDFZj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCB9C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724470553;
	bh=9ECqPSneZPUPaxfMKpvgfQ+ROZbBBvFJ5/5UU0C4Gp0=;
	h=To:Subject:From:Date:From;
	b=E3BDFZj7efNBu66WXl/RfXjSQ1oJ6BvEY2HDy90ozTdk+xRQE8WhWCrv2/Pjby9k2
	 +KSn9MkOn4fboN9C7rQIKfVHL3K+2tQGrd/GkNubDP2S7bgm6sVmtz21o0IF705U99
	 AeMPCeoCXhAcgiiTRfcqDG3fIp2O02TZjedM1pthbtoTItpqwH9qfEnmvho11sCFDY
	 SqMdvmWLmh0fM/mmiHvB9J8a5FOoK9QQA597ibrj+zJ/gFw0ZwzQMxk6V9+uru4W4t
	 E4TJl4q5bm0nnz8hyZ5R3z4pZlH0ge1by+zjuQL8SMGk0REsUbz1WxAHLuNh9IqzSC
	 3aruyRNchllgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7962C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447055363.20133.17781643749123033682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d007fadde91c005edeef5fec712c41f65725c25d25756c3a312ddd16081c53
Date: Sat, 24 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724470553
