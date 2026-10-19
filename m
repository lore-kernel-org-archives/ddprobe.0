Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EEA4FC35B
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792419034; cv=none; b=Ic6uikUClhje+1IaHDN4pockkyCCd/lQfcaq8GokfNQ8vf1J4xr+3kGkTqbr5q53jz2um9oVWiArj8E1DhYXq5f/g0Rezqjzuxv2eMV9TYzxzfiimhUVw6eexEjJUsQic8TPpc2TWPHaPd21BWID7+YgTh8pxaV+Nr8X6m8jvJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792419034; c=relaxed/simple;
	bh=/6YJQrhZpdoU32XJ9C3Buh9E+DHxW/Xp2HrNWeXDUzs=;
	h=To:Subject:From:Message-Id:Date; b=Zc8ArzfqmRKfcX9cCRB4mYViqfKpA0Fg0/GNlZovG4luijBex88yQs9zHjRQCnUcf9ujqxExDOS771vozjSYEoZvKYLcSIfccwje3aRsoho/Yx/b35d1eqGJyu3905qDamcURTrpXxpye0OiwU8OaDSvMKtjZ35uAUABODWcVt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4SoBvgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4SoBvgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3530C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792419033;
	bh=/6YJQrhZpdoU32XJ9C3Buh9E+DHxW/Xp2HrNWeXDUzs=;
	h=To:Subject:From:Date:From;
	b=Z4SoBvgbQMEelcdpiKpTpMiomeqitAEOh46E/5QgLKeO6/F6jDYBqyMKYiOwdwfse
	 nYaCWzx6dGX4pbuqbakwBm4kO0MpzLtr+wTFXIhZZpHyic794/22Pv6HmNR19zRenK
	 W5doPpQVyYjHDVn5F2HFe7MX8Z+81lz6cT3x658aLK/5mo0PmFghKTLiSBMQzPJGvV
	 0DQd9+ZD1hoCHlpAfzSxnA6SjayOQ4iJzBbQ8FfoHGXDEpR4/1zdKrGOHjmwCq60AS
	 iJq0MRj5Wsr/GG5VQXALbX33GaaNuVSp7gTZU8vTDvziPEStVQf6l0ddQd6fxBgh/6
	 V3P7Dm54/2vkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B858BCCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241903373.26089.24754731261165911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b98c3219a029aa5c6a4a948bcecba89501fab8c672e80b1aa17a2bcd99707ba
Date: Mon, 19 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792419033
