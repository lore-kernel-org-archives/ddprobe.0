Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF191DDD7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708986496; cv=none; b=mISWEGDkA1QOsiP9NZ7KjpxoKlcGzuc7TIdwTFgqGvbtQaxJOS00oGauJppgJXbJekASLjicF+5tzGEpeooQ6+DYYfbVvp9pECyVzJ9c2G0sFCVZ2FkMXqx6oomiqYSzOM3EAEeQP3DOqF6J7IzV18C/ZpKCck0lZOviuElzwns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708986496; c=relaxed/simple;
	bh=E6Cx8F24YPIgFNlY/R6fX4AdzVrss8QzcAM9CcIqKSY=;
	h=To:Subject:From:Message-Id:Date; b=sLM6IZIhl0xY/ko9IJi2k+9G4U/nER8wopKmlLf3CY0sW5MyUXJf/uyZvSZtT1R6w3yN+kvjD2rKYxwGefIkRI7kWgdF3harfHiFq/CHEE96yCslI8wkXbvDpXWSfCId1tKmrKiL0+LvZfU5spqwd0X+wFyJY4+ey8oac9K2jiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOHCVpzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOHCVpzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 775C1C433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708986496;
	bh=E6Cx8F24YPIgFNlY/R6fX4AdzVrss8QzcAM9CcIqKSY=;
	h=To:Subject:From:Date:From;
	b=SOHCVpzbhiGMJBr99Hsh3gAdXwgcns7+CTXZHG+wL0+03bPBTnZyy22q7dtK0K77F
	 7LCO8A7HdOyy4T9feQQdCWV/HKUhfEJHgzRAzVw/Fdo0hS/BYPs9hK1/OSqFf6HrvU
	 KrSxmoihHtI86pOaRw8sD0zxkPSHQ7jphfKiLIImbGjhH5YZkKsckgJ2yYAH/73SS9
	 yhZGDOJL9Awv323Cd8H0C9jE1AKXD8sH6hT9XWWbNR6D5OzSOc/bqfXs71qYpJerk4
	 mS1jIclKUQvDOEBFIy+Q9Euz+xtfu3GC3y//BwJJ7atl3djJsAQgYV3C6KwJ0f1qh6
	 zxvt/+n/ZHXEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC3FC48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170898649637.2678.4256257710808825872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb9659f1bf75a1b30aabfc20bae19c99e2c55b9bb7d07d841d3360f37d10830
Date: Mon, 26 Feb 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708986496
