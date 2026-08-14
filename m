Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5560D25B098
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786674034; cv=none; b=uQXNSzfAkH7ZAnSew2gIW+yFN6Qhe+JeI6xC5Pelq8CnMhryhiOsoRh3HRkPB06graQ1fqHQ5zedR0cRfsa8n6ToX76KHAaih7lixKw4oJXSLMBlPQYEA8A6QDt9Isb9cZiNEbKg6A0CFkOEb5yol1VsUUccvSQher7v0ZW0Nk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786674034; c=relaxed/simple;
	bh=T1XggcQgWmChpn5S537wJsBoKt1+Gvq5HN4sBy6Jhj4=;
	h=To:Subject:From:Message-Id:Date; b=V7IQuLGUG7UGwo+xjVyFMJ11mvybdKd5XSfnTwJfkQQ9LEQJnf5m4Gzbo2ufTgR3J8jVEXuAMbTl1h0CmsTmWS+k3q4AqrjU24zlx5EoMXqfbsyKJIv/BtUiVvfO4QZy/dHbA6ibvheh+OlAnprwLUeVT7k/ghNjCKLAm599qIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvyJhe7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvyJhe7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9A3C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786674033;
	bh=T1XggcQgWmChpn5S537wJsBoKt1+Gvq5HN4sBy6Jhj4=;
	h=To:Subject:From:Date:From;
	b=gvyJhe7TbZoIc8nl/9UYez5jfLwhz3MA+B5XZ3sFKwTXw23/GFPjMqiYLcxkyot6c
	 sj7YuirkZ5wUIGdyQluo8jKq8V51mdv0S8lfoceNMuNmYuJjW4Ur8GPrvA/gmLDvjX
	 oLsE68N+V4AFB7oj2P2DEKuR/YgqkZJQPwN+9qiol3P5kLHjKNW2CbbtLxGUJ2xx/k
	 Q3d1hDguRKh/7X2Avomz6yc2Alh7+S6JKlqyzWv2FvcrQ7riT2ccAb/GZOV+Z0sUhM
	 hjgNvJOynDGUkjCNPIhdqfq7zVwKi8VQHFUgwHg+JUqv0iVBkmgf9KMblqMw8LZw00
	 cctBEjQJ4i4fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C07C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178667403368.2601.14272549736532844375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be57d2d8bead55ee42c8653c108ec4991d1595bcd34db8fd561c9fd744acf00
Date: Fri, 14 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786674033
