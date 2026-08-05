Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FD03064A9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785888634; cv=none; b=FAXo4tB4uHPDCAny0Ae1LwiiyGexeQQPsIhgURBYqkdjFatkZy2w/ixcWcFEOvAFC3jVdoIVvkhkqoBWt/4MegKOLuvJ/ozQv9lHJiuB5JiGbgEBElgY+OCLYzvjQ0A+lI3U6pCQYIo77+wKUsZ+bTDiL+LAgSxu1B8RmqwwRY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785888634; c=relaxed/simple;
	bh=SQNS6dxwfvViI5GYNFuJeY46MjSUg/hJGH1HkKZ4i1s=;
	h=To:Subject:From:Message-Id:Date; b=tOkBaByfIXFgJyIh4x2nENU/fT+NdxAbNRnxqiKTAZrI/8yZwnboJKqYWd0mfHwhV9NVceH1J3ygr9yeJk9lD8ZBxFRV1v87funl6qvwi5pVKl7QSwKUDkmwKR1AOWx3y0UnH8j9dnYmiHVWcQbyOR5mSDGxfVv96/2qbdIsO1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJ/H4D/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJ/H4D/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0265C2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785888633;
	bh=SQNS6dxwfvViI5GYNFuJeY46MjSUg/hJGH1HkKZ4i1s=;
	h=To:Subject:From:Date:From;
	b=WJ/H4D/jj0EfZM+rPL+xHOcqJ1YELNA40i7ztjXtrWKBAfs6MAV1eUyjbY1oo5OUb
	 R2icywtnXx5TYdej6nQoGZSr6V9SKEm5/2RLdLzruRKJcUaBQwE3KNj0jytm/7CzOt
	 9qlSdafnqMAF7mT94nIwcBrhag8FdDBQwkLw7IHMiBXKJjUSwF5GjtPSvzr1Qs7e6c
	 /h+BHljxzi3cZNdzSZ8UOzHfwniOf3TaCDbiEHvMaDtgyqu2nEfVSXjX6Sf7jZNRpg
	 CY9b/ii0G8ML7A1lesoN2uCBNYs9RLcxzBrypTCQh/l61cLx+Vd00Zcx79jJuXDjp1
	 gNYm+vN/11DZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD24DC55184
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588863368.30098.3252281934129379962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11a485e02b654ae90a48a0fcd611c5d3105139270472948f78017411929d40a
Date: Wed, 05 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785888633
