Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AA7B67E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787012434; cv=none; b=hIPME7EASAe64M4gBHO6uFo8hj96zHIWsE+avpa97n9mvIxeglSxadVVYfbzZfuQHPXEm5r5Obf24vPJE4O6k7lYaU/iflauHjt4iYZCvIYiGIbTaZ2+3eA921jSUlwqXajj3R+yMSRMWIX0Vh0glAmNDTJNb4yvMWFpwCvA9CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787012434; c=relaxed/simple;
	bh=LzOM9liwmheLxKIi7t4Og0GeqPV7JQt0qoojsGdJgOk=;
	h=To:Subject:From:Message-Id:Date; b=NX7JziU/q6DmwqO1wkP52pgeEkcJ24iftrng1qZA9AaPxZ0tCyhxpV76JGqquj1U+JBVDXnLrhle8Vs3qvYhV4B30Oh42jmB5gNHA4w8+lTmqstPpxvHrh8g/OQMl0UgXqVJy8eZ8foEDfbqul5/ieCz41SEVXxXAtQQjr1hDBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCGbty2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCGbty2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E142FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787012433;
	bh=LzOM9liwmheLxKIi7t4Og0GeqPV7JQt0qoojsGdJgOk=;
	h=To:Subject:From:Date:From;
	b=cCGbty2hpHp7TJl3Ic6R6tXKW5mHCY0W2jCzWS/S5blZvv9ePilpIt08fBOv60raK
	 xexFDEdeorTbthgzLy1P2ekeDV8INh67Nf3B/r74j9Zww+p/R0ZDzOuhLmyYteH7xP
	 7x6RxBFMbdXpV94NGUZ71b3eU0PNYQlXo+4xOjzPeywRUbABrYMrUzRaH822rFaAQT
	 pZM9RFScBO5IqKvYtXTDEfsZV0zK3gd1VJoHKJ2mp33q8rKfkMIinMeuogRpYP9A2T
	 750ZmPuwsnZJJFn3Y1OCOnUBnDcUGzqSLxWpjQy39gtl5f/mvkuxQSVkUPh3pr77mo
	 mz8Wf7WHlcSFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEC1C5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701243372.31010.13634395377434803529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a911e8ab5e643a68e5104d3a6572ff1234d74748ec4828473f7d5baef41272
Date: Tue, 18 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787012433
