Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7461F364EA6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775210735; cv=none; b=sEXkPVnzhVbi6bpj3b29GV9nf41wAoU7jQZIKPb9GN2fjzLt1TfUj0adZ3P39fzyWIVrkLKjLIHaiWjqldk0FIg9MOChWy1sbT7DSJp/gWUFZAUDOyEEuL8I90W2zWVKZ1ovuG4tZ50iKH3YE+gubUxsLxp3G0EuDsYGdt+ojk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775210735; c=relaxed/simple;
	bh=LNH+mmvFfslqU7W0gzlRGZqVEUegoOlFR8qIqZTFrPQ=;
	h=To:Subject:From:Message-Id:Date; b=YArOGV5bj7o/ubtdYlQWviNW92tJBYm2abYP+V5dKR1FVw4uLDdIWPfnpZqpBd1PI9mA2CvA6FYiG1t04aTTxyw6/iTDVUVp0NXksMJDAAz/BKsV9u18DWXlyo9gGeB5ny8vZ0e+Z39+mt0eURAzMqns8rbxlRZeyf+NxM/aZeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nW3dpcVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nW3dpcVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB182C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775210733;
	bh=LNH+mmvFfslqU7W0gzlRGZqVEUegoOlFR8qIqZTFrPQ=;
	h=To:Subject:From:Date:From;
	b=nW3dpcVGUzXkl1+NPH8pirulwnz092OJHqDed5TaIkcJBdC+mIzpNHHHWMHekcdEG
	 wYAlb9bct2/XL4u9G1dIsnNw4boCfZr7QEgTsT11a1kd/zk7yOh/ru6mkJpiapovVj
	 Fem5B7tLn2q3n7/nmOOEMBNbkBNCPpK7wHimt1Pi0Yf785A7Nb6WK6MN8HWKKqvY6G
	 XiTN8Irhp3H62wU+qmuNMQDzYEt82iWQEk3d5nVBoSnjjQ8wQnsX1ymWgAO+aHMdqS
	 sydMkqvZ9xbF4V2lxuNE4mp6xiN6q37JgcEl91PzOtQd5NvIiywD9G1kHOiZrgURfs
	 xAo7COybgQTyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC106E7E363
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521073369.26660.3588849398233948028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afe735aa6e4ea7cb5a5846cdc110410ff209780ce847f1be0a54a1dd0ee98e33
Date: Fri, 03 Apr 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775210733
