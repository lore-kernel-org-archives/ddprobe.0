Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58646368
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714797143; cv=none; b=KVRFWY4ybt2VoU2DEB+4xRmzSH6qkznxa/fB56AwQMr030tmHRLqnzKbixb/ZGE6x7PWEdBilCBI3bseA58X6s7gUqMiWHpZxG8v1OtSaXW0QpqBOTGmUveadMUErm16G6e5kn3qFZq1sbeFUV59OMcBBmg+bOzbBFZO+TRQkTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714797143; c=relaxed/simple;
	bh=NSSCJ4kLoSaZTeZU2IIh5W5gNLjJsBiH/+0uzvNc0WI=;
	h=To:Subject:From:Message-Id:Date; b=HECPDLGUnEuoKgs18zeU2/09QZgaADG+XWmJ2PkAjZBv28teveaEoXkT0DalwL3mMWxxpqAGlo6oq0PPk2e8fzhdsb3XL1vYl+KCA0tXqczOlqXV961ODjqHrKkS3xT+IcY6PuLoC/WGK8gRTq7gYlZS3Evrnq9kl/9RS2SuC5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEU7R8Z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEU7R8Z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D960CC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714797142;
	bh=NSSCJ4kLoSaZTeZU2IIh5W5gNLjJsBiH/+0uzvNc0WI=;
	h=To:Subject:From:Date:From;
	b=LEU7R8Z+8LUhuY6N01UkXt0u0O1UzZ6PyTYrJMc6likW2fQt39reAqIey21w4lzcX
	 UihERin4CFyh8yWXImj6a/VQB4U0ysi6Ao7GbvozuL3qyH0+gUhk67hXVmaj0PqXeq
	 wCakr4ufuPfZ9OII5GErjl7Hw3tBHCswzo7hfPzOd0bWi8CrGT4OvE1y7Kyzu0qITw
	 xRTkA0X/gqlOr15neJs1OZ5cfVaIpDBKQm0RzkalCwPyPR6c+1HV+03BcYTCFKHFAK
	 0KbS0roNjqudLjgnt7KIuW+xtA/1RGgKo8LajkAmrb9U3XkqphuF4ZsQTgEzq3qz/h
	 Vpbd26BnlMr+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0611C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171479714276.23880.16245505379038660140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a87c334854e1766396e28ff7a65871cde1db51337bcdd394ef2e5752ade690
Date: Sat, 04 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714797142
