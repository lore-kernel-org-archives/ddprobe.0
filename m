Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2A0382
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735359954; cv=none; b=R5hMhpZ9Fl1ZhmM5CWE7zv+dLh/Q9O8hswcrQ3VBLeJ3BPpmebJlUejpWFxcYjr8mZmYnHZp+3tp7vZW5jGL1NsjU+jNz+W+kbNXRvVYWV+dcrXS3Jh7Zt+ufu3frzeKMCzoTO6PjDuLDVwXulZPgGfOy+fN8upu6ZDFmCApVTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735359954; c=relaxed/simple;
	bh=aBQ86+gDqQlP6VDfKvcFhTVRtB4eA0EuK3ZzUr83EmI=;
	h=To:Subject:From:Message-Id:Date; b=JfT2rdgviRU2lM2X+vvFu1MMXTvSmtlwKbvnQui9cpNJxln8ToOpheqeJjiKSRhBTxThrAmQ/hlHVo6UZijoDXzoJuy3jw+43GsnZK4ENGgpR+f+Rc2+ceay7BHkFd61G7JHeTausR5dYSpXBCMl5PTa4IxprIKKAJP2bbGz4ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUOX72EX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUOX72EX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5737C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735359953;
	bh=aBQ86+gDqQlP6VDfKvcFhTVRtB4eA0EuK3ZzUr83EmI=;
	h=To:Subject:From:Date:From;
	b=UUOX72EXFWBH8Ub0oHJckQhVa2Swf6PiYlfCpo4WstIai3oKzjX24qe2AzbfPpuTh
	 7UEZt4bAb1U5tA1mOwG2VRZl/HB8OYAT40dkKKyLaClAVS3ExcVCh5vc6BOumMSlLX
	 C4QGCpuHJE+3Ztq5NugOSfYIWAwcm8y4Wc4hBprRexqGKkSgc9it7ZxoW2XUg9fua6
	 Q9mWpdc1g4NDdjCN/zT6wwLz+/f1JIkFSydpenAVow8Dc0K+jQTYJW9Lcm6Wrd36u2
	 Sv0pDsjhYgKnPzGBngBp3v0s9eWVI8Cge0l+/MmX8uY8lYOURn0QcJcJPiLWR5hWNc
	 oGHfykBHeLxkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F5E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173535995364.7103.5593946333242151005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55854b00a5ff758750dd1352b3e77ac440f8bff048e1bc0067e1cb3b4d39897
Date: Sat, 28 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735359953
