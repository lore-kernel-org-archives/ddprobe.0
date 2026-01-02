Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C311C01
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767361434; cv=none; b=jjBagNrqGbR22EMpniGqMm1FAmvsvhKlfb6y/r4iaAlb2owEOli4wGUPltrhN7PWwrMeI+I3SolKPW0j4U4erNmiFn07NJ/zr0ZQKUm2m3n+lwVkM6FDKQwfQ0orJ0n0YFCVpEBi6gbMAeJ6ZSsC4hsZj+kiu9Xqmpqk7B54rr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767361434; c=relaxed/simple;
	bh=z/3ZqFmWowGm4zj2HvAEWDK/+ySL3lCZV9LiKSmQP8c=;
	h=To:Subject:From:Message-Id:Date; b=oHy9AnGBmbEBre+hC5n//3wVebT0bINTPHGXIsi7NgFgtT6f0cwTQF3mdgnrbYYnHGm5f1XcNwJTnhMwxCoCe3KzYi/f8rVIDlvw2KhGyp8iWGO+3xCSNje5wGNmetJu/1YRDXMI6h4jonIRlG4G8TD5C/GYcljodKuoSdRVNXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joQnLQmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joQnLQmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E47AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767361433;
	bh=z/3ZqFmWowGm4zj2HvAEWDK/+ySL3lCZV9LiKSmQP8c=;
	h=To:Subject:From:Date:From;
	b=joQnLQmATD7owN3qBJTmqW0zNGmfhI1kQ6TurTFuiquPFec8gu6YHK08H5Qttyk64
	 nfZrjuvXz2UaUmt1atkQOuhd3HUw8dWWL0Hvbc62Fu7Wd0q6CDFFReXtgbNa5deYza
	 gU5QQx2k74AeuNMg9Lqwg1uoBPMOKchuhg2nlt09BavSeHbPHIl/AcGzDTfSuAB3Tl
	 U19Yjfodte8NpjwVCl/+Mep4nN9ysLbOeLDy95mk8tY/9HNs4cm9d94LdsnWYIT/SL
	 ISnrXJ4dkieeuKnHXwBSSTiTT4sbYh4XlNBIv3f3tQZ7UlUX+Y97Bxsgey7MB++Yr8
	 GAE8MKdKFw/xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90727FA374B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736143358.29182.17466412756750339362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6eed1a68497ebe2cfe1b55133ad7c94ac4fb225f3e56b47408963959d3516a
Date: Fri, 02 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767361433
