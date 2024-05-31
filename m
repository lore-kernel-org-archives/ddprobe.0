Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAD5158200
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717175663; cv=none; b=t5/2kT1oz5IKXiC/MjuFVdnNiUZcF1TWWvLnQqgeMZg6G4nHdGT9SykB8ZerigEciVB21F1d/s3/BVjvr2MPwBtLfLe67KqnmuMS8sV97hwvI5Jo1yNfA3c/pAuMT6/0CrX4zXlemqBxqS2FCXAN+pnO8V78AJC9sC30Wtp5h1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717175663; c=relaxed/simple;
	bh=J4Cmt5ZQz//96P5/guHK3U+wPyc5lhetbbscuqNsRsc=;
	h=To:Subject:From:Message-Id:Date; b=IDfp2eqn0F98MbnrQE+bZIFbTP4pXCuTWf/nWDRGY9Dd7u0r1brqwjiVK/7sbzaDKPwTSUEwWetqjxrXH9vtU2q61ksMpo5K4bvs720h/QTgSqlRP6UTCMyZg8sBfqmqNYKNsbjNOPynB1PDnNK+Mry6EVc5ZdwbZvXfKWTBA3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP134J4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP134J4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF77C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717175662;
	bh=J4Cmt5ZQz//96P5/guHK3U+wPyc5lhetbbscuqNsRsc=;
	h=To:Subject:From:Date:From;
	b=SP134J4lZ6Y6FBKB2n/nQFltQUWBZmFeFfZiXAbF8vPtJYTXB7jjnj6Mf/U48I0dZ
	 Uo4OHbrC8qGJnE3MnjW0+r4B+eCG8IWQ7seF8vrwS9WgMhkr/smwd2/MgE4otKQqUf
	 hKM25HUIIowmVWB2cJyZZEtTn6359FOWs5X7OLnKzMTN0IwWuXr9QAxavutwdByqGX
	 l1uVOUpedDE3ehxxbakr6tMfUoQQDkeoxki0qkVjiF/1CK2xxbe0cZP55Mvcz5mGwX
	 4PoMKHUaTs87rMDGmLR8lqknY7N3aa4nd9OCa0fmXjx0l1BleH8pMOiD7QRMS9RnLU
	 BD4CsUzbfkc+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCCCC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717566277.14719.3823452413754035363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4327fb4d444a33fedaf6063652a2f3abf422378b0eea3945b25780cce7733b14
Date: Fri, 31 May 2024 17:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717175662
