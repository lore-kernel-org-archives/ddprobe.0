Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710443E63AA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789893634; cv=none; b=dlrvhRiUdJ58+MjLBHF8SM8oQdUYUIGZbAnhtwHYXW2iU2L5b1CCy85mCPY9ReWyj7GVJYkD7C40NTqbpylbZB1kro9tjuW8884xLeTwmcz3CW0bkiPGoNHc7TKNAnaoEZzi8ylbvVTHZ1Fr1dkPIGc0lTg6nGKK8FQmmNe9k4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789893634; c=relaxed/simple;
	bh=vCzAyHrMcS8+ukJqwfnvjuqdS+GKuIIOqD9kEoWIM8o=;
	h=To:Subject:From:Message-Id:Date; b=I1KpgJoLYf5LiXqXwTgKyQke055FFKo4f4Aoox7zip9UcNGPuPDgjXWvrcRQroKijvYyVXvs9ptrc16S4xEKd/Ndx3NLopHUZ2jI8DcgDt2j8+drJMrcw6kYumMO75a9oDgJbuRSv2M+7xSDuGh4XJbE29cQlvNid+Vg8xhP64w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCiw/U3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCiw/U3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC00BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789893633;
	bh=vCzAyHrMcS8+ukJqwfnvjuqdS+GKuIIOqD9kEoWIM8o=;
	h=To:Subject:From:Date:From;
	b=kCiw/U3KBCvsjqenH25DJoy/4wbcSFZzNnslqh54w4TpcvVArAocitH8hQZG5XbAP
	 F4xwSivGXaDLK4Dk0mZmJ8+XSDIUpLJ0Qbv+zHtLdfYXwzTetUFi1c4mxWFCFMeKdE
	 Gm2vTRqjaisW8ry8uu/kT+5iAvUEUsRUcmhbxKcrH72zwoHiF/1z4mcadORgmXXlfG
	 5yWkdxY34KgsKKlzd9JO8/Ygu+XNJJOZjWCHLz8agAsOhONs0w2d+QX/TH/5P/tHcV
	 5FZtOIjSXddgg099IL5ZZzdhBokMz4PgKvZFeqwz+LGOzdkNz/3NNG+im05AWfSLIm
	 NUlHWUsg0QDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D0AC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989363368.26380.5910077074200724831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d7164ba323fe1d6ff7dfb635bb2387249dbd5669a074d58ad1702e4b8881bc
Date: Sun, 20 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789893633
