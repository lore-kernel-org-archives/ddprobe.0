Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F881F4607
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746442794; cv=none; b=bKlRvqED6Suj1PByBZdMhvmgyM14jEuWFOpygTrucuxVFoRAWGOEZ7U83ws4gQ7+iBg8ZGw7nelMfX06AxtbZoejukGOoADsMJShdjmxtiijCMr9MRsgLkNcyYQ0vme6JafmO1P0Qzy5DIwxbM9z51Q69zoGJAKfkWgItXDOULA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746442794; c=relaxed/simple;
	bh=r/YnDGkm/0EfnH8oUKmT1FSu8r3aNYOeVQVr5RqJTZE=;
	h=To:Subject:From:Message-Id:Date; b=X7su/vSRzv+Uwh6LXh3ZWuObn0td9sziOZIEbFj4tsmLQM2eocTkC2rpyZTTFQj6zlSUt688dpYlDe172iS6D8vCzVpBbu5ueGTSiVJsjx/zGB2HyZYv38kNq8YpeP65rkGx2sxnju1Bv6/hp486JyuqNJMtuEe8P0pazmiZ3HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6LFqdDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6LFqdDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0720C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746442793;
	bh=r/YnDGkm/0EfnH8oUKmT1FSu8r3aNYOeVQVr5RqJTZE=;
	h=To:Subject:From:Date:From;
	b=b6LFqdDdjUaA5eVIY1uGZa8QlKyHheiyfj09Q8w8hh2mnKydd9rTl7+6mwsn4Ebyf
	 JVG9MRz05XQ+9u5GPADjdqmWkLpUycNqm2UzuiS1eyBAOX5Agdh1CAEnevDGRXgUOX
	 4Q8I3qtZkSvwOwAD//2WahcrhggACHgRTKJrsauULasiSS1Daws6bfMjattx0wHo2t
	 A4XDJPk08TPmiqIHDgdVAFNWCI8V6bd2w1Z+oOLqYpuvjIjchdIyRZhJpJQ8llgx5F
	 GzSYuTf9qO7HlNNs6PJFRWXdYSH3kyCW2PTi26/IoTIprAaodOEffZ2MV1/ajBXFxy
	 xah7wYIthejVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF5EC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644279357.9652.4415463353640259885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4c29ec7730ac8dc3375bd0dc36065d549fde5057c4392046aeb2af339ec5e9
Date: Mon, 05 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746442793
