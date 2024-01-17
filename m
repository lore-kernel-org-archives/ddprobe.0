Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B491C0F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705468697; cv=none; b=C83p9H6mMZfNgmJ0IN47/7cjFFbW623MYXdE1YDVQpZtZGIuPTtWq4nFKWK6nk1Y2AlmpD0XrqAVH9ALNFF0wv5vBg/H/FPmbKgVFHLgupIW6Othiu8KInXcPN6rRWoEhRdzU0Fjuwdce+aZph0chmO+CjlSDvYABPuiEgYSTX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705468697; c=relaxed/simple;
	bh=BOJK/dbQ/qSMBARZKFQ7c7cOCQnPLtm/+pdRPLt/fYM=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=bLuX/rJ3fnjR3nR9ZBEtFeCxqVtVKdyw0xy1ffclW1Je2TC7xXwBEINjMP7EOU8McaEwWYwk2rgP27YKa3fGWHzIgxgz/feuQQyIwPV50Az5VaSlBI/5sjcn7Fhw7AVKVo6RrOgqos8NsF1B22MV/ArvWnLyJ0ZXjfDOY3uXOnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsceuffQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsceuffQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E805C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705468696;
	bh=BOJK/dbQ/qSMBARZKFQ7c7cOCQnPLtm/+pdRPLt/fYM=;
	h=To:Subject:From:Date:From;
	b=jsceuffQt4j+FFKUq917sEyRPH2j3O14sK71yiiH7jV6XmNpctNHNv4A53iriwrZi
	 c9oTGdS8dLN9+8QGAw6Qu44AwPYXb3VdrHRWkKx9XBzoAN3v6c735vj0aKeVXBk6y9
	 UZUJjaJf5sN97EtcM5Mc9UhM8lkrnhcAm9vETtfmbEKgn6Rocz5mJINrQzZPIpcPW6
	 tD94lHLQjKBO06r0kPhqW061B8wehEIk7ZSzi6i6d9mG39yzxrdx4MOFiqdmNIafvT
	 gnHWswzwcErPWvMlJf7VairPWqQRYwP6ETTFbZBBdeMv0Q4oJPj85S9ari9kkZJJ6Q
	 QyeP+Q/9gF6qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F1CEC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170546869637.6335.4261377877390826336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db8a12e27e8560e693cf628befc72751c7e9d989d0e8ce545ebd5e70e825017
Date: Wed, 17 Jan 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705468696
