Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316751E47DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 02:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741661934; cv=none; b=Z0vAix0RKTALTOP3bew0oBbTkl0jFJi4762YaV33OroxSNANGNid6VLzP92UlcqWfbU0GQvjp+ArkPJIYQQ8eb0dLi5TF2H/+2V3jF0nop6noP/b3qvCfYI/ek59+HzJMLlEmKWErRahuQX4LLfXyEunvb2RVv51RLrCqWo7UvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741661934; c=relaxed/simple;
	bh=GsBUlyrXyyPsg6KKSX9kRLABuQbDdl0dH7tlqXtfhVo=;
	h=To:Subject:From:Message-Id:Date; b=AWLwATUZgXm5cY4QMQbFTv+L8+dpMycwUJKtKUCMZvorRkQeqC82INN4vir+Nmm3Wyte+JKiUco1/nXwGIn485OpSoLHFUCMcq6aRLDgU/NB93RAP8gMyTfE9zeI0gVNdlMB/ElQbQHh3AfrKAbtVKe9hNTK336MF+2uIVGy7EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBdkOi8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBdkOi8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD684C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741661933;
	bh=GsBUlyrXyyPsg6KKSX9kRLABuQbDdl0dH7tlqXtfhVo=;
	h=To:Subject:From:Date:From;
	b=gBdkOi8F4OLB9lZot75eHSDECexlxISPWFIW5i03k1z4TkaVZFv3wfzmzUeUHmH8p
	 F4vde5hych1/n4uWoJWXmpb85aFmDaxRy/nORHt2LsLO69gQ+UfaEC3g2rnIXNyDU9
	 oDH+Ma7qwBzZMVruFj/c4FrvrS6jfVyPhit3iZiQ66dVZMZMakEiqXoJ03dr9CdC9Y
	 cDYQY503MsdkB0EGPrd2HlEW/YY21jtoaK0wfpn1CLoYVLhNFTYJDcF2tIPt4+xJE+
	 gvBbm9sukzkx6Oa8FmZ3P4DkutM1omJCpADpkW4PpDdiuKFLKe+OOYMET967SIz27z
	 u4pJKKsTxuVww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975D6C282DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174166193359.2796.15241213351602568299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be06761bd129ad661efee8487f2c6b669a6c70123c6571e9e90e8def17f8a9e5
Date: Tue, 11 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741661933
