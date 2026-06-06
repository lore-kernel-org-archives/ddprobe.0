Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316F22F9D85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780724674; cv=none; b=pUJPb3NRDC3ISHJrcob3/rd4oPQ8jrstnfQoYNf72ntU0udAOtv+VWNpUhKPt+rbWL77uISdfToHhXP8vEwzlZ/txygNuYI8sSliXzCrwlHqCpXZBgyMPWQiqIQWqtbgNVtZRL5tg8bNMHzFYGyhFBaGalzKB7deoykAnS22lgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780724674; c=relaxed/simple;
	bh=X2z414iZuVkdL6niqwj4nzCgZ7gxo2DREjnurHnrKnE=;
	h=To:Subject:From:Message-Id:Date; b=m0nKeXH3j3pk6J+UKHEmiG3Sp5OCPPyMdIQT4gr3pW2+XEZaRhPyYkR9fuam0Ou6SVsE25/en8Ch5ABxE27Xd7Sbp7e2/MYd1zVEOiClO/bRp1wYu/3QXmFi86TESGLuXuW64swZkonZD1P/6FX/qIAo5bz7r4OoFkdx9qWLG+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oX0/C23B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oX0/C23B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64F1C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780724673;
	bh=X2z414iZuVkdL6niqwj4nzCgZ7gxo2DREjnurHnrKnE=;
	h=To:Subject:From:Date:From;
	b=oX0/C23BG1OEVwU++pEWhJH7mM6EuooJQ7Kd++1XgYaWEcUH813CcoAohtRqk0VNL
	 2JFuCEi8NwMbHgLBQ62cUrYSJsb/Mo3UU6XBRZw5VInmSpwxhl0rQdS/NjVzzUXke0
	 blhdbkhoXe0xh0jFb1e+oaLXiKdzsAcWiiuJEzrBoWm3U3doLIzyjzHOH28Dce/x0P
	 zfMSPHjXFj26ITG36HEQCRKaRSMZBQUlLSueS2PxYx8FEExG4FHIJwzicKM/X8j7aT
	 W74bpn2gRoAxFA5j2hL0uHRRE7LE3s70QKF1bZEW6+a5ug2k0jSqbtnmoFwbWISa1o
	 v0EyBwfxj661g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AFECD8C90
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072467369.3507.13964189011544975888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab34555e983095436b61ebd9c70bbd5ebd425fa652e9d230b519bba9c3fb88e
Date: Sat, 06 Jun 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780724673
