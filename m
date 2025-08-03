Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304A51A23A0
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754199594; cv=none; b=lCZVwZ4TktxlPuEwD3+3+yMY0RKwLjnxkmOJggwtSM736hYEH+mp6tZKICE4bxh1AaNVgY4C5OmWPBQJtZfR6GQPzWaVVXVL35awV8KmZun0m5OEvrSaf8PQtlYyXrvT/J1Lcrw8jiCClvQCXI4Wd1ZfTSW+a76+14LsjZdMHvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754199594; c=relaxed/simple;
	bh=qvV8Q5N/9bnzBLNuM4bXcXnkvb+vBK3mBNkuoFQM8Uk=;
	h=To:Subject:From:Message-Id:Date; b=mMRNnqhu76BT1ofG8MWord2Ai1YrDTZvDW/Bri4IzYLC3YURlZdAasn700m8b4ZEIbNZDGaNCLwqh/cOn/E9iauz3F+F94vvOsxEnUaEl+1nlLxlXhP44q+A5p7raA2UzMf3R+pycnW39uXzEqtM6j8Yf1upQu3314w2ogJBSBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx89IEqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx89IEqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0691C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754199593;
	bh=qvV8Q5N/9bnzBLNuM4bXcXnkvb+vBK3mBNkuoFQM8Uk=;
	h=To:Subject:From:Date:From;
	b=dx89IEqWWH5WPjK5lbnoPADsLZwI3I3K0cn92b/edLpzWwkNbfi/IZFS0MhdR43x1
	 pOkhKpO2ZQIivtoUNx92fxjTxPqaXvuwQFKJ+JIxOsQ/I7uyP4B85OJe9UdzKRH5oR
	 eS9QjHrJQ+OXmHeG5dKFL63nhRh/V96cT406qkYF/J31pwOZ/jLZrwhWlovXs22+OI
	 oii/ksQ0+eNH33nzTMw9SqWlzCQZp4S7RHwRhyTd8CKwyQEy7mmCDOY+SGnQpKlG7K
	 jcOhDKHHY2cO71Mqnpkh6Vj6XwXqI8vIy0KrztiI+vE+w2S+vZpWpvAcw3uKm1lBU2
	 YB9X+RTYiWHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC97C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419959357.4226.11440991712081116781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5e57b9763dbc89826820323c5401905cdbd9518ab00c6baced6b5b75499abf
Date: Sun, 03 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754199593
