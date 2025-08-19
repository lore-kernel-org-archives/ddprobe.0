Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E55F2E2295
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755626994; cv=none; b=aUpd/OOB2JBqs+sV9/3hv6tiPLBnyJeip7YsUaN1LKi0SOjsldyFAxCAtDg1iznSb3RvvmUvux899E7xNVB/WlYswYGxSSH4BXsnuuxlltAeGCSAX6+HkyO8G8lxyB3KXql9vYHy/MigpsFrzm4QHAw+3j2a3/qNRC2p0abqtjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755626994; c=relaxed/simple;
	bh=JVT7vFZfNV16chlubO+yaJ69Ih7Ev5+7xu3FiXlGNmg=;
	h=To:Subject:From:Message-Id:Date; b=XvjKAh02+k44yQhdvhMqTMH3cib+d/DHDlz0lYLlZEnwPaUljZ+v4xnDJwXrsXapvAsC5ySr5lDJhkhXXV0NtlNXUiuVOR/3qOXMeUBCCITP8AtIXBc8j7J2g+OCPt0u7Mhbve1EGVv2g19lMyzBRerAfeTXGqqwLHWcNDwVPks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgFUWOJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgFUWOJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755626993;
	bh=JVT7vFZfNV16chlubO+yaJ69Ih7Ev5+7xu3FiXlGNmg=;
	h=To:Subject:From:Date:From;
	b=pgFUWOJqu+/tL9ZKORWTwG+3vxQ8SZPtXqxKWGcZZCtvX9dawdycxJTahhZGh/vax
	 VU6rlAsuRWw9p0QGbvXTYByPKDq0tdOtVGPLRrQNdd1KxicIRMH9pPNdQbwdl1UfWU
	 vnsxzJbPVu08cUSUQ4527DJTI0RQinMXyCNXocWvO/18VORXQnmlo/oo6m8l+yBSgx
	 wFxl0BRI//pLGXGv2Q+V9kKcz7dnDGU8cqzdKgdDaLeJdIgSOwpKJLVLr5rFKqr3la
	 aOML5mRXnyKCqhy/YU+wwD3HVBoTnr24JgiP1JO7OAhyTtwYlzjkp3Oba/cRrhvMaC
	 di7qjC8wOeS+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F186CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562699357.746.7771921506845323559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aebd1319f73832a9cffcc63c1ae421f7e675462ac7550096f3f437b64f8f496b
Date: Tue, 19 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755626993
