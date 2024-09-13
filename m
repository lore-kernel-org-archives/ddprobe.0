Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC9D1D9354
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726229754; cv=none; b=PZH5E2+T5Y00VQ46RjpwrA7dYPP1GElv+d38d2FLwXB4sbdji6bj4JqLa5MQZCSolB/ZR3S2uo4xR+HzNphL/BVxVsQPDz9+VlzTEMxX6qGUJbKR+rBY+zGq+qsqUCKLdhd+8akfaeJDjVS6psJ9GRdfp4JTDi9YFz4hXSvrdY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726229754; c=relaxed/simple;
	bh=Y2LAcpKO2FXU/I+kwCjG/wcTot+qFA+miuPgjzeLAc8=;
	h=To:Subject:From:Message-Id:Date; b=flMghhtRfs3nwFj5Qg7vWIUhBfMnji2yBaaaLs3fYodEZQYEmg9s7CLTF+fVn9noevyRcKgk12mLUL+C5DomQX85+07dZhSk1DiYV0DSZ8amfp8GXkHRxmgXZ8IWq3Y2fwKZZ7VQ3xZP//gfxQUCcST9pTFPJ8PBVOH2e1ZhUnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOILJJOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOILJJOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A1C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726229753;
	bh=Y2LAcpKO2FXU/I+kwCjG/wcTot+qFA+miuPgjzeLAc8=;
	h=To:Subject:From:Date:From;
	b=SOILJJOvveF8qm2IRYVFJXk4eYblpu7JOwJc18hHCSVjOtwc0VLBJUVpLYiTwGsil
	 azdf1w2+B0D9WE6SgOFVJBoM9U4ctw7mbrjGF9y8nS9Gnkc6oIdyLcazmcgJadvf+O
	 Gpl8xOkmsgUx/mtKqQP0mrdUAUUZTUoGuepQ79ttKGpumTX/gi0ydR2JAqH8IhWKNy
	 IxGNipQQT2adMZxD7ZrOPaF9s0M0vO48wA/NkvfM3WCNqq/GmzbPi8q3iyUalEmy8T
	 WkXkCxb8C2xi7vzrH7OpThQCQpkG01UcvYwKv8j6WpOr8KOwqZpExZvbnhXRfVd5N/
	 s15lNcmK3bbDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B8EEE26C
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622975359.25737.8899928074547432513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf32d7ace71925253eecdb36ec94b7fb74e43782d756d6d5616491f9eb50e30c
Date: Fri, 13 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726229753
