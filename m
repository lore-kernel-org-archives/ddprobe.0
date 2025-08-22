Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372B422DF85
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755847794; cv=none; b=IhVMuhJ9inu2vKYkTb4K1mcR+GtUDsMkhxCrAnHRoJDn4OPcGJywbjTI7xqv/5Ir15SNk7BhmkAHmxbw4K3V4nozzeJtYBy76P82mQad2e5fuJwQHH6dWfT0wj1mZ541oPhduGfwAda1iMW9/7Z3qJrTu+Vy1mG9EtHY83NvNzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755847794; c=relaxed/simple;
	bh=9c0pez65VNr7eraTUArI/8L7UOA1TEx/Mj6gQZafoG4=;
	h=To:Subject:From:Message-Id:Date; b=XIZHuF/xy/JGZQ19WBy1HkfTFnGk6PhUbe727sIr35duaTs20wrSUOhJBP1LoHrN7BRPMoN6VoRfGYH5cfiA01ysGievBltHOhHLNJleZMiXey0oLzX7D2ZYHLubUJMcyIwi4QOa6oD6AN7gcOjcUQ+dAIdTv1gt6sxQi4Yd7jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWypUpid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWypUpid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755847793;
	bh=9c0pez65VNr7eraTUArI/8L7UOA1TEx/Mj6gQZafoG4=;
	h=To:Subject:From:Date:From;
	b=NWypUpidMihXcnyJbWCiH/y7VAfuS7W9LSRe5t8izFQK3AQWYZ6FzfkwL2BRjHgXj
	 Ctihwb2U5oeAarXUf0EwqOYxjc2+7rQSzAmmJ6kGdDCipWYiGiA50yu9fMkLUpIGvT
	 i4IGfObedPkSPjwGKP8YU0RKG7YQi5xpPb4ZdcfyYvp6hVapcBcpnh1qLQwZPY1wXm
	 +qF8A/k+7X88iPPZqR2Q4fFMN0iQLMTC2OA5+emHefqYxcUjykxB8o6XPrrC12SfR/
	 QDImyLFilWCnwJOG1pw3vdHYj9PbkUBkIqqR8Sia8HmR2xqYEB6DK4aUwY9qBhXgQ+
	 GicozTEco2RIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E2CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584779357.3179.11083085540570102180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3dabdc2c6eaf5637431c5712fcc91451cecfeb16fb822f4f3c4e69be4f1fb7a
Date: Fri, 22 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755847793
