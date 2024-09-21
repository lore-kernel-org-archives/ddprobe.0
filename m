Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D2B63B9
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726951554; cv=none; b=AqbjjLKc2B4eITRBrvbNMp/7Z82AR9groDXNR1Wiwbp/y6clJGJuye6vF6iYgFznMQhxb8RGEjFKVvb9/pdJz+VOCd0RKF4HLH21M4Mzm1yz0tdXu3qU24S3wi7YKU9o5znaixMPuH5fAkMWgJqjsGalHj3mNKRRHfEF1WbQ6fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726951554; c=relaxed/simple;
	bh=G9jvhCJCj51jhNWJNhDk67GApimQlm/ZTx5RhPUjufc=;
	h=To:Subject:From:Message-Id:Date; b=Crv1nkinR8E05XamRgpd0ehRKkbvn/hGy6zbpzwKjMgvm9dHzJWcXZ9PV7OAsANBBVAs0DOEVtA2OWkKFzrbesoXc14TUgLMDBFno/Ney5kQ7Dt+hP8qRF/ddvrI/C9kaIFgTGaMl/C+RRptHjIimrkXnfjFyMMjmRJ7oAmzmL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vA9AmKOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vA9AmKOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A0C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726951553;
	bh=G9jvhCJCj51jhNWJNhDk67GApimQlm/ZTx5RhPUjufc=;
	h=To:Subject:From:Date:From;
	b=vA9AmKOFwfPZq0iOR/lYe/12qCUgzXkz7Q26LLjXq3sWrHySShfHMcaeX1J79cclV
	 q+Qn0GkyamhsYMDDnraCh7dbhkW3YGSdRo+yQqkORH6tleVV4MbRQmEJd8UFE+AYlM
	 3qe6YZNUyHfxmENm6uUXnGPAC1O2mE0/nzcG0gnMVsAqDb+yzQCmX4+T+oIEAz2VKk
	 2mtlAhFuFwKPZlWnh7LpmAcahGjGfpY9R0WGb1js7HEw6yOq7c95AA9XSAZEsrTRON
	 mlRZjq3LycUVSu/oJESiT+4Sa49rQH6ncUoKAbKNkniVPycM7stdZ8AdhCYJf2W1LL
	 gOb2TllEVFS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF0CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172695155357.14728.10209845531364701848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65555011cd9c24c9dfb55343e2183a1b4d9958154340b631b5c9186a08001437
Date: Sat, 21 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726951553
