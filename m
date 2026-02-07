Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E241DF723
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461034; cv=none; b=Gq6SF9rOoYkdW5ELE/+Ue6i/tpTyfC5sDQIa5niCcuqR0LjYTpgNlWidVkYSW24BhJ/1rYoaGFfXRSwDwoQB9PJl9HWIjNwFg7xDiHXPFbxHfk8NdId4LeZLpnwP185TBLuIUKJh3EZpQFHoR+bCHdOKHiKasL9AiNKo6EbFjGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461034; c=relaxed/simple;
	bh=iM0SZ9Ysd5oDc7w/Pd9x9bIN9LNH12dZHcsDhQ1csSE=;
	h=To:Subject:From:Message-Id:Date; b=jILeukjllh41Hulu7DDvc3uzNp0v4b5D6GYE2hQ7X6rdoKyRQdZ8tdGNVX+SrEj6gE6siVsmMxmAdsOvo6TPGICRmZCMqKoUzpr4x25yZu0Op9+xawA7kTvy/0gq4Vk965eveCjXBgcJezCURji/Spy0X8Q7FLGImLMhKdDcjCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jj6Okyqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jj6Okyqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF305C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461033;
	bh=iM0SZ9Ysd5oDc7w/Pd9x9bIN9LNH12dZHcsDhQ1csSE=;
	h=To:Subject:From:Date:From;
	b=jj6OkyqifMk8dBWHVvU3rBXj1Wa3dXR0OXLClBERJ0p4kvBP9QJQnC7O6rzmoDceP
	 fKhHHYnhNhFLAUWYjv4qvtk1hsgm0RjjXQ0wYzLenYUDoilhK+GB6REQWdKjngtosN
	 bqw8pD2njpRFgMJLBNDHc4YYRQxwWd3abx9/4Ud7/opvChpLUQuymvNab1XES1Z9pq
	 r810G2izwKnOw6B2BIB7/nKVBat2X08Ioapzh55Mgi6D1dPswgOr+QHlLAYoBw+Vfb
	 mfEe7ohoy9vzMbmITlaF5AaFIO9cMf+tHgxT3HqPrLggIDvVfUtkv5B4dpRtSy9rbX
	 dmVat0PZWfIkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9850EEE0AC8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046103358.9565.8865939851394580329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c4be63485f6baf9568ae935e2bdf443379cc4c27ce6885111f5a7d847d3abd
Date: Sat, 07 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770461033
