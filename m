Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF2A1E1A35
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737757554; cv=none; b=V2JafB4OwIODP02cW7cj3CA2E24Hv4EqeIrrNTkXOsaJjajB26NqG3z0q5Q0Ai2HmxSAhaK8zziq5Mg4L6WD9rQsjdibUkA2GPz+mHc7/Cqeez1JgeStJlKMFzMR4VqhUwWjqZjGxHqt99gyRAdu1er4FApbc7R5E7hDlaUALps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737757554; c=relaxed/simple;
	bh=o5cwOAP3uT8W4+Zpgej93FCd1Eo8ce6P/A2ztfQdBj0=;
	h=To:Subject:From:Message-Id:Date; b=foO7Ns37ktUgIbcI/VDryMTj1WEwKNseFi1F7iaEUq+0DcBoeRWuvRkVFbej5ejmuXXAR/0Mfx7rNx4mhobY2kECZU7aNemiRa97gr/58Dq7uSI5dkSc4XsKrDZK94ispnuL+GqzUAbw7EBNMGhKLPpG2RvZ/K74ySq4EgO4ERk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzT25zon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzT25zon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59ADC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737757553;
	bh=o5cwOAP3uT8W4+Zpgej93FCd1Eo8ce6P/A2ztfQdBj0=;
	h=To:Subject:From:Date:From;
	b=WzT25zonrb6e+B8dg9wBx24/R0wf2NXwc95fkUzN3gFgrZ8f5zCV+UGZB+/rONcR6
	 8lYXCxGIXmek57+aknRrh36D8LdTAhCqvnYe5RhaJYIObS+03ytZSGtvHfE2LKvQnZ
	 JQXxHiva3wvPUA4NpRKkq1tGDQNyrRQqu6yY6wJFZjbvy7MwfP9Bj9JOMQHETfn2VL
	 Gz4zVx3/5sAKC4lojMdKgvCwtV2TMtUUwNL85fcdrqzLc81Hce+zcjI0GzdbsnpUgJ
	 rZ6Dmk0SCLnlGJ3Wx3UsKHXzwm+fWwwzrcdClL5TTw58WmEl6AL4I0f94lbzUAJdM7
	 9DWndEN3k9ImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F32C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775755361.13399.1099385892873797940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4326fb5e2582d0ad6f1e84190f077175b15adb8bfc2b3680eab1491bb2375b6b
Date: Fri, 24 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737757553
