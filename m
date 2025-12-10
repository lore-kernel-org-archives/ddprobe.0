Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E15A1494DB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765384374; cv=none; b=DkaUBWzfe3Kt+PdKAbdlT8rg6t9tgMc1Ngm+k34Z82wzOb9t+PzvQUf8hz8TzCuS1vAXz8it47Hd6O5/RHIQiJSb3JE5D0PM1SZGDvF5eljgXI5g2BW2l3IuEO813jwTsjkbVnur7u9ntzEZinG9RmfoVwECJJ7OekcwY7FbwJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765384374; c=relaxed/simple;
	bh=FeoexxOuXKkadGmJONFrCqyTq/5KRT2QRNHqH8rYBdg=;
	h=To:Subject:From:Message-Id:Date; b=myfh9yjLhy59sOMjirZkgyTRjovr81Dx5amVjO0lj0pv3rJXFlfiJ++AGlZtSaX6GkLbav1AXOaSvLwd5OoO9Ty3oRiGBDmf/16nltsCkK5kd6zRKQPb2ImbCuJa7XUlbmEmIWLTO5ECrposobB2oE+0S8DBO0p7/GcdQE4W+7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxRCgQsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxRCgQsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B8EC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765384373;
	bh=FeoexxOuXKkadGmJONFrCqyTq/5KRT2QRNHqH8rYBdg=;
	h=To:Subject:From:Date:From;
	b=TxRCgQsueMZo4eY03moAESSdpDt0DO6LHOjSp9iOrNyvBc47BnOfWEHkuxYdzc3b4
	 U1hfkdo9WdOk0NGEHMMrXs+FZyJZwrlMz8gulPknuzziGKAhgEHvE/NjLxELXBtxPY
	 2XM8L8raWKAFeCfJwu/Gzj+Tq9y3qXUU8FGnffp/f+q3ldttz1ed9rqF52oYUGKqZy
	 AxN4DvgDzZUIZOvb7LX7svfE+MybGE/8VDPNEZqnUCZoBYIbBD36eLHAflptWP4L/C
	 vYBYNNlmBPJKpAAWHSNC41SObBy0g8Sw5B+XRiN1JQC8yUvi7TL5yl8fx0PEdz2zqS
	 Duul8e8TNejWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1945D3C92C
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538437364.18157.962530345561913252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50198c0d7b1d341114541ba54a26f899f5948902b031d88243c538d004a81d3
Date: Wed, 10 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765384373
