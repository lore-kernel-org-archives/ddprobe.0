Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559D443F084
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785315034; cv=none; b=UJs1+vC0X5IrXs8gupVZLlPNLKVUfRRZ+bfRx0IeyInT4LQxxS6C143uTlPfjWQsNCcss+6rskEwl0OLcsIJZcQJKplczgY8v4To4aNl6eWJesr3AIal0g+9AAwLkvtuZYIGHkE9sIdhdBZN4MSZ3iPY8vlxYyll7J7dQ9nkVeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785315034; c=relaxed/simple;
	bh=PLNQUWeH+Y39F+YByhHHthFWPyOlmNmF76Hd+vaVRws=;
	h=To:Subject:From:Message-Id:Date; b=qpEW7P58MaZnNOIkR6Qz0CMd6I/+i1UoorFg5B7f2rQ3qRnH3RPskmc8LwG5C8ibeUc/+/o9B5GXTJ0Rvp9D1Kb5fwy46QgWwDoXhCBmL12+YjGN/+p0PQmtIy5miGDUCOijQFFoYFmjXuwSJw8xRyNvyEQO1QqaP9MajRoLb2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEBgvTsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEBgvTsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA469C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785315033;
	bh=PLNQUWeH+Y39F+YByhHHthFWPyOlmNmF76Hd+vaVRws=;
	h=To:Subject:From:Date:From;
	b=JEBgvTsA8WeP/HcRjUyvYnRtPwQ1hMbygUW6A0XRwYPGjZWkkWEPnIHS0N0E9iW+L
	 vmgur5NB6OkDtvWKQKvpsrkRcrloqIMUIySghidpFl4I408mxNZNSj9pfg0N41A3QU
	 OVPPwDWOTctx3ValVoMNuD13K8Y+oiBXgdnqkjKo2+9M7Eov2/pj4SW4PEhtuYyYkW
	 vvTQsMoJoqm/p/H0hhq+dSFtEqZsnxk5lUtStbUV8FAim+l3OvCZRaV4+hii29Gecp
	 sXU0A0iUR4sHZu8aoeuhBa2jSYWlHywKkac0S7NrEpLQxNs31Ad3l1+g9YNa2e7dEB
	 +epuzxvSf0yCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CFEC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531503368.9816.17574290143531297989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0ad5f95a0dd35488828e6b73f307fbf9a0ac66a8851c527b826f6d280270ec
Date: Wed, 29 Jul 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785315033
