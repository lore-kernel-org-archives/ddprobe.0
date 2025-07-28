Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB6654918
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753668594; cv=none; b=B43Wir/J6gYlXGbFIbcrJBCWVK6dEiOTHa9ERqOKRNzv5KGH6BOEDvw202oNCRzxVczxh8RHwhAzahYabzAJoZ/s1gR5AxLc1WByOCsT2xHaxe+v12N9H4DSoHaef0pYYv3+omL3nlC5HmCA/tvOqnpBNGBTp4BBTdeeFQwKAaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753668594; c=relaxed/simple;
	bh=0q1TrjXnOAKH9mZpxQq+aPtcEZ4qLqR0qocxBkgV0v0=;
	h=To:Subject:From:Message-Id:Date; b=Zod9c9Ams/sW6F0TmcZD7FCJJysm8LfJvKHbplovGYDTUKehv2yKOC0ePju4kzOKHw/c/g2UxO/SPntvxJAMvrZrOutuuI4q0EwFuRL+l/6fvVx8mkKkSDTO/BtcDvVLw4NpGspfc3ON3R4HKERTZvkAINB0KlCFajUEVL/ig9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fk3dinKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fk3dinKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0474C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753668593;
	bh=0q1TrjXnOAKH9mZpxQq+aPtcEZ4qLqR0qocxBkgV0v0=;
	h=To:Subject:From:Date:From;
	b=fk3dinKzK3ggA7lpdq3LYfm+onLK7SP06JC8UOva2cHmbfggepeugyoBsyllMYpAe
	 Okxv4ihHdzXaeivkeCuxZNYLI19kt2zL9mOMJQ48ueEPiFWnZLWKjC6vo1A+z/iw3G
	 H0j5/ThyqOEkQc8bdFe/wgSSKvBWaAQ2yjOqFh1xSVgB2YTbbbO3GLjpFKc7Crrlqv
	 9jtmomT4q6srKZtVC6ix4O1ENY6pJeUHRmDpxai77g7DqrNhWjf7k96Bk3iSEE+px0
	 xCHdgTGCDJIQ3niEHn4xTh4Oy9DW0TmWUynBXuxve3C/LNnFF7H+Ip98rZDOZ02LA2
	 w4tx8LD3y0YZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6DC87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175366859357.9251.14977308082678495050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd79b77b3db87467a4b3a3fc96daf52efa0683e99446be24390588f06d6920b2
Date: Mon, 28 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753668593
