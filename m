Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3233D6F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770681834; cv=none; b=rcSOl23t8XwsJVlvqFFwA3wbDeAdc3Es67TcoF38lwQxCZjyInnGTgEiXQQVOAh+Pg/QP81NKeGrnhXL4AqTac17Tprj9EMWndDKK8CCHHTQgL4xE7GjMBY6YajeeNXdqPI+qonsBJ0lDT9GQA9Fl58eDZG0yQkCMlR6kynN2AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770681834; c=relaxed/simple;
	bh=MPb3K5dgVc/V7p49v23a+TdPc/OlKFQ7CGFz9uE+2O4=;
	h=To:Subject:From:Message-Id:Date; b=pkwD0Z6Tlu8W7hYMiqs+dT7JjKXoou84aZ7WvrSBTenxbA8rW63XL/qXDXITJrRUzqdJwZeqCDAnW3XjUWl/R/Ru7lwdyQv6iZk+ZguVnwIoluZrtX6Elzdu4o9AAnBfdkPkYEKcANWAhm5N8jO0g0nT32O9+fWGArHrc2L5w0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMM/KR14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMM/KR14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3AFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770681833;
	bh=MPb3K5dgVc/V7p49v23a+TdPc/OlKFQ7CGFz9uE+2O4=;
	h=To:Subject:From:Date:From;
	b=PMM/KR14xU0Hs1Ouo3tppwfZqMnmZf7p3YBKg26myHMxg2TYgPRJm5JreHQUx3PrX
	 dodqUD0cDyY9OV5bliSv+aUrLa7K1picndSPwPcq28ymglFwCxPBpvriuXBQ28s6ek
	 zjyR9BlYjf/olgU8O3Wii9Cjj4Gk9IVfBT77wMJwZef+/VNRzalqP41wxGDSUsKqsi
	 aHvHaYhE28m1Z5acCiCo1bFpQVVGt0WyRwmBrl6ffyJ7Yrb7YKYb3YKW/I1FBvnfPq
	 sWSs1qpbJYXO/X6Lm/HUrFegJ/T/4XGzGFaGf9Ck4C9izgsgAVYpK6HwOvwur5mzql
	 86iAwz2gQynNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DA0E94626
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068183364.1967.8212658817024034411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592b2e1ab29ad4e7031f825c334cf4466db82792c03cbd84e598ca179aceb915
Date: Tue, 10 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770681833
