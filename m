Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1A11F584C
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761068395; cv=none; b=UJDkD0SleQFsHNQ9TPijWlpZH8Od/ernA++Kju/azkhLVjoqunnsCUNkAvUVPRqsFwdYH+Nz7yicTqpTNG8lnJ5GSPXd+8+DBkCHgpMLsZSOA//Z7I35Jd91y9QcZr5AWkadtu1CT2t9u2jF3IcaiE8As4r0sK/GwH+xxXCE008=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761068395; c=relaxed/simple;
	bh=AI4uE9bcOJIpsbcdgT8Qe3oi2ajVzEiKK2StgKpBhFU=;
	h=To:Subject:From:Message-Id:Date; b=l2F2n0OmvX1b3Nkdo3Ikuf8MN5ySUIHD1/jj9dirpQvbol4acDkA5eU09yxo9wOZSeM4TCmJSM45uEvNFSFcMhlNNrKdXPjhM+c46hODn73rTMxT9q1v/xw1PiBFs6U+k05YC02FvcCtOAeJtjp5RZUYHxDW0sUUQSr1hK+QmJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCBOhlvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCBOhlvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C788C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761068393;
	bh=AI4uE9bcOJIpsbcdgT8Qe3oi2ajVzEiKK2StgKpBhFU=;
	h=To:Subject:From:Date:From;
	b=QCBOhlvul+yKu1SiwwPS48drRlBcDI4UEX2krj7JOSOK2xHt1NgltQgH6LXnLHRsd
	 TfOjFe8I4KuCB5lfwtlwjOkXJDda/uDF1fU5nU91CPRCMrSCAYnwGdYAtuJCfwtNng
	 REB4Gt0Mu+KVq0iwsHk/bUfDH4sSOPGlAza57pmuSNOQHVud9TyvxoeJCtOrjaKUD+
	 WsXug/z+Qr/XG9DSomiKrvGexQilMSXIb6k5Vc4KXwByvckw2HHqc0qMhh8a5JObe3
	 UWBxVeFG6XZHyudZZBMdBQVAknzCCJsPVoQnczdgUexXVoYhmHrq8HHU1RjmBVmV4U
	 0hSFtI1FKQy2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C0CCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106839357.8244.10158408873633303694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88da13fe1e648e77796092273f727f592084eb685751ca608f4d22380044f99
Date: Tue, 21 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761068393
