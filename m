Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5CD2494F0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779573154; cv=none; b=DCzwQeKJ2M2SM7cLQ7Cbwh7dDoU5tnbjL9idraaTZiaGUSi2N7IhGuY+uNBhR2hj7PQqzfy09Ex9wVyIfnnoYtgu6QGvfMKwKm7LLvX3pL5fnw94TjdqPBSOUKxZVJsb1hofVdOKibKZzNSEEqxgI+WaulMIGGQwkYdAJCe/AAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779573154; c=relaxed/simple;
	bh=cWsff60MQ3t2D+MJhHPStDvdrOjbxnxTgiizYYiMonE=;
	h=To:Subject:From:Message-Id:Date; b=p96aENAr3KWVQdbK3N/4V+eToX0J/uFlGqj1V++VRuQ9PRaS9Z8JSaeSlbKPJiABFdhNyMuc0hYC1Z5tUe1i4XjB9B2/7cnn0sfTqI2Mh/L+oMYRKT8inhHSEDvTrqFqMEEZuNT0PgIlsKM7TcEdZolndGMhGiP+XeL9mWOV2D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhpZjN4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhpZjN4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C46C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779573153;
	bh=cWsff60MQ3t2D+MJhHPStDvdrOjbxnxTgiizYYiMonE=;
	h=To:Subject:From:Date:From;
	b=nhpZjN4WF0ypeVXiuZv1zHeb7byA5oWtlOXszhwJSwiCT2Da5qUTQe1eUSZfkoi33
	 HuPNGGxdKCMeWUmerjpvEuGgEzqZHaDj7/tFWze91XIqAjucPt9ScLYEwe5bN1MYtU
	 7ZlIIbj6xCdMkb+kW2ivF6qV1PPGmjcqtlTXt2sQekVV/1uLnz9AXxyHLzghlJC4Ob
	 F40Cg3XFA4WWWo6BK7rq9cQy8rZYwKD3koik76epMoNQSKr36ZokyODj6Ed1mbgX/y
	 RtKo1omzgiZbGqWt0Z6dmseFg7MEL5CoBWxHQaK/IsmpP0Qw5Eb2yy4ETc228Oyva2
	 jscgrQzV4+xrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47A3CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957315371.2417.3404769244639436191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03063c4259116b11129b6eebc0cd483209850ec887bb2430b71f8b65145081e
Date: Sat, 23 May 2026 21:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779573153
