Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C69055898
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724619354; cv=none; b=WezlV73zq+LG68MKP/+vqVGMLDH1Z75VwJZ+MzBO5vh9xLGEHgtRbvWqLXolQDdMivic0hcEuzeRrYc2emqp/n2lTX7/QYMH6eIzMHkjNOF1UfLARinfb5nnFGsHhbWNjmYPQnLKpta9Ik2goOeNqQARIu5NL6VPofvzTNV/j8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724619354; c=relaxed/simple;
	bh=Q4u/vNIYZXrEKX21LQjL/WvsnLHP+4VTzebc4Ve0XCI=;
	h=To:Subject:From:Message-Id:Date; b=mCoP1RcYwTrWMgY3rsOoDeCjIiAll+igCvYuhan7fHFs5I4fzjh6Q5vxEOFexjiSH8wBXUVVqkixXPgg4sGmUcUWyXtCmV4CozCWpJqMKAAwhswek/ZxDlGVKGRz+lawhMxkH9IrjPx5i57IaWI52XuZjmUMoy90IjBhj+6wAhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRNxcBg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRNxcBg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E93C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724619353;
	bh=Q4u/vNIYZXrEKX21LQjL/WvsnLHP+4VTzebc4Ve0XCI=;
	h=To:Subject:From:Date:From;
	b=eRNxcBg5kDIVZ4A0OXaz2VMZIeNQsOa2WEY4cmJCSyMow0wkf6DqWy7BGqm12LuER
	 TxyVD5jARxNrADEeI9ZAcwKVKSGUevbkzzEHqlT1zgmvSP6ucjoCTBic+y69m0pDr1
	 io89uv//wFVi15MundMTsIchYXivwzCLo5FA2v/iRro0UsmCWBx9qfKJ0usDiSGxq2
	 fuHDsFu+oLx9pkVpSrd4ZFYBe6jDZIadS2CUdwxviKf8lFCVTtr3K9iaT8HTZ65Xhs
	 DpndT4tHGBsRQK3VVwgtC8YjaTw15Zd9k9+g7CFkImyVS+NX0nPgJ05Q65g7dJ1PEF
	 7QN6jk/i7FjBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B860C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172461935361.15148.12983946044092784988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85020827756dd5663468d0405542ef5401f9bbd88dd4704be52c9d192ec5481d
Date: Sun, 25 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724619353
