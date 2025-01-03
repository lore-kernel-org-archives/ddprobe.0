Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576EE1F9ED6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735899354; cv=none; b=Jb5pMlX9N410dKWzk2yMNIr70/2l2WX73h3u4k3AomSJX/svbZLf4LfKXrIGXGQrNQGFX1Vv+i1RbA0MD4hvk9TgdWbVrhkKI9s80mZdrEbQpy/Cuud/A2Q7UkCBz6+DdDewagn08ShpAHNbS1UGB8OJVCKAOeSPkvh1oemE61U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735899354; c=relaxed/simple;
	bh=GejsdVcDkJHVUfJdgQQtoRvxSvZcqQKpenE/hfay0/A=;
	h=To:Subject:From:Message-Id:Date; b=Tf58oAVi5A/PQmkLqmcBAcfSV2SggmbnqzlQo5HPU7P9xY0yt/KwPLtZonkZw7Z9Lx7z/VoLSs2pStgwtbjU1IwVK1dTiXYRKB4KgESPvtwdagxXl4Y29Qhu8Jj0ardmVqysENFRdBBuATzrKwhkvRLzs3GTZiRSvJpZNn3yUrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kde5dXZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kde5dXZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DEEC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735899353;
	bh=GejsdVcDkJHVUfJdgQQtoRvxSvZcqQKpenE/hfay0/A=;
	h=To:Subject:From:Date:From;
	b=Kde5dXZ4Pn4kv5EcGQI1EpIZ4zd45JNoFhzqH5XVP+poMe7yNQ6i3HSL1H6bIsouC
	 FkMmDeYFGJpdaZSrSQkkX6/RcC5qlb/PnYhYAU5qzgw+DqWmsMc57mWOQ2dPw1lyVE
	 e4ALc5ONqOAfSp5l/9vrUSENtLmWYEWqu9o1c66+nLpZ/oq4x9b8P9B13jrIAod2Qk
	 0fYC14JnC+Kc1TW0oHS5XM+2n+hAoy/bk2hvAUlZC7kxPT5F3g8zvwxRQB+72l3G3t
	 VOzIbrNFXGJbBDXiuS1m/OY/irnT4KVqG6vej/zr9J2fP4Lz1yKFx6GhC6pWf8GDVy
	 BFhr57tDAbktA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91152E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589935358.16454.11622819890202456532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a23fcaebdf98580fbaf641733815d626e9cb3c5f99064e42d3f1a4297311295
Date: Fri, 03 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735899353
