Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FD81FBC8C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783300114; cv=none; b=CNm/OjhZayGFYZDx4FEJKK15XtXRjrjuXsWjstxge/K+ee3oDRKIVDdtqmt0CbFb6/yXbVzzSioQ8o+uWFolsMav/PGCAfUSXFaloAIsEI+q1Jat6q/Qf/402LbeZeCxQau7fG9+WpJtrXwAhOI8DzpMDPTshQFXbnUP7BGcUXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783300114; c=relaxed/simple;
	bh=gFf6GbD6EAqXMzsGh0aSU9nNo6bJbXRl8EtaJDc6iV0=;
	h=To:Subject:From:Message-Id:Date; b=s1/mDRY9ezvuXzq2GpW4FzhtX0xhauoWtTr2gJp3ov/U0KVDq//aHYtcAUtmRe3ElTYkio71oOsV2mZ0Y/nxOsR8t8Z28HPzpvf31Rjnr5tPhXxe56zOFhM7N/sXJltSzuTHfw7tTZk6VUtmyfpWsYp+/Dmur7XTVpFlMoMp/xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPLwSypG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPLwSypG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE587C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783300113;
	bh=gFf6GbD6EAqXMzsGh0aSU9nNo6bJbXRl8EtaJDc6iV0=;
	h=To:Subject:From:Date:From;
	b=pPLwSypGkJclKtsxwcWrATuQdk7HMPBReeocxoVG0xqcbeVb6qwMCXv09Win9uGte
	 wtrHg1Ts9KYlYvgpmUueaTwOkn+kIKaYxESZgP5HKa+ZJbK0UV/5if6yFwT01Hn4iU
	 C/UUrKSMlx+JSmmxDSUUi2G/j6qcPVYV0WW3MOvj8TXotDvn62JiXmt+mnD9Iv505P
	 jfjatS8tZGEgxRcwhj4Vt/is2UaZeoXpDnIdAeCO782YSVK5HGVKIlKn5fE20e5mH+
	 B7FNEFTyuQcf/cCA1lKrioBG/evcSQVrWYjW/LZWXxg+g4ew99TA4d1/1bnTg/Ks7Q
	 P6dueol9a2v3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD61C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330011368.18072.17273241444480857008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5576dc64880f1a480de33eeababab7424e9a74750720d2c73c8d211cd9b1e34
Date: Mon, 06 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783300113
