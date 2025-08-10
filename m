Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7B4A31
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754785194; cv=none; b=n5Y2T0xdJQ+qHjgWWEv+XQYo6zy9B/0C9yLUK/HLwltp4+ipED4UA0K9t+/bALndZH1dIRB11kyJTPxZ5rcnnvElbXKYOHMFHelndp371ED4rZugT3c1XOjz7CgXlidy29zsPlz+RaAWo0FwYP3RZTNUSIw7mTOIE+g7fNv9DKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754785194; c=relaxed/simple;
	bh=4oaPFJy7KzrZ5Hl8/XY//KMPCS08M3eQU85TyQ/P/fc=;
	h=To:Subject:From:Message-Id:Date; b=CRz/NufzB9YpUt3ZSxc4YYPRidpsQ1DeSzSvz6Z2bwWuCaNgwtOuHap0XGJzUqQ3bKnY1PmUfrDa63rgYyh3s/UuXjLfcc0cc4by4/4XrwApKy4YlnzoCiyICbjffgpLO4bQbRcewMkmolYZeZJSdKe8EVjBcRnvpsuYXMTuLNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLWKjHqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLWKjHqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D05DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754785193;
	bh=4oaPFJy7KzrZ5Hl8/XY//KMPCS08M3eQU85TyQ/P/fc=;
	h=To:Subject:From:Date:From;
	b=rLWKjHqrfCF2V/8WzvVdu5IGccO9Vo34Tf37AM9ZDzlvJLb1X1kMcbOvEvDdZDVNT
	 piH28fH0FmIDjHJDoR+QbeuEmItZfrr1h5Eek1bxOkJ3lkulxibWKcMAiARrse9XNv
	 6Q8RI9oLorXugIoZrR4y6timf0WMFxaIlOQtn4dtJp1WpQE+HTtxO819PgbgK8nND4
	 UFqyfMXFxiiOeYGg+iTONlv1d2OV+39vzmLC8On32pkIfvk78hQLfDyJbAx2UjoEFu
	 Jv0TimQn9ljb06NwElHi98hmpJC37rcbXw04/ivQIf1+OAPTYuAYOt0i+9hMejQyj0
	 Uq5iJyXE3WZzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85EC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478519357.10896.12187036296106022162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81b04f0cd0897b5ef4f995a1a2ef11ade8c408e061ebaba4bcbe4669512c524
Date: Sun, 10 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754785193
