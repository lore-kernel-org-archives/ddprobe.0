Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436593B7B68
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785448234; cv=none; b=e136X62Cx6nxE4540qIPAw/VfKeYaM7kWEfzf5ew5lhyv4y2OQsMYKQoO1RvX7qB+4/GvZvYPh0uN4HUq/6YiVq6gPZ9Nhq3EXAIj1mU/oGUNgDD1nGE7H7ohe9iErcH8domjz7FugS57P0ACDMjUWUoA1hJBPd6D5Yhg25zJS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785448234; c=relaxed/simple;
	bh=exU1QIH8r4i54oofCLhz+dBHa1RxXYFXKLL+9ZJEeK4=;
	h=To:Subject:From:Message-Id:Date; b=dG7C6llPxjKevJJdaFj3MJ6UnZLQYABD9pt0Hf4CZz0UmOpUYz9oMfdkxcQIowrLvylU2gEhutfD9NQjIvY7U8X3KopFwBJMf5AmZcCAp6ZNF0GK4lAGvQZU/LAvZERZ69Wl5grRfkLZ5fSWq6mAqdnsAXNLXmx1ZFrvsNOJWFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/Ajl81X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/Ajl81X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05ADC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785448233;
	bh=exU1QIH8r4i54oofCLhz+dBHa1RxXYFXKLL+9ZJEeK4=;
	h=To:Subject:From:Date:From;
	b=a/Ajl81X9zynWGdGF4oGFgDgTseghAi61vivSJL9EHMynTNSThCB82YO6fqM8GT90
	 F+AnJ9rU+rvHfHKt0LiBCZKgvaX0ixJI/VuzwniPqC016o1iL3FICYuHeZGhqzcOxg
	 ZJ9BLKgcGZ5SfYuR6vIsK01Kp0+TJxKr9Y0emC8ZmR8fPJFNFK+iKfzgWX72+gQCFD
	 OKTS9MmTcX/lj21E/2qa4pNrRyINNxQdUJhqHkTs4zkuo/fhFJmGfQR6CSjpV3LD+s
	 85x4XvrSnrb/UJdWHWQ33dYSBkQcBMjRbu/5b0T7W2TtfPtMlfgYPNT4mUxdoPAMqn
	 7oiPu/acVus0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA058C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544823368.16186.5310487884504792507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6329e23f49696f10caa51d72d28f0f248f72c4b9dd141a1d90c386f4c05310a2
Date: Thu, 30 Jul 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785448233
