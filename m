Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26162A920
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727406354; cv=none; b=jrdOOnPlLDUzqLCMOj3d1fym2C9JdfX+h4ITHE9eI7bCSuESlouCQ9hpP8WVWIgzBZGro/xOB3XuJAA0ywhYzHtQX47Ibjn89VZQUSJx0EjcUec1zpZ4gLKJEKot8dAX63P7ueGpmjbH9mxhbLHSzOJSXMQPetkfQsQzXr08eCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727406354; c=relaxed/simple;
	bh=f+iS1jUOK6ZeemFnJgRb9Cb+UrTyEUkVg0mcvvrs/5Q=;
	h=To:Subject:From:Message-Id:Date; b=i1QbiL7cNOcynbxtiK2V18e0vCWmqNq/0V8To7KCIe8JkJA3toTzy0jiXZZdrgHSG3AcKHaXgdHzsjigmG7VLai5YERnJ6cVz3HJw0ojXB+kImqESEc5kMIi4va+b13FigE1IoJ+g4Dzgp8vKS0MLveYfAHTXDX2z+gKFR4Icjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+Jl+bqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+Jl+bqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0625C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727406353;
	bh=f+iS1jUOK6ZeemFnJgRb9Cb+UrTyEUkVg0mcvvrs/5Q=;
	h=To:Subject:From:Date:From;
	b=i+Jl+bqgpVr16XT2BpNqWNTCWPU+q6pr0SMxblI4KPSWBpOinbTW7YysNK2/KGvpL
	 X74OOIwdoReKdbwNYxkXQo0Q9lEXaE774wDAaepO0LmMNQW5dZgmNctEdJ9sZ4EJL9
	 kzZiYpj028B6mkcGgpA6y8kBhy+Rmc0MDKQNTqVgNxKpf67JSyqbwO1da8JDiZ5LLy
	 akY0OSRdHemmwoROhJYZVOC/5Sm1J0OkbfZQ8TLtSQQ0YgWeUwMaUKYBwgKqBrceJx
	 4xQjpEqGlOHBbF92pyqLIGngnd5PaG9ywBbWuR6/GafR1F9SnpGmPyqzU3kaTLnV5K
	 cbyQl/7w0EriQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A569CEBF72
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740635359.22411.18150038759616615321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8dbef2730e2a5820d43f6dabd2295e424fc35156a8489389efd3a4be6c7bfff
Date: Fri, 27 Sep 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727406353
