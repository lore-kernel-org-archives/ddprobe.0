Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D301EC018
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759266594; cv=none; b=fKG88B9nBn1SVRxYAdaMkm24604ZNLVe11lMtrnUrfPE6CDg/8v42qJS6n5FrxhZr2h1fWWnmcbLSg/ymdGw3aDuALyquyAb5VMcdUfWC2tj5uvI6OdDloL2W7BUJ8XFrLUpAP4LdyHI8Q3/dC+HzWOiGbPf+AcP+SKeTCYqvBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759266594; c=relaxed/simple;
	bh=1dfJodeoRwCEWD7Y5ov1bR9TD3YtySCc5bbuQSMvsCk=;
	h=To:Subject:From:Message-Id:Date; b=CiUhnvftEw0qWxGI+Jwzfqy0PnP7zH9cBnh4BcPb6+EantR5L+j7FXXsZv3tVuWPnEmoEHnvQCGAHQdaEAsj+TXtJJeXKjf4Q3DvIjXnlGhM6fcw2yP7qbb7Ud9kd8VEGKLJYZz54eh6zb4r7b+WWhhKN1Fx6KW4CEPsW5oB1kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sk3rE0oD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk3rE0oD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A638CC113CF
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759266593;
	bh=1dfJodeoRwCEWD7Y5ov1bR9TD3YtySCc5bbuQSMvsCk=;
	h=To:Subject:From:Date:From;
	b=Sk3rE0oD1Zjd+BuWeCDD87ZAzf5+xs7xehxcwJQ4Qjfaz1Dqh5OXCdlQqKXw69NGw
	 RBNnrkiq7E/05F5YyglkLNCqz4jLTUDi4ewMjy7XlejRnbS9q2K99OEXJJQ0B8tyEy
	 NNhZvi6Uyms6mVnGZPvF1+hlUhhrOMwhuaTBN43nTXdCHoNGeboM7X+krwhlexJ/U1
	 aLENZPFcrngOQciigulUCU6iTzf5+ZNr2+oIv5r2s2OZA/B2v4oy2QjBYWgJ7D+w2E
	 bbHeAX3/jm26RVVDmjF7RXtWaNPvQbVPYQDoPABGzC9JvTRdq9BbZaNLK8PHRNXyx3
	 O56WgwZoHweEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE8CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926659358.29408.15007437935480095030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d11ab0a1239527fc153b36b9a11eb5ece796d36f4a2a2aab62c396fe951ec0c
Date: Tue, 30 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759266593
