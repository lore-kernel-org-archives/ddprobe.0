Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBD517B50F
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771011894; cv=none; b=ZMAfAPAjbi3WHUW4KC1bjIwPzqZ5x16KP+mBU0M+Lm4k01cw1M9d61+WpUqjKqrE+/c8BXdFwgG+/y1uEHlgWpK0HJGg5ZbnZd5t4O45klyREDLM0Ciqd0+eJJGmpfqMnirL+geRaSFc8suqJkF8QNzc7mbpGjkJ1YA+cKLKBJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771011894; c=relaxed/simple;
	bh=Kg3reav9t5Q/+RaxTwKQ6OeIe9G/Xk8bf4Akg/Tjz4k=;
	h=To:Subject:From:Message-Id:Date; b=sVhfk9OitQPKgHqEhEQkdE9TnjKbMVNnZYXiQHhz8A4oyJS8rU1E1eRSCZQv+vR/jklJ7dF2HTvX7/vN9AzdfeEd+W2TAJsuFOW/S9KDRAlip4Y9T3fGrN1cYuseLRDWQR38uj2uX/nsmMXAeSGG3+CW0M78yDpEciHV2xtLClQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adGMpjQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adGMpjQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B10C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771011893;
	bh=Kg3reav9t5Q/+RaxTwKQ6OeIe9G/Xk8bf4Akg/Tjz4k=;
	h=To:Subject:From:Date:From;
	b=adGMpjQe27bho2r0hxB3I+LkMu2NphhIKz0R2fSIirxS1jsyWY0+FdFS39x3534QP
	 0VU4QGc8h0kvoZHT759k092muxrcJgA6yL70buuTrlpfu37ESIM39ehb3v4dodVPD2
	 BC+s92qJUka/4/dhhB2o+kSvfYmkewRF8msGCELEYokgkIWDOW+UabZZRQGS9FSNcS
	 mootLXziYDBbmJHseo7c9yoJpWQ9YJusNxwpu7/OaSGgSqQRzkSKcFJkZM7iTSyrlC
	 L5YgNt1vACgHOI3JZA9FFKiYIblXJb8A40xjRxLXy7kZSqwTz0XqqwN2RtiReV82It
	 NOqeOqNOVcPjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E62EF99D0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177101189358.24997.12687977716334341174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b36c98af00205ec007e3f87f81c4dd81f3833bc5733c68a9e1ba390c25277cb
Date: Fri, 13 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771011893
