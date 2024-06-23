Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AE01EB25
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719153143; cv=none; b=A3Kgwj+G4jyL56scxKl3D5jGzloepAJgvFLsHUhr29kZ1W/Pcu4/dacWyI+RGjEdrSqoPtNu2j0Ur4lKugtTdpFZRK3PqZnWy77Hj3JJ7gu05Txg6c25CWsana+iy9K7YFmurcWmfuJU/B9LvOUSLG6VrDUwa2C7PUaKeP2Est4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719153143; c=relaxed/simple;
	bh=CiUqx1B/csS6lPc0x1oGfuyJLSA5lP6Lhdft1si7rfM=;
	h=To:Subject:From:Message-Id:Date; b=HKbIWjBR/15+lTWELWw3dwADSh049S9qqswpEbkAMN9SOHcnufYuToi5v9fLtNbm2sJH8BfuXvhiF9hwcEd1Cy1ygjgwvbtUbUUxX7v7lHO7awsrYyee8YJB8f4sZg4++u7llBNjsC2mzIxVa5zpFV3mEeOqrZsJgsk4qAqeJaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdUykDH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdUykDH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB77DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719153143;
	bh=CiUqx1B/csS6lPc0x1oGfuyJLSA5lP6Lhdft1si7rfM=;
	h=To:Subject:From:Date:From;
	b=DdUykDH1jAsu+HA7G5q3QoROMF3G0szosUT3FxihqeO3JiAApOTBhkCUNaWJjuvRi
	 98Iv2NcnddijJZTI24JNEIpVy+sNRQbWJSDUGTf4eJEKjytwU6HypRZowk8O+eyLzw
	 qn4QrNmHy9G/dv8Av97FdsONmcBeRpin7s6LNraV8TdrXppjFcNtRXqsn4VZ0cVpDw
	 hkoxUC//agwI6RU5Yfht5S8hYBqv9LwDyNMc00IQY9YwNjFPT1VtrzV0LSIciiV4PB
	 jQ/GOcHVSjROi/pWLu7iphTBszUMq4CZip1R+uhO5qAEf0V1YrKjbKUtR00JzurB0m
	 /6/BuHO/piF8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D27F0C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171915314283.23070.11840402600620701191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f265b5a7ad9c77659fac0a06a94ba65d4bbfa5b634d2b0bca9890f65e149da
Date: Sun, 23 Jun 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719153142
