Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461512D7BF
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755217794; cv=none; b=qLElgX+nxiq8nMJxkxbNd+eQoyHGMi2ihvXVNZKJmZwWWq++2MqiIwzdjCgWKkbUWf/wVrOy/r5Su1UqKqC/7xPIdJfBKqFTTe3rr6fhamQ5hPRgZxbia7BhtFXkV5uxHt8iE1MYt5nk2B5BjfMX/seKnXK0RWLH/1epVrxAlpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755217794; c=relaxed/simple;
	bh=mOmxOE7E4qLlHX8MPN0ycEfyWgLS7a+dFXASnYIuNGU=;
	h=To:Subject:From:Message-Id:Date; b=V+1arhYytQt9IOnHeTmuU5LtlD9WsuFZhlerUZ6xJ9pqZgjbVj9kQPCNofcdx8V+/MPYfvsKbU73yXED/9IZnT14ttPkVqcy/8pfrLDiJeoS7J0J7OKsfqe0V8suMgN8BvoCYsp16AobxxFjWOeGrzf2GdYI/yeo2qyJaow1PuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch7MnmYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch7MnmYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24DEC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755217793;
	bh=mOmxOE7E4qLlHX8MPN0ycEfyWgLS7a+dFXASnYIuNGU=;
	h=To:Subject:From:Date:From;
	b=ch7MnmYkMzgQcLxSyMRbEZv1zgRt4ajhRdAv4NmqNousIMl+1w011xUg+Rr/WvNAr
	 abdCjtQeR2XfjPyBmatPXCMZO8K87aQ93sjj3hzDDw8TOS+g4jXdvnghHInPXModOm
	 oGayIChQHr27As95trovRFtXjTp2azMpU6zMMw/5yyt3xN3bVvpZhRyuJtFfYHZ+J1
	 TetbUC3hW/FyjAJV2RT5AVT8eZxr6dpI+mB+OOb4qRsgWn59+fbAnhrkJPR1JFXkrJ
	 4QiER3cS7Cb1JOvXPzTfACjxgxR3Pt111iXWyYhcEhFXd4zVMtfdfJEqG1EpAwHtjo
	 nk2cTvJU0Qr9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF35CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521779357.18484.9698427155914105164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7733b8bd31dbf76cbc1c045574bee8dc24d652c4e294ea6d2ccb594932c2b295
Date: Fri, 15 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755217793
