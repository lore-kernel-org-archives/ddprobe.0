Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA0233A9F9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769118834; cv=none; b=ToZpEgPMJSKZ7pl/U4cD4qirjV9mxKR7kuHJLjdHszIMSgwbpaf208g3zt2zpq3jTNexKYsQeOiAPbHGRvCCFI7fSdPekWbr92giIdf3Vdc7XvezSbOSjAHlHc5IB/kXlOT5sfe/lpc56JW47Mebw+X32JLtlh0O4sZ49DoZ9fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769118834; c=relaxed/simple;
	bh=xcmQaLJEoe2wl2Z9a8J6Yzwdla+CgrP1M7GgztzLv0Q=;
	h=To:Subject:From:Message-Id:Date; b=Rf9NuR4FHf9+v/mpnLGXGevGlducT9RSBaALydN12EF1GaR+G9ndFC9szqbhRT3+U+C1vGPryujfd6OfHFl2/RnVQMb/rsC+oehQn8IPTjD89deK7n9V9vGOm3oUL3Z08jVq0g5kz6g2u23AJcSYZcCixxpiB4JVu6OS94sknc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihOMJN4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihOMJN4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DF1C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769118833;
	bh=xcmQaLJEoe2wl2Z9a8J6Yzwdla+CgrP1M7GgztzLv0Q=;
	h=To:Subject:From:Date:From;
	b=ihOMJN4smSYd2/k/urb3rFkn6UJZojRNtBpYiBYvueraGIjhINUEG0OiEcxapbva7
	 ORyEfJeRz/vNRklgdhrYFqgrgQKktwUn6XnppwRcAC3QRog01wnGEIfUx9RP/c4V3c
	 H10qmedSoSFKMJy/CsJivWpHgvTXUldFKr3+r5tVrtuZv8L7r/047nVtqVDbPldHGF
	 2ZcoP8JitqKju94Jv3ta3ial+mAcaghmD+D3WlnQ1SJZUtCmWi2Z64zBtwVoXw/1KC
	 /e/mr/49/uqE3fAgSzXeqcRB+KG5dGfYokNJQ3274ROjuE9fbXbIEK3BlT62GQpXLl
	 YVLJ/97/gV6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B9D6CFA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911883358.11070.12834286290430155461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4cce52b2750ca5cac57d35080a870bcf0565b4fceda00d9f438298d47b45f35
Date: Thu, 22 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769118833
