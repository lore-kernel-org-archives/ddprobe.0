Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D4C5C613
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777943854; cv=none; b=X35OgjR+lcJkQm+tcnPZnscoAi6xfLq9zHMsEI25gYKNYh+FaYyBCAeunxdp/BThOsOLV2T7btGK4Q0uR093qiqWZHlPkL0e/mokJbyYD4VZAYeu5InqOpU76MiVTM87mlwlRHtbo+pNwXUze9aifBQFWc8pzT5TQAdzIcmxP3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777943854; c=relaxed/simple;
	bh=qWrlTtpOqbYyX+9WRcp/nzsnHoBpVAaRwZaeqbexIjU=;
	h=To:Subject:From:Message-Id:Date; b=g1bJdtQKlP5KB9XJqPumw0V5Iac8Wf9d+ZTK3GnAMS2LYgwgmXO1CZMxCFdRP2Y1mzoiDcxy+P8b0tSBKsvBdB37t4+gDppYMVHnRwXXgWbXZW8PszRARtFpgyWfzHHhKu+L7ogClLP/y7Pfs+0b1Au4I/GuNuJCQpJGX3tX0HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxML2/vi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxML2/vi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B6AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777943853;
	bh=qWrlTtpOqbYyX+9WRcp/nzsnHoBpVAaRwZaeqbexIjU=;
	h=To:Subject:From:Date:From;
	b=rxML2/viUDTM+A0vJjszjZY1bJHUJEqwJUR/BTB9T/N0F6/8heYW8px5bq4U3f8W9
	 /ohqoN8vQR9Vo/1xwE/C9k0QNqucUAK8Z8Odt9Fcot0sxbuvrYwaPn47XliLWxQ9/P
	 V5+vnP8aA/QAdHaq+qj7L85mjUoG8oL+gre41GK0yJtMELIodP121dL0MiKt5YAymq
	 kvmpXeArT3yNlBel7j/7srCf1r8G/oxVvne2GeV+f82zye7bNAUTKCzRUmBMPAKjwW
	 bEh1cEie1NboaSS7n5gyD9w6FltkTFJw1r6gL/bfNX3nj5Ret6BflvRN4nJNUtrMfM
	 4I/J401VkwEyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF24FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794385368.5600.12753097587451282547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10dc39c66687e5020ee8e6a5f696e83c65ba57d096a9574072817f18fffee88b
Date: Tue, 05 May 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777943853
