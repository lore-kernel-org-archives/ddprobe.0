Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4D01D79B4
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733181954; cv=none; b=hNkuorAb78g8qPunE2P57cCOknO+scR3iyJt4gRP9D3n6H8F29vZJTxcotauBkPj6Fv7n2UNT7R/y/947SggLIhtvaMVvvBqazMsA/HWOELCWLBz64EPvBUvSAIAWXiyEeQDq9VzyuojwoiWM4TwzJ2upfUUNbNr/IERvHG9yXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733181954; c=relaxed/simple;
	bh=s/Cfyu+E4H4XXelK3PXLCqHZJaC6OUHKl/LzDcfFe80=;
	h=To:Subject:From:Message-Id:Date; b=k+hrJ24aT0VfgaqFxqcpJHsMEvG5b7NhS/CH+YegL4bWLau8R+kJsEbxJ6NwJjDXK9PkHcStbOmg4F6vUcRAPEu+qIK90n5LkIF02GEtsF5vLKbsi+NN2RuTVOE7TXHxx5oBQ2FskhwJlqoI/PgFYnVGBRiIz5F0NXAIzJy3LaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjpS9Jt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjpS9Jt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF449C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733181953;
	bh=s/Cfyu+E4H4XXelK3PXLCqHZJaC6OUHKl/LzDcfFe80=;
	h=To:Subject:From:Date:From;
	b=FjpS9Jt3mDbzMAOBDX3J1I00zwdCcdJE9jlnQWYPYNS+xeWtYvD74DrJA+HnM9o65
	 rd7xo9/fhpH5CH7fbV/eqAQ+sLdisltJB2fTRV6eWMeYmeJ6jKv3Rq6NM41E9oMn9S
	 jJtoHrr5wXxZK/CN071SPW+tlrr6vOJyEU8c+13rsg/sH2uBJeencbYjn5qxQl/KfT
	 YLewKbpBt3ekyvJePAVCoaUzvDiQZCKJ81JV23+oROKraQPInThcuKPpl3nI0MHN6I
	 x0QDt3gNgpZu4MtO1p8qtp1rHRrTRb2sm3SYpm74n9L+uzlgrkPgfoOc8YMNcdLpqG
	 q88XjdXJRglKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA92E69E99
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318195360.5551.5400560209054566038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca95e20d7a01f13b746f94d050fb30cd9ab8b6573db90ef23a5d7b19d496f520
Date: Mon, 02 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733181953
