Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450A323DEAD
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733824554; cv=none; b=a6GsZJGzQCDTgnLcQa0WKkarHAvsOq9rK5/fo7mizxlB8tgG796W90dMkYxJLczY6WHZmPrz1mly/tITkvMseyUznKPJHsYEccvixQg41cGEYcZF9RFZQfAOieYsqyq0UK5sSMph2zotzUBxoCDu/K2USme1MNC/7pM+sYjG+BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733824554; c=relaxed/simple;
	bh=T00uqw+jPfUFlAEl4KqkBmIHtbEuWfB8T5Wtr8AB17w=;
	h=To:Subject:From:Message-Id:Date; b=nT43xoRkFVJBFWxjI9q+7r6/HwsYe2TOmvPrTtrzN8ejNi6pzarph0t870VdPxeci3H0aBt+39XxHgjGCBgOnKDgIb6km9CIpnAsLh81j0KrKNU3qUXR78OrCkE6fIScdXEJFscA5GoPi4MLmjsoV4NpIdYPSbu0aN9zwkyisrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Adm8Bkos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Adm8Bkos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9F5C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733824553;
	bh=T00uqw+jPfUFlAEl4KqkBmIHtbEuWfB8T5Wtr8AB17w=;
	h=To:Subject:From:Date:From;
	b=Adm8Bkosr/Jz2R7OBR82EEeRO65UXd/eaJ7xRtPC0UBGmhS0bS3DdO+FKmw6wdaxN
	 eFLqRiX1tmzk1mCFwTpPbcPSEjIuulweqxCNRbbeCzCUIoDXyN6OXvEwCdFofZPKND
	 G7Gk291ibei1CLMiwcbpA/DZ0tg0KrlmC7diC3NhX2n/1RNcUkur2rXpqv+VqzAdZn
	 ABzWomH+PN7K96BD4NueUAmKaui+8JHcOlQbQ0mLzrQL7Bh++yL1RETnVZjHFLirQq
	 AH3RepCbo2etb4NObhETM24fEx37hDM6VLD3k72moyXCNv4dArqZIBLDzP+7raFwc1
	 JugO2Q6xp063A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A942BE77181
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382455364.12254.3706273836452350271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdec922d415c0518173e211ed2ef1a83c4cfbcb3eeb7116b68acf3d963199a30
Date: Tue, 10 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733824553
