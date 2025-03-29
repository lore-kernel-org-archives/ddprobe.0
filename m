Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADE98F5B
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743238194; cv=none; b=YvmpvFQ2VQIAUYeZF6sCIDvzwGov0kKXEwiXKT0K8BDggkTc6o87PvpgbZw+r3dwb0b3VnTKPj7vsIZXC8FPChFJie0pqi6Zf116pO7wXLqIrpUphOVP7gUPmQGHGx810B/ZDGnIrNDR2ukDB+AbwbfLK/dPksi8RRxGWe8Qk+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743238194; c=relaxed/simple;
	bh=TTio524aNgJRT2bb3gyl2sNZDfTGsg7PDBEqd/BX2uw=;
	h=To:Subject:From:Message-Id:Date; b=Udikuz3o9Z2exDBW4C8YwXhklNI7hDUuAErhPdOq/X2z5mEFv76fj+QemAyZFPIK5HLfa9I86XNeNh9ZtsRYh2zH7rUFktkazzImnfyscZDXticzBZXVgrenKzJd6TSn+UlyQM71IaMbZHQOyVnTiMSH2CWxwRLam/U1igHcHdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSGnF8yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSGnF8yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66D1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743238193;
	bh=TTio524aNgJRT2bb3gyl2sNZDfTGsg7PDBEqd/BX2uw=;
	h=To:Subject:From:Date:From;
	b=CSGnF8ylaOUoZnW+E8NL6PY7abMbI+G+FM2VisWjvQdTbTSDsouvhw1onJCeac8TH
	 8HxY6IV5EGHtq/ga2mJtukPEewbpNWd83d8il33bb/lu9iUCtnd/UT8cOF0XsHoDAc
	 VVFbFp+k1IYysrAG9AFlWi6Fg7LLk+3Y69JsFpGHu+Bz7vh0kNCcFeRzEcWlimc8aj
	 enWI3ehSibNCLohupbEI7uPFPTstw10UNBxkpXX/ZAchLaQO01WT63bZ94qy7UjvNh
	 o5nwytIWnEn++H5ZubVPFcv+wExJyOHRxDGzr/ICJxPfTfnxWLQovs6dfye0UEhBbh
	 L8bpSyc8O0EYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F53EC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323819364.27301.6412739737864769826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c55ca644775257a7501533c054ad6afe1cb9e288820ebadf3e1969943e105a3
Date: Sat, 29 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743238193
