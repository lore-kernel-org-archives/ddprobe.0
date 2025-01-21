Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32311F55E5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737491154; cv=none; b=TN3LIErIC9w72XqGW10QFZH4EoJq51ihdgp3nMz306ksfYygEnWFj8dqfc7vuDhMW9UNgaUZNq7OW9SoQloDlumJN3PPvF1l3RoydNMjTzO9iARW/aa9q0+V+l81o4fY5TMpkBtTV+omwCu4S5YjDwdSIg81mk8eWQXydeooevQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737491154; c=relaxed/simple;
	bh=mkilJQQuQyJd7YKZjoKPP+aNz7i1EGmbs6Ey/i/PCYs=;
	h=To:Subject:From:Message-Id:Date; b=gk+wfBnUHmXzfghri84+y6qz6vwRj5kMJq4ZT5LBPZ5LpxL0kF6GY7eO2InbV2gx+alqGPnzDbQwTvVbAvftG0kt4KkLKKAHzMVP2PiK1W5oL3LlEXYQ8X9qwdRzEJKKQymaqM8sHoag1701crS4DSyhwiKnc/OEIIwXMRm+XaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKzrmIzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKzrmIzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8253C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737491153;
	bh=mkilJQQuQyJd7YKZjoKPP+aNz7i1EGmbs6Ey/i/PCYs=;
	h=To:Subject:From:Date:From;
	b=oKzrmIzLq8UYRaFIQtiy84FfaisaC3KYazR6QEh6tg2jnkwfWgnvfNNNZzKKVhWAx
	 zGqf6Ydvuej6W0bZH/T21BRA5CPAasGO96cN/m7InHQxPZdDmlimlq5PIR45HoZQtj
	 5isUeIXb/Pe6H6EtBT74bhYx4cgHQvnTFOudDvqH6+4EnCf0p8EHd0dS6o3KHOJZsv
	 jBp0dd6tToJMrc/E6RyuLUjcHDGwq83DRwahSlXL5RdHKD4PTA7VGvw7PWTfbUpTcQ
	 vsA9zd0tjjYeO1beVDGohZQpeMX3SFEwhGF90mYxliFYhZebOr/g9vcTr5sCT7HdVw
	 pvVXswZis7WJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD71AC0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749115369.24638.9274990627695413694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39a21938d7a0dc83332204a2c19b41d8b0460cd88f48a113f5de245e570639e
Date: Tue, 21 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737491153
