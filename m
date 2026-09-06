Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5584C2AEE1
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788738034; cv=none; b=i8DqSq9mGsWZW9Cru58H2IHKJlp7UPLbvY67HIKZM/UiwH7VXLYy/hAZbuRrPP0iZcD6KK5RjObPikz3yF+EKthZaAHiTomLwuh0HTKygRvISEywYVh3BCFVbHn7K2cExqGrABo5Kxk3UjKxrwd/5PMq9haSIfnR3yWnycxaQrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788738034; c=relaxed/simple;
	bh=4E9P0tLS7OR/8lgjPra/D5KwfThR+0v2vXQWs067O3Y=;
	h=To:Subject:From:Message-Id:Date; b=sY9HHiPeBbTu446mk7Lt6G2oPgNv6LZNhXqlWphoohuXQlrp22PN/S6tYLSvysVhVia+VBZzWa3LQaoqpr1KTJXJlw7Hz3WP2n0g83KLRHR6SNKf+Dq5DMXh02rtq+p+2ubwX6/leEDPk2FeOTCkOfvjVxKHBM5FdC73QPkvoSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUsG7bqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUsG7bqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89F3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788738033;
	bh=4E9P0tLS7OR/8lgjPra/D5KwfThR+0v2vXQWs067O3Y=;
	h=To:Subject:From:Date:From;
	b=MUsG7bqO80VPxFSed3bKR6lgPnX7Zc7RkXq37ZPkzpyMYUWGMr6GgeAaympEwEi//
	 ToIq2L8+eZPL8qfFaS8RAPe1d31cvi0Fd66QDfXkC5gDrX3sVyXJhLtuGyg/H50+hS
	 Poh0m39PxZ6QIJXEwP6KUBqlAKZvZl3avfyAfAryBb0WqAjCJjhh7bm7YMAl5mcRZB
	 VtUBBCe+yZeEBXti1hgWsLhciLbvY8C3C3cbPTHnUvcHAVEu92DksbYvvX55rgox/T
	 acvcCV/fjrdvfwCJB7Cpj3zF1dk5g9cHn3qZ5qaTOVHA8QZ7kwt4SoeF2STe/pt4BV
	 6ITFBwcmBE4bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08A6C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873803370.15365.17218243510950498246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef16b125ee78d21f39998135a750e3125e48a6c36fa535e7632279addb5d30c
Date: Sun, 06 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788738033
