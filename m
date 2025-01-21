Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183161F5413
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737500754; cv=none; b=f9G+QcmMSsHD0PJDqJ2N48QNhHZ5FnM6tVfyGle5PsYDs4cZBBc1SMvWB4NMIAaC5gij0G8NxQvrRPVCV1X15OIZLhRwpTURnEHzceMqPLgUjviqCeF8uJcD67790SOvOAu5P7N42ezS66h/lT8NtEHfIfOAcjkv5ejgwi8Iniw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737500754; c=relaxed/simple;
	bh=5Gs6jR0wH5532xGDsrbYHAeUkH3yV+cQo5NHXx/aQF0=;
	h=To:Subject:From:Message-Id:Date; b=fh5O+q0xjTbNLK3RJwDqqe5Gn7O1Cb46Zlgpl1EDGHGp3BByn7+RdvEVPK5sDp5SSb/Ox/G5b/A8pAApVWgOZUrgKP9+fLoblyQZq7fFqTs+t5D5sOojm5xD78kHz9O97KbL0np4KXr+YzXnxLDFncseZ+/1gKEFJi3mVQiE/Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIunHeA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIunHeA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135FC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737500753;
	bh=5Gs6jR0wH5532xGDsrbYHAeUkH3yV+cQo5NHXx/aQF0=;
	h=To:Subject:From:Date:From;
	b=eIunHeA/Mkv/efg+3KOD1yBr9U6LDSd4y0Nmb9q7xORNJu0d4/z2g6nQn8RVeu/mR
	 FjAzOwCTYIvX1pvmt1bwW8hxnCJ1dtzwqpbGV/IabeY0JAdwWNl47+6cgy39cyO63v
	 3uzzpEo39+EG/QSjvVfE07LKNs5ILLjzXkat7HkvWHCQzD9nOtt2TIaBtiNC59MudW
	 cB273lFi78Qa7CmOnS3upvTOeFh3rRxIUvDWfqst6y85rjuSLwtDe0v0jg8Z/FNtv6
	 +8i7OU9L1Ay/s8nQS0jS1q1zDrsvsKsxFNna2K54a9RU7Pmz2HbZ8NxHccsjb107z3
	 iTWHyp93Bf1Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F5C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750075358.24066.11735960541449084795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29787fad476aba9d8413e94fa2844cba96d5146fcd736fbd5397631aab2eb3c
Date: Tue, 21 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737500753
