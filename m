Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAE43C0635
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789035634; cv=none; b=J8Sga2YwhLdszWhNfBVzZcLFgjCfkIzfspMND06Td3AsSFp5OspkhYgsBIH3TkTuS+S7MwBIjBMZPVN+EqOxUOU/IujUJTrjrTjnA8mGVD4kT4GnMk+a1L2ugmuxakHJZlHC8roQzqeepoQ1eFUGa+CKTopA2tpIVlHyeBQP0qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789035634; c=relaxed/simple;
	bh=uFkfMwREwxQwPB6ghlXQreStsYED9+4cRgT6iWtIr3g=;
	h=To:Subject:From:Message-Id:Date; b=OWeOwSMJx0HpMGkUfiWOInQ/HFIy2lnym1O8/vhGqYINNF8m3dq1JAD3sSB/gLFyVt8qQPp1/NbuY0L2/trL220XtleznKOlj/Q3+rCKqMbTODXQb6UDK7z7Rv5d6p3tULbQEdAG739YOOQQTqVYYJkHyfMsXNfruJ3VI4AiwfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPNDjg8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPNDjg8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC674C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789035633;
	bh=uFkfMwREwxQwPB6ghlXQreStsYED9+4cRgT6iWtIr3g=;
	h=To:Subject:From:Date:From;
	b=fPNDjg8T67xXf8UbMZFzzsgl8QAVGlvMxuEgW4I1GSRERuDle1XVj5tx0SoT7kh0T
	 ZhQ396PRzpbUk8WTo4rTdTIvNp7yxpGgLVpALFaYAAOLpTHoDgVRjh9JL42kZpwwnM
	 0ciDC6qSv3T8XZCZhl16POAJiV3VQSaIzjdpD/2W1JFSUD+hGlKiKY9f/lwLZYA5Ed
	 ZWj25hKR/8Ut3CZKLhXNXuYYZmEr5UbAv63VAww8gmBSoMl3mX7ypZKRRY90JnTK8k
	 6pwuGyeEkcAI7Y78WvQrkcbci4rpU0hpQrgivsJfu3cqpx7U1zLbGbHOsmcVJat2SV
	 SixrAfEhaG44w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81A0C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903563374.14136.5060930247510413378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 877df9523bb464d796746698fb89312e80df09ddc79c9c3688bca373f5d23f34
Date: Thu, 10 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789035633
