Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A0964C
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722735954; cv=none; b=qP8owgPwbuHmJjUDxX7pykbleZDtJBv8D4tArpOCuuESdw5eah6Ppyt1bE4AK8WajE6Prey2g8lvH7b6wHAFHr7b72ZlLNvd2Puqk7tLVOUQgwEalfvIRhSYvhxjnKT5vhIaVBVi9K6WvRFFneN+pTFHx0PmOQ5zq4RJjW1TXhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722735954; c=relaxed/simple;
	bh=p6QS2EDRcP91cShSZahLy62ZVG5dqvAHhVNY1WzY6Ck=;
	h=To:Subject:From:Message-Id:Date; b=QvzVaS0QK/jIDg35hult9MmyFEc6hFJyhrFEK/8ehoPtZAzs8mRPLffIHXOU1ApZT84zZyKyUORI5LAyrPpX+e1NbaH7dKHn7UBrA6fY0vp47rQjdDYLviVRVs0mqQ+zMXYKtwYqDh+F4kRGRsw3OxCa4pPLZ8Dkx3MJqCZgRjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fp3n+ARr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fp3n+ARr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25D6C116B1
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722735953;
	bh=p6QS2EDRcP91cShSZahLy62ZVG5dqvAHhVNY1WzY6Ck=;
	h=To:Subject:From:Date:From;
	b=fp3n+ARrNq/bEzjcssNHHTRHrKdaDl0zsjO68g12xpBkYExMoVBqUyBhuivCsW9+K
	 1+VYykGRJ57UjzXDSTT1EH2LmIrk99ZHP3PEMNeXUGibqPLAqvesHeqw6NbyMEEvYa
	 KULASGU+jh7upXkeLMW4tkDaLJyCZCn8EiebN46hmNlD5FBB+34UG37GY3O2lU2f0j
	 69kO1QPYiGhrXaLu2ZqUviEsO3qIaTktb6uwrQckXCIKpKv8NNWxOi7/66m3shs70C
	 GTnztMZdj9MSRDSpVEMqJ2UAfxJ7odm5XqOQudvPEUq2CG19oPo5q7tpCB1TtRUuO2
	 j4IWijIW1kR7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974EDC49EA1
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172273595360.18246.17179762588321085359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78737bda5dde0399f241d745dc5f166900e19a8348c9c28f4b3c4fe55887afc
Date: Sun, 04 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722735953
