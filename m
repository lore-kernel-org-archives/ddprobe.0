Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB4D1E489
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712599097; cv=none; b=uErI+PUE12iyQNJ8SlawJEVH3mz3VergVevVxIb4CE4oDs6lrf47oZ/GaR6DwOsFqaIfXjd9891fPOG5EDt5H6pEEeKjNjUtstltKF4iHkS/xC0bwgIdz04keys55tS6qQPvN8fmhAL77oTi+FAhlU4IRyCB0HGNsgN80s+9EFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712599097; c=relaxed/simple;
	bh=OQLeIHv4Pcv6ukrwlsDAOA4WkLz8uK5ow0dGYaQrSJ8=;
	h=To:Subject:From:Message-Id:Date; b=IoV/fRglkQyjSnUxpD5N2F8Du5YU1NiOMf1ERnKc1Ausp0MAVp+wzsnldEzig6Y8IQEvn2F7rzivX9dveuSQc5FVIA5leAkMnxeGPFj7sHL9aRL8Y91tZj4vf3x1xNz9XxNoXwHLax4ioR/UrVWuuq5unai/u8AUR9TFRo2MQJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hV+d7iJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hV+d7iJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E2CC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712599096;
	bh=OQLeIHv4Pcv6ukrwlsDAOA4WkLz8uK5ow0dGYaQrSJ8=;
	h=To:Subject:From:Date:From;
	b=hV+d7iJQck7Iqu5HNiRfAoxsUBqnS+jiCtzy34Li2j50wlhJaw5k3HNUZg4epqAXc
	 jBVDCwAgZ7l1ZzSicDOutzCjFcdqwRnYgUVLdaJZqx67KnHSqfive2dq7wkQscwoBG
	 DRmBJZ/rQ+V/lto0bwlT4sLq0QGv+OkqJFdnTjEb1nuZTJwa40qTWlZTfmLCZ9mPjm
	 xRzJq6a2JoUH+/sEkFsFWGGl6ULu56etCcjWVuerRJh43W1xWskqfPm1EX8JSWGZRD
	 xDgMnUv780j1K+WcUxdYvT2DhyK2uTFkkXld2roOgcl4Y4S+La8R835MsHhEiplt7y
	 JvO0hy5viXAMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F3ACD1292
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171259909644.25526.6243100477128702686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d1b09e702ac05dc56b6156a392556d88fb0c3898dfaad5c1f0ef9de4387ae8
Date: Mon, 08 Apr 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712599096
