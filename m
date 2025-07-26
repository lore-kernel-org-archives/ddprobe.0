Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C729D2063F0
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753565993; cv=none; b=bTLmlR9KrJU3zWKiBKq/yESSCmXBAJHDRBStrGKTwe5HH/RbNyeQG1PKMaWsoiQnM5grEnmGnfFf1WLEM30loN1NGAtxgQCLOMHyx6BibqaJeWaA0yab4kUGS9JixU9kfvltifqIuSpOpU0vtS3yeb757v1WSuhF+i6ZdhzdN9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753565993; c=relaxed/simple;
	bh=b3WlThELyJhyPAmDF2lylvkLTn07e6lt7G5Qcm+K/yY=;
	h=To:Subject:From:Message-Id:Date; b=Uzqrpu+BOQDu69x4PMQfwtRVPdWTc2L+DyNkL91unneheU4C1st/ZNtLL7+q/7LPS0QACmN3uw0NSWaMEKALj9FqYQ4N4Gz9el5J0TUxmqIFruFPlwCjI6IHqr5oP4Fy6ZFLITDJjJvgenMbcoh+D9vtdj1ne6QO5Non8iTb0js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wb1fbISr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wb1fbISr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2ABC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753565993;
	bh=b3WlThELyJhyPAmDF2lylvkLTn07e6lt7G5Qcm+K/yY=;
	h=To:Subject:From:Date:From;
	b=Wb1fbISrE0byS0tx74zX39xRG+NdV3E50LffRCPCIAJ1EI0+gsPQwOhLKwq+0SSuX
	 BXPU9GJ/NR+wKIpErNg20/cMtrtSFzxupaToFkw8NOG42VlB0pH6M56NoooQCsCiww
	 rGpnSiZxKNa5OxiSj4mbMesIZGOkNETGJdGqbTmlWnir82Qdrfn9PR0oV6jObGgK93
	 9XONkK/wUkx3aYRZoSJkTKDpJTEdT+0P/zw9YsLvqABotkyVkXHC8RrLEqB44SII0W
	 fnYBxWXfzcp0me+NGay5N/ijvQLDhfw5Njy8nHj3fUeGvc/4X2AdJHDPp4KjDa6Sur
	 ds5E7wey2oAHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F937C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356599357.8748.3790890539923620854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8958170103970edc638e4740f5d2f611d1738a32d542dd13d06876a4ea963463
Date: Sat, 26 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753565993
