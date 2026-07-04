Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFD527707
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783190314; cv=none; b=elIGv2g7xFZxBS5NhyTmBMe3TPao/o+ljakA4Oxdo8ckmz5Rj2If8+yJUJVdiPXcNAn+/+xuXteW5TMNTl3IuviTz1hwBhjbQ+XDei+Ypc8JrbUTOYBkojRv33wCvhe321Fa7yDFePeiTcjHKQzUBDuWsLDh1oR0jRwjmHXyi+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783190314; c=relaxed/simple;
	bh=LMHu3lGFOC8mu0QIWWCq+meBZAwCr06JkNe+vujFUe4=;
	h=To:Subject:From:Message-Id:Date; b=MJUngG9t/YjdSfNgxQe3+Sx+tXZAtE6dTT7CXNAmn7kPm9P0m1/fijxm8Ofzd7hJgYqCH+GwjuHMOJShI7sflfS7MQXUvFLsI/n9UBcnZCW+CaYvkpClxf/ejg8EiWyq0DXjFkBqFA3Yr0jJzttaMpmCf7b3zeVJRiB0e/A5wAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt1xnTJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt1xnTJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF392C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783190313;
	bh=LMHu3lGFOC8mu0QIWWCq+meBZAwCr06JkNe+vujFUe4=;
	h=To:Subject:From:Date:From;
	b=Gt1xnTJpWbY8S1579Z/wClWo83c6Vc3KrCoMvM+W1UMJl1B5/igkiIQHItAQYRau0
	 Zav7nAWXPLGL+ovmc/mGCmkdgrecHYdMmW7rEzmid83r3tiQ/fZorzQ4O25ir1tnkn
	 1Ooiw7FDhybngB8M+ppR37/bzRH5/3wJpsIM94a9xAXtr6wagjV3Tw89elIMfpThUa
	 rfR77RJIBPPRInqtQBgMn68mUYCs0xg69JpupUtL9YNQPEJel7n7OFfaZy094q1nUT
	 d6Pn8l1LAFwHrOtguiJNRIgy8qUKWJNxhY6FIco9DLWCdQIrjodDatX19TEvX4uTMK
	 BJqTH0xQnXZfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05FBC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319031368.25891.12307953579812196837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb726113faaee388c60f5a3df23a71f4dcca9bbd84ce4f72ea8823435a555d3
Date: Sat, 04 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783190313
