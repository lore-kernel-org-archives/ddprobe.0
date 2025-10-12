Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F55117BA6
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760236194; cv=none; b=D0WRKF6SpEWbRhR92QyM0bKeGPnrCQvHIK7TTlbIXBRg8x4NnhNo2P+IPyIoVrdF4Uf3p/mOPHGqmPB3PCGPkmUtcmKEdcc2awexNhIqgH0Xqd/wY0fCzVDav10ZiUuerDAIC0oTRYMBVBo/2dgefhTE5jAEeJgMojY7g1KJlks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760236194; c=relaxed/simple;
	bh=5AQWgziuGbFlbwVKALcD6TFo1wb2ldLjjSKdku5hsRg=;
	h=To:Subject:From:Message-Id:Date; b=PJBJjC6/71dWP4vKOEwtbmYdK9MM8hTqmoEvACqP41j/Mx3PdHXTWNwn+1et4ZuFjPkFRaXHU5Q7z4JIZt7DYe3om87iCwOV7QM9z5mChtZCpSSKs16pQTZW0xVZdc8cBnv+cQv17oYg8u/FiZNsC8SWDP4S/SBBJJ4qqNkmGss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCmFug3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCmFug3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8995C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760236193;
	bh=5AQWgziuGbFlbwVKALcD6TFo1wb2ldLjjSKdku5hsRg=;
	h=To:Subject:From:Date:From;
	b=aCmFug3sz5Ld6GKDCcTzssAy3rL67Bs84Cmr9uSFWmyq35nxqzTXFYSLXUF09Z0wX
	 K0xCrG3GknMxBICaDobsZ/Y7d5URcXzHbjXcE/l0xkhQKOBij2Sb2KOrRiw5TqGCV1
	 xj4NqMOq0KtVVPYuQ4E0g0Qbx7BxvM3F/YbBvCMzDilCgLFov4cjJQiWIgDq7T9Z2+
	 GNwn/b6b/Rj+ayqc1opqNU8A4Dcu1a7sB4ZMrh7Z/Lyt4OQNfIVDa7N3tbDxQQFJGI
	 pH5yUJiZ1QLxBIl0iIzByb7lXolIQLKHA8NG0XDtrrv2NDUpx+4M4pjXSp9o5o6ndX
	 d/lR1yxzPbjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C5CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023619358.22397.5855798976215100295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db595c32fd4c52cfee54383fcb5747552ae29fe16952b27aa9361415862e498
Date: Sun, 12 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760236193
