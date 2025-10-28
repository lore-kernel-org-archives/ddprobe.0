Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A41534EEEE
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761679794; cv=none; b=TfsXOoqxtTM2joGunS7/FMLdZKyXCbn027kJW+yp781f4DfE849DfrHujpC2BEX42xRjfjYa2e+Kjqqbbt9m+gtfD2k5TJTN7IqD9wLc7aG80gqGrwzQNgmxwL269lSf5pfmvF+PyvGI5VkRppQrxH8ky0RFVZhappjtV3Now2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761679794; c=relaxed/simple;
	bh=hB5wQ5yWBszUJ20ZHJm0Yd8zBfyS8VAsBe84yJhBpZg=;
	h=To:Subject:From:Message-Id:Date; b=kHPvjgU/6XWQTyGb8nFEb09TtNqFwYivyJI0tx3cu8HTM+ssmWreyBDWs9AsCcXkI52OJV4YaVfq8BU8H0Lepxh9OYpy8CZgHDybZSilza9JFm27wq78nwTnblWk/5/TIpAU2VYTrSd4eHTOUK/+qsekhePoeZYt+3Kt2wq8SJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvi+HyjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvi+HyjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E52C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761679793;
	bh=hB5wQ5yWBszUJ20ZHJm0Yd8zBfyS8VAsBe84yJhBpZg=;
	h=To:Subject:From:Date:From;
	b=pvi+HyjQgXpeJ4cZnKi2BG0rVaIMrLD7ILflD8NhC0RAm0SIO95B3NlkwnCjlwIkY
	 OC1dz5NBROGDpTdzK0vL6kFADeKf5X+KuZy34dbdAlXG/lIEijFkBqKmlfwXmRddTs
	 /Iwc9M4qEGkXj8V4gid301VEuUwse/Obkrf315uklfEGiHB2yf36HEW1bCH3a4JsNr
	 ZUcB4ceAy/GSHrpqI9zI4JLm7boBhRnCGKkIayjAFeD3Skil3xWnYJo5nZG7jdcd2W
	 YzMQni/pU2eSrhQ6C95553qmFRaTcK4yZuQHVsXZ2zDGtkQqvucEFK56oJLug1FUOg
	 1DZAz40OyweXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1FCCF9EB
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167979358.15279.16024916453269446345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6eeee523c90104b85002561b8ef7a3a6f9a50b0f528a245e3254723cdb8d091
Date: Tue, 28 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761679793
