Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084F93815E2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769685834; cv=none; b=rp0fweeLxFYDevDD9aXB+T4AjzeNjw/E3yknJ//6gTZimyYyfdfw/g/FOtzIdKc++BXhTjwOeidHOqNeeQUMgFgE3BAedKIlrBhafOI5I/PqjZ6TNZiqht0rDN0zKAo8842dAmKvyHGquA23AcrY/SrzuNcAsKU3osWhzVd6pxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769685834; c=relaxed/simple;
	bh=4GTBlu4j5tlGXIjufbMZ6vHZt0zN9r93URAidOg0iqE=;
	h=To:Subject:From:Message-Id:Date; b=R5V5cGvGYrRsYxdXosyNnT4ji2/8e7pBxkAalHlyUrlwAvUV2Oa6RoTQHqlrfOvES8pnFgb3oL2AF9o1jyyggzi+mk4U/RPVel2AwVYRhQ6EQDg9k5vmaMDYNdwiGJNratxmQP5o1T6dkaCqeEUYIInB3y9rLSQ0damGbXzEKxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMQioEm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMQioEm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769685833;
	bh=4GTBlu4j5tlGXIjufbMZ6vHZt0zN9r93URAidOg0iqE=;
	h=To:Subject:From:Date:From;
	b=aMQioEm8LJUqwgFOV70D8YOzynMIvG7GOHJrVc+UyPQzgGWsWWnT20y4BT7pxvnjL
	 jjIKnArrhqfl7mm0qriYZ+yZ6ETk64U40JvXPX6NrtFTRUgylx+kYgkSCNDdSOmZk+
	 yn5qSLV9T/IjDQlC4F1aQeGzrf4pKNJVWu5VOOK4DvSv+I/nErBhQYIj0QH2XlRokB
	 5lIZBacP469EGULkuZvZcpu16TszCQgQpmqckmZxehG1GiPx4v1C7QVJqUGvp2TeDB
	 7nZUWObpEFG/ReeExyNwsFKERaoMKpBVsTBg/MEAvp6IehLJGW6i8EkXpxOvbjCkD0
	 gI5AzMPovD5cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D7D61006
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968583358.20199.18198773336030757302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cc616bc4bb6144630ec45d8a27cf15731e77e8985ea45cb29ee96d1ba7126f
Date: Thu, 29 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769685833
