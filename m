Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F79E72614
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753620594; cv=none; b=oAmPnH05XgL4r7iV8b36FQEPirULOOMp4s5wLr7/rrzhesqkpGAqvW+EuKEIRPH53gW0hOAqc/gM8oLPglmJs/vzWZwSJy01Wogvy5Ax/1hbgTyk+jjyXNLIUVMPk8uQWWqU9G/6I6a12ENG+j0CZ1L5XSG8+AzZx7mW2YEP/tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753620594; c=relaxed/simple;
	bh=satI2+ZkdjBy5tpnXj9jGVLygnA+jtHW72eAM7fpEEg=;
	h=To:Subject:From:Message-Id:Date; b=SNs1g/l4B6oIZq2PcQqyThubwBNZKJA7sTqCqWDEFLsD/gIxrohdtIqUNG3NAUYKkFks88CDFbegpHOGX0Fn+jezcC1GuQEA+LjX9l0TPobuEZRg9mMbXaAjEBIf2yyY7gurvZrtwUHOEhJHj+MjZ32wi7ZEv14PpCz6C2BtR6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvfgsNTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvfgsNTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753620593;
	bh=satI2+ZkdjBy5tpnXj9jGVLygnA+jtHW72eAM7fpEEg=;
	h=To:Subject:From:Date:From;
	b=WvfgsNTiRvgNmA/ZHlT/V0PVKS20nJQW2b4AIXCt56VW/H6AtROZ7Eba/A/aumqTd
	 DdE4P5Iz2ZXjt6lPapKil8gXpE6deSoPKZshGcBTTAHgCiQP7OCs4LiAIxOfVqsD8h
	 94acvjTeW4lE3QkU9A66I4imBSifUM6/2c8os5GLfUmpLgXSGJrP+kGam1eFpDFIXy
	 rJu6Lzruem+boWsx8zPF0JjpweGe61t7u7gxmbCVItGJZ+0FZf+Aj8uodMabl1mKaH
	 FpOAdZARraFqzsBgEcazDkhBHJip/acF+d0uoMuHNuNiq9rF6f53xlLD74tZst1up8
	 +01MEa08mjBSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92239C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362059357.11271.6516380551012747120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c11d1a33da5e000287bbd5273c252a6ebb9022c0e93ab78988a0f0c35db52a
Date: Sun, 27 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753620593
