Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10F1130E57
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709732297; cv=none; b=VSSOGva5PRnFRTyglBE/4atv6obbNe5Q1aGxSCzNUEm4lsVs2T0mJCSTQzwAlupOcvLgp1Dkelevgda6qJqsv38Nnp8s3BkTsajRV8O1LCSeqXOH3fs9HUyxYAP++fzw9yHzb49WLQhFSGv9MVwiT222nGTPCJx8zkqZy/dQJac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709732297; c=relaxed/simple;
	bh=QJGR8yquhN0HE5StuErRJB8onjTdGF6GLiInH/t+VeU=;
	h=To:Subject:From:Message-Id:Date; b=U7Am3fsRsWI2LlbcD8KjQ4RtAFMkmxMJVbiw6cqefQP66a2UQqtER2noe9pNXP+pTakBr0EZKRCXaGW3euXB3PXmn/jdL5zZyE6w4dKbpoDA+tr1Tcg/1ll0ts3X3Hs9MiIQ0A+KM2l7T0f7FmxXK4qduC4/wkC3kOmtG35aCkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuHHxfM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuHHxfM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80BE9C433F1
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709732296;
	bh=QJGR8yquhN0HE5StuErRJB8onjTdGF6GLiInH/t+VeU=;
	h=To:Subject:From:Date:From;
	b=JuHHxfM4Hiu2qdXCo8t02oX405+Sa/6NnVykUmVV86W6bFgDhKv5mu9i+BMLGuD35
	 0CU7aXT5g+AKbNfSarJ78npLQdcU+oXnOzwfUO38QoH+jY7Gqi+CTZnX+g5tpCRiqE
	 Q1QHJl4JuLa4SlH/rMwwpy/ZTTOUelq8zSfu9iqeGw9Gpc+SAFK9uGatxejI0JCYti
	 g8V/gIQooO/DZQl9dSSj4nSEeQuEsimE29xrrYr0MxCdJgT+5bzf61S6+s4HTkuKX5
	 HyDUnXpajhAOmpLsr7JNViFfQq4db/pAzTrcCQhLUHXwhKv+SaeHkc6ZWOEaLmUBrP
	 AnsBqjGL9UaJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621B0C54E41
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170973229639.7587.13058472931081718849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c5d6eda88a7dd5d9fd4c700f3034849432a1cfc48475dd1ee7b8416c57f991
Date: Wed, 06 Mar 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709732296
