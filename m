Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D046533262C
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773012293; cv=none; b=SkckLeuOmR5s1l788xMGVVuwEFde2MRE9KPBrGgryJ7hkn6x2ixUndJeOR9zoSjz3O1xhA069HtJ6/5vk/JqzCwYHDUjlOrRMwcOdNh5OQVZC6wUvqWXY/HVjjm4+a0MdiNvNqbrNqBammA8wp8qJltMRkmtG6F38m451LJQtFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773012293; c=relaxed/simple;
	bh=E/dqrkjvj7tZIF7ndPazQLoiIMAncJbKeew19cri7KI=;
	h=To:Subject:From:Message-Id:Date; b=IP2TMRICHQbz421iYCckMEkzL8Ojer3jzC1blHhfadtfYRpQUR1DYnZicFWswMX4b7FwvRx+E6bmoqEUKc/yP79efPheN5s/5JG/hja52eQ/Z8haOIF8J9qncjpEHsiOHkyUxpgxUyLW+PFqCvSC7mcWMsebjlP1YudA+VG7mn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2+/LoNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2+/LoNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DA7C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773012293;
	bh=E/dqrkjvj7tZIF7ndPazQLoiIMAncJbKeew19cri7KI=;
	h=To:Subject:From:Date:From;
	b=n2+/LoNyD40pa1ifDsrXfc3v6Gqvf0s5kEu69GGY1IpwMeKY/9NQz1Fq+UB3bJq3e
	 lFydsHNIMhERHvhfL/KRU0Pfes3UoQ944S63ClYFUKaC7EyFIlGQFvpI1BXDD/k9Q+
	 OXUurUtrRycZ7CAGWGx7av2YlEfHRGhCbNX9k4GQYLCtPDfMJFZZ7wSX7UJM8N1ICb
	 3ytUM+vm8vcUJygv/6sqX9BcSKeo5V1IGBk49gxV9umvHBZiqzTTjyZQxV9x33HHv2
	 WmvrTZX4qEqJ+zaghmR7zEOrNIsgSlULsoI9RKvGvuibJ10NjYsFLWV6GkO8nvGhrO
	 C2n6WhFm1ODpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D5C9EA8549
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301229362.11029.4174575965740345412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6273cf58997a4313ddb5ebfe4afe010cb5f213340e6d828d9cc95cc345e737d
Date: Sun, 08 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773012293
