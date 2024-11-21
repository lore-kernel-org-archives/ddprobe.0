Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456262309B6
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732161954; cv=none; b=V3GeMZSkjPR1fURV+ScLAW7+6aj2eNTgg4Pv70PGp/rZo1+JU7VDJ8PUbPmKv/ewB8mo3+D+QhOAjnpqYsjNYXa7VPZCe/Tpksh2RuICYtgbjUGTmAICJyC7KljUaq1iYfacLgvBV/MwEXz31w3NiKZqU+W1X0rUCCEk+B2Ivh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732161954; c=relaxed/simple;
	bh=7Wntptvd2gtzkS5o5dzM0pJn01Xb8tM2FO3+ueJ/Aoc=;
	h=To:Subject:From:Message-Id:Date; b=ai3WxaXuzWlcxbNswjptn0zrsdOvvGfxOnq6bJHzFRGsl4o9vPeWlXF0k1AFc0YyfnoP81lJ5OV72FrCxVOrLfmOkzbFebO+HR3GFlPkWOKCKZSKGXCEIQiO4cXJoVSXUzgBxe9QjZ64jGJ5X0d4HBWNw2Ty7dZ0jkX5OcyF2fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7CdZ+oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7CdZ+oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3590C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732161953;
	bh=7Wntptvd2gtzkS5o5dzM0pJn01Xb8tM2FO3+ueJ/Aoc=;
	h=To:Subject:From:Date:From;
	b=P7CdZ+oysYfiI4pQrTFodcClweyhIbLv10spiD/BjQSbnC9GatD/V3Y8mJNOs+MeT
	 imepOdCiUgi1hljZa8ki4OWAt285E2izfXfZYLSf1YgOmDD9brEbKbYvftURWgxG9K
	 4JFW1z8QbC8Z7DNFktHJDe55hfyxRu6DkpK9Vr3BO7ByuGbiya1/+M/ofQiqDJ51jr
	 saY4gkQX8qZ+8tk3fOR1J219ZKmD9rdLerK6Yoa7voQ7Xem/54enEzJLS09A8lCiG6
	 Fzm1jgBCQ6o5r0QXJUQ4LzCuKrMSiw3tmPqsusj/I7AzF4RNx57iHLO3KE45TjP//o
	 Sw/93kTpvPNdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9940CD75BA7
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173216195361.19263.8066835446802051787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7984eb6213b15d824f2a7b5d5ecde871da484ecfd817cdd806ec1d3274fc30
Date: Thu, 21 Nov 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732161953
