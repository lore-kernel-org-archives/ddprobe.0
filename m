Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7121F4295
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742831394; cv=none; b=bgc3ln2M3k4q6+Q3nKmzmXnaLQGd9NYOjz3ky+p/960e8lz5wMMQCWdUhpTEpQKxmEKLMi4HR4asMDG9ibSHfAh3d6TsHzVNVkEdlGxdQJvzamjggFJmh2tjSAwGuWwX5sURA+IpLJVQkKA5JVKLCl9L+98S9KLcMuMCcGiaBpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742831394; c=relaxed/simple;
	bh=dY+waG9O+wJ7AIEpwhw5oIv8QUhyvZmpkUMwzHHe6oI=;
	h=To:Subject:From:Message-Id:Date; b=WrIQeAjdvYg4+Up6ZIX8cY0Yo9X4hic344XWVue3oZ37cSg6vlBGrw8iRyqy0sTuAb0nmUUOSrvZzRATvI1SSsFxNoqZoN4p30sUUH2531G+j35s05Rk/PPSSADgvsXvkkUL28u6msSCcPVbKNAypioT4b4dIgAHi6BF6YRa6rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTmKTFB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTmKTFB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C38C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742831393;
	bh=dY+waG9O+wJ7AIEpwhw5oIv8QUhyvZmpkUMwzHHe6oI=;
	h=To:Subject:From:Date:From;
	b=PTmKTFB7AN6ScGIOvkQxIMsMCE26b7qMxnaiDUelGzWytP/FtNq4yzE/kTYprPyzY
	 129RjcPWW4VnMESKmRRHezksFmjsHyuuMBy89KB35hqbKOkbQCQqr33lhkUESaHoY6
	 v1zuwBhs7rvsTqmvImLS4Rl87Tj1dnOdiUosse19aU7dw6CDTCrYHq+OAwZe5q3TD6
	 HxS56ljxJIR47CMtPE9hFoVNkLc3PMnsoOWuZwQdR11V0eOBl+sVSOqxnmk/pWklAs
	 82RV6PnpPDiNlv4nOZ8r088V9RNUOXMoMT0HtD8ssqF7rOWGQYUj8Io5uvgJHy0rFV
	 FSAGQY0yqxgOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C53EC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283139362.15044.11050917777481264187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05eefe1bceb8227c1954494d30bfbd4e1ee09c7e277c0c541445c8f3fc2e9b13
Date: Mon, 24 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742831393
