Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F652CCF9
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790689234; cv=none; b=o63b8fOpm9LFmaWc9BjuO/cv+wrZsFdfidNxksHvxL5//imrwQwLff4xy5wb2tnQMNsPjwwsJbe4iEqCaU9OLnWDB7qUqXvPg7hoZyBsQJkYR1A+p8ueLeIyXUEPulRbFSqO70i+MgRnBgpm0gpmI2GeyRst0WeKBhnIuBY3GVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790689234; c=relaxed/simple;
	bh=p4RIs62HodP/slJ90RYTlMtUp/2rhXYj06UgdM0rhdY=;
	h=To:Subject:From:Message-Id:Date; b=uyTmUOjDifMXPHTT0rvu8I7q/Fq5lR20FlclYxqkJMTzQdS2BsG4saX9c1zo/YVq/IiF+sOiKl17fkzmM1evWoO5Zw6Mm03YtJsHfHdd1jhyDIvIPaRCtCAg3gW+ONo/lRnGgPpgCEt7b4Y0jVNJEUh5tva0jRT/fm1UHMaXMOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PK4mqo3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PK4mqo3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0A9C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790689233;
	bh=p4RIs62HodP/slJ90RYTlMtUp/2rhXYj06UgdM0rhdY=;
	h=To:Subject:From:Date:From;
	b=PK4mqo3BJJE+RiU7isSPRWD/oC1GMxGZ0nof5h8H7QTlsA9FUVBUOl2jE2wIGRMoK
	 eyB/hxuau/7LLv2OAmhfkhwGOZ6pXJhCeEBZVCwdy32CTJgq6+2w9JBxlUWTF3afG1
	 ab0rYb1DoDrUwoa74Ae3EcbWDpduR0i/Z4DQZUBaMFzvaqUjmFXm5nocmHetw/cn7C
	 8i9cVXX37EdQ9TTOU4UhP68u0yDQNtfdFcWIfjMTCSq3Cm4qmVoHU7b1EkarXzpaZg
	 6/anaXTQwFxLQzwvwmh3UFlFdWxAm5r60PAvT4Zu2/aLlYGwjK0gVL/B6CZCjEvNr+
	 jmutTPZhkShlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC53EC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068923369.23560.9487213764249212689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6804149a98030acddd0f3192195bb6d5175f0f7c349067ae411f8b1596644c
Date: Tue, 29 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790689233
