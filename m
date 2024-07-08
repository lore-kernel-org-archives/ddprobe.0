Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7159919B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720398983; cv=none; b=oLAiOvPflYhWfAyZ1bKASw8IfzHwwpQThXH7T9IdI5egz24rxMYNFeI7+/8Jlm94lJ0EJO+3YeXJHPNE3/xjQj+HoOKVAOJ0Dg5IpuDEUAYKD6bOnLBJXDzM3Bj8+gtrnxk9DOpJxqh38hVPq548ANXjszz4nX8oVlJ1ksmbXwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720398983; c=relaxed/simple;
	bh=pGd2anCm68y8kTo0QD3YBd8TWppLrsxK50ewSnv4olE=;
	h=To:Subject:From:Message-Id:Date; b=ONZS06Ip5hKjGyZOQFcaa0CbkalDnxidIOTUXqf9uyB1pFRa5Xbg/ClmWtrcXQ9NOQAOJxmSEAJjPZP1e3MwSaw7ivEvIYHkiz0FUtW28h+nnFEEXR3STTCJuB6JsBpkh5pvg8y85aYJ6zCwBll/J5yakF/njuOW2NHfjFR9y7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxnZ6AKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxnZ6AKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EACB4C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720398983;
	bh=pGd2anCm68y8kTo0QD3YBd8TWppLrsxK50ewSnv4olE=;
	h=To:Subject:From:Date:From;
	b=QxnZ6AKcMDXFMoqfeO3TNWCJjHa+/fPaXNbHtidHjvCv2m7huCcPkd3jvdUEdCsvZ
	 o69Hh1ydetnf0AhtJwB/CMebmcsOYblPiYmag3XFSbvvUTRuC73bK05PhPT3skmCpC
	 ITapvDwQB2en5ytAcZCKhG/1cSxTlUTQNHs+7F10PCjVmJ04KibIQgjZs//+U+bK1Y
	 GblZDa6DcWrrRCENq/0eMqhRvYa6K4rtGCJ0tOctU2q+4q2k2OnYvX1Lev455NGwzf
	 gLQdB6wjyIhd6tebOOeT/O7asVMFNkny/Zt82AfBRKSZjO0d0jbH0fwNkkwIfc2K1d
	 EfpVnIhnb5Avg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0906C38150
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 00:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039898281.20848.6881058255746733118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2233f0a964f2144fcbb57e2fa9c51e0ebf16ea040820bebd1244b3409e41f1
Date: Mon, 08 Jul 2024 00:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720398982
