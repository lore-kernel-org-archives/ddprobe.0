Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A07418E025
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779510754; cv=none; b=WOhKaenR7JQXog12Kr498D+aqB/ORVoi4OlBtWe/7sgzXuqegH5hCjd3xvArBSKVymExQvsedJTxRoTyzEyxIUKn5QmL26s5TK7IYmUvfaLpQqohDbo5epjCZ3ZpIwjbSrI7l9Pq6v95faGDRSyeX3rYnwIS9cwithPamRP1Eso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779510754; c=relaxed/simple;
	bh=l2+Kb/RqXdAFKHl/6vFqmqW4p2reTSNUyNL16NOIMGs=;
	h=To:Subject:From:Message-Id:Date; b=uXIEHigzoC+ZCehon/TOndcsccOJ7yIPPPppsofLD3vK1fffTNlQx8ikn+wCYZo7nYLM6nIgWJK64OBrNpRlBS4/5CCN4HP/VzFLC6zD0sEt8p0rJttu8/8MAl3r7vpWrIXt+fhNHWTQGb9NxKEJFa0x4Asjk/MdMS57+aDMsrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8W1vxtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8W1vxtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0719C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779510753;
	bh=l2+Kb/RqXdAFKHl/6vFqmqW4p2reTSNUyNL16NOIMGs=;
	h=To:Subject:From:Date:From;
	b=M8W1vxtQ3YSEtbh7WkEvo3hTx9Hel8CZ9AGP9YL0vhjgIV//pbdnPNTvYmwi2VUpZ
	 HPQgq1WOqSXnTFzho6ZY7pr95TsbLvDQ5fN1LyMJa4KkGX1nRNXztHIOo0DacBC1Mg
	 DwumTMeiXOcaYEPKzG2tAaTnFhxUgcvH5wVHGkpJmFfI9FBY7YqpzLCl/suLdIJJTl
	 B0Ni3WQibx0/h2TMZ2KHDSm6vyFRtbR888aCTTqNsCpjLC8hmXnFIYQqElfjaZhec+
	 sziRBTE4KMpgAurvGyVoi7dEj0vQclCFnsQN5hQaX7KWL6D5C3wFrwCgCQ0VKiH7dr
	 OWioHe/DTWnkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBDECD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951075368.8883.2638316798683492535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0619070050d03cd31d666a946542fcde1ce86585497517bef7da01fd62ea8b7
Date: Sat, 23 May 2026 04:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779510753
