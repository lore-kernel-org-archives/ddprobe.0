Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B97B64E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 17:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720978823; cv=none; b=G0555ZO4YAz4+LON2kFIbAFd09EGv//l8FsrSdqLgIM81unj7RcVTW0klnFPFrZxU4NTz8Buq1ftZbjaciS9LKktETrSDA0ng3pyZ7PzBzZbHNNp4Pqs70BHi5VigkL+21VtMusy4uzMa9/dQouLEsB5yck7PQMVy5LJXsDW8DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720978823; c=relaxed/simple;
	bh=1jEEL+NddlV6mrOLL1CyHYAv1IV2f7lVu0ucPfGkAq0=;
	h=To:Subject:From:Message-Id:Date; b=BDy05z6SnT01Ibg/9/PxsbNxiy8lKgug7jUwaWQ+yPZu81r247fArHeegrI4Dgf/Q3PsNWc+9on7BPohzD1QUOxT3FuN6NJn0u3LOHf57xDcyt9HwSBdvevod3sAmfjROBrbwOrNtXWzfnpl9twin67cyvUha59fI5AOI+LNFPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2DZ+lIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2DZ+lIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE413C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 17:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720978823;
	bh=1jEEL+NddlV6mrOLL1CyHYAv1IV2f7lVu0ucPfGkAq0=;
	h=To:Subject:From:Date:From;
	b=G2DZ+lIFF1GBBy9JeDau9wwp4JUFeXRuMHGMpNldq2g8VJ9KxVntnjGlgSiQIs3cj
	 KB+AAThxqB3qWkNiNHi0eVkWb1AiXozCS+knVrvJ08inbiYLq9q7+AuJB54FhLqvwE
	 alN8nQRG20z2+xDr6fGOcEmw7YoXmXpMlQHdILqsiUIIwNxgIPm477jG+D/yuxnjP8
	 vUt72jQu8BMU5Gya/LsZ9Amasu/b4IUEzKIKKiExu6Zip2iToZO1BiiEHEKiCZziy+
	 oulBToyFD4EraS3sTLa3nuuCGbLxhUYsampUunkFKYCfilZ8fydFnhrk1oq4VtCNs6
	 Mi4tNNb+OnyYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A2DC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 17:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097882280.17199.8357695642472668281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed050c227b1441bf66d020e0940485cd96d6e5b4168945e175b8c84c614ae49
Date: Sun, 14 Jul 2024 17:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720978822
