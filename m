Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE5821348
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739120155; cv=none; b=XocCWTIV/xMKaz3UQaN54sUqchW1Vt5eta+5dZWZ9Kec0OpSosuqrcuTmzXAgHUp/9vWRcCssFeRjodtkDxmBNq8dtuzmko7DZv4RmrLM/xf70L66XXMRzScAoBfaFs6lKmZdItxwRx05A65SiXZJ21bjsxH3LI1d7OkWGcKvrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739120155; c=relaxed/simple;
	bh=Tx2I+kaTVhROL9AcynZ0SAie6sId3FN1njeRY2jKWrI=;
	h=To:Subject:From:Message-Id:Date; b=Ddp4bMpGp1qE4WkrFr2QF7orpzusWZUXYcRh6sQ2PpMXdJK7is6MtFsJjxuygsWqiWe/L9VOBtftL9W8swwvb7BvJHEW+lyFsmBJD7/WFq8Ygg3JJTAXDy8iOHo1k7fbKlh6ce01I9DSY9yVhih1h++yuwTjwKDHQgQ0imoiYNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bm9K42ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bm9K42ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A956EC4CEDF
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739120153;
	bh=Tx2I+kaTVhROL9AcynZ0SAie6sId3FN1njeRY2jKWrI=;
	h=To:Subject:From:Date:From;
	b=Bm9K42cadqiCRk7CYyuCoLjWy0vtxL4ToNagl10RdgnnG7zCKiXe30vaW7/HihKX8
	 SCUJkUH+81IfMpJf/pUz4q1AvuJY90KuTh9QifZr8m2RYhsBVe6QOUl2jo5dQWPfs9
	 xVrU7WpleXmsLqTFKgzqh7j8qspvl3ImIFG4hk2S+JSl4axk4Bdq4VHh+2aFeHN1tO
	 LzcGWMx0Y89DxM+Kw1aTaQgiLyB0Kmo77snrr7NSFqC7oVJ0R8NhcxrbpZ1mthf6Vs
	 JOkanq2Im2tC7qlIM8tnTBCFg3XlZOpyhJnCTRU9QDRATaAoo39odN98agBnO9v7js
	 3Njlw1p4pbBjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB6CC0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912015363.28832.5465814357939851846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50a918fa7cd221b3657af0a69f53488a8af42e605580cf51cf76520a52b25a1
Date: Sun, 09 Feb 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739120153
