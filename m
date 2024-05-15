Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B9C3BBEA
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715802143; cv=none; b=c6lD0ffExAPJgB6MSDP92KvIO6U+tjum1jlVFkKS8hE3nJOppX64H5RdakZDgrO2eW/JwYh/S6rDMn6Yy8QnXKA+v8oZHoBSp8yH1egZpomoJC/FFcvmNIBQDeM7qV/2BGKU5Si83CQehef90djHWrxTm0mSxUBU5GNEfi1r48A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715802143; c=relaxed/simple;
	bh=Qf7lIDl8Caf+kCVO3K/P7kzyCjhHJ189WDpUs1z7ZGI=;
	h=To:Subject:From:Message-Id:Date; b=Hs4hGFlzNnP22FTWRGkn9pwQbC5sYXyyFswo7evJf9V2QdIqgKr/mnOphanR29hC2QlS+IbNDRTq2XPPzC32tPx/AnzXlkHMJTyjn3PA4iqib0ogV3Y7eKPEDpyCtDFnXe3+rkkEIsw7DgPLJdiralBGan7Bm5hFJUA9lvfOET8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7JzdABr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7JzdABr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E89C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715802142;
	bh=Qf7lIDl8Caf+kCVO3K/P7kzyCjhHJ189WDpUs1z7ZGI=;
	h=To:Subject:From:Date:From;
	b=N7JzdABrd6CbyxQLrZm2mKK0scstGZ+C6rJH90+9DwugozAbPKJmM+RoIgCNNqNDx
	 nlXrUGFNhBhucZtHPpZtwRpHEWVm09EwcR6OUpYtQFNt0R7Zk3Mv+B/zs9aFVhkFcx
	 absF1wF47E3s0+XND8KE7JR9JbiexcwYgOOqpvxs20ULB0LdhzsXgUptEHco8BxaON
	 IwOzC1wQO6Q63H1EiJT7dPo/Gqc9+Lc2fgkyoor+MVtaRwVAipZHJ8foLyxdNyrWQw
	 MiiqJzsiHgpy5wN3uc4iUgG8qLgBgHYNFBJtdpAzPyr0W6li4AUgSTk6vbyCn+dF3O
	 r2LVoVv7Zb0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0134C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171580214280.19347.11656067144219365516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf28de37b8ef123f619a8de756b3a4100a8ca20deb99e0dfb59908121344880
Date: Wed, 15 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715802142
