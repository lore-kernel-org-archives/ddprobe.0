Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E5FDF59
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713588023; cv=none; b=bB9MaQRsWKAHnTZSC6vhuPg5DcrU5dDv+Ft+zi1Oh8OTFNdDXYtp9nw/PwLRvAaVFPivdHaiT1yuzIa3Jdq86Q4MGrmbfsz7t6sMPK3oIl0vrF+oAqYtmK+rZYzGUlDVvLghhDbEfV+bb7RzZ8U8JM9/+DiSNF0dC6KPyVJKxHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713588023; c=relaxed/simple;
	bh=ZKb9ZaDBUahz8fvW9HEJH6HNoXzwWGnB3jb5IO31XMQ=;
	h=To:Subject:From:Message-Id:Date; b=XaidHn4MqXTNZdA6pKDT1pBbKtlffgAcBpCvobbTO3WM1oXMIzOfi2oJ0Wmv6oQzofUlK6db8Gv6iYRBCwrAbce1GuomMl3Jh3tbPr25AvCYDIpD7Ea3vAx4kn3BOBN3k3R7ZYlDc09bts1zOWZZy+ygDgwzloW4WQokOigGlAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/XZVgcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/XZVgcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8DFC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713588023;
	bh=ZKb9ZaDBUahz8fvW9HEJH6HNoXzwWGnB3jb5IO31XMQ=;
	h=To:Subject:From:Date:From;
	b=T/XZVgcBJBN/zyDpfrreaGistKo/Ooh00Fbhs1ANOeuoi2jA8TtT/yguT/YwOmQcl
	 cGjFJXwUFMEiZlVxlgARWfw338wVYOx4Luh2TbbHI/wOqsMORHucrzNDh9BRmFAYaY
	 U6pg2E/uJ6ULB5xz19OZy2sjoJDc/czPERNEQmTS2CbbvhMiBMnhQfEdQE+bYW0ygc
	 z8E6nloEWDDJZ7VgJEhVxvz+bl+Gldp0TSf3qokUKI7UNsuV+zScSJ1CetwDmRWEcf
	 l1rh6+3p5qXMMF6L+J/yN8eT8oAQtMgkTvslkxSHgxnyEEcnxGlt8uZu51UkFystgn
	 dhcPbqhUlrr6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3730C001CC
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358802282.880.16666932780309109632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70bfccac1b478b2062f3a63e18c6fb53daf6ebfe4b1c4f5e0a2653c1c51cbc41
Date: Sat, 20 Apr 2024 04:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713588022
