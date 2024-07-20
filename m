Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF8B3D6D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721471154; cv=none; b=lDmTpDgows+xTASfh4PXC5rEJQleV96QBjJcC6T6FtDIlVKE812c1gR8Qi/oq/+oNjD+teRZCPLyqZt1bprL02GOb2ijizYiekaRzJmhS2S1iBLQWdSF8EpcWfN/ZCLHD5dozsR0qgkhT0QvxMBJaLAxON/9RH0C6iX8pbK3CDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721471154; c=relaxed/simple;
	bh=b2RJxukg+yDsKdYnJI+eCsMNExiSKhexNZ4Xn02H2H4=;
	h=To:Subject:From:Message-Id:Date; b=CkbCaURzMnWEm0HAiEjaLGP9Vk76Zw/WpdSLEOHMBB0QUE9bF0z2pj3lJNUHc+51eH+VvCHnZmPlgoOxrna3I0AZPeC7rVBZ6qvr28gzf2UXmme/+wCXgm3MtQ0GlJzmvJ3gH1yyW8Z5bA6VCJITkvYRPMfT+qYXqiBFRymSic8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJflR3Dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJflR3Dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C026CC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721471153;
	bh=b2RJxukg+yDsKdYnJI+eCsMNExiSKhexNZ4Xn02H2H4=;
	h=To:Subject:From:Date:From;
	b=mJflR3Dj8/jXl278gqRfsMPoLPlN45X3aUlyRMl3lpg6HXFU8oP+HGFkhzaDeISGy
	 yPl9spyXRdp0KFVmir+zKrnC1aL/7NrhAwMnteB8RX/BhpUQDNcfyDtbolpwqQtFnV
	 FJoXIMQZLME9ENhZgE9xK8XW3npL94N9TIuyTeg25KBJmhsm/pBtXzeaaa5JJl4TD/
	 P0s2kygjR+8Rggtn4HZ4tjqyAUdVYWARSxT1/at3Z7x6RfyqHeFHRLaJglIl+JL0q5
	 q8rdiet7iYWO4+oXxuAvqW1sSueLqFBIsR0RzsIYVJKGxljXlPQNukJzkP9xxMjxDa
	 7OcMnsIkZrv/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8CC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147115365.16136.16606316704637087327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240de03a7cfd8f7b652c67ab7331016e5775a00a900444eda8c5f9bb65d9085f
Date: Sat, 20 Jul 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721471153
