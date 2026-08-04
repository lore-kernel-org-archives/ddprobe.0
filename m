Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6D13FA5D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785814234; cv=none; b=HQK+RUb1L0KOeg2/h7wGgi4+nEVYhFSJT7huNEhWm/Ey31xrciuR6bbWsFR+AFmJi+BYrwiqaN1BsHsnAZ7/uE4whr6aPZTyaGUWbDOUGjBY9od6SBwzybngP4GewGjiUgoWwpRb8pvVpJOEPoXFEmz8+LzGPc/uoiayeb0OOS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785814234; c=relaxed/simple;
	bh=z3W0osczx8fcmGXwpQpS7GZhM+D6L79myvy4PuNLu9M=;
	h=To:Subject:From:Message-Id:Date; b=e44P0x1AG6TJqgxPmNpLHwhekhHJEA+dl2CGquWjPFSyUe+s2/Ff3/rNU6Migmbmd9A9qplxUmeHEe3aup7rE5oUyWzUBed/Gk/PFHFHXMkSBZeiNQW+CXJZzkS9T5IzN6hXurFb2Pfm7ImTJgpsc+swphbwYDVoSn6dn4vj9lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjapEeY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjapEeY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28AFC2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785814233;
	bh=z3W0osczx8fcmGXwpQpS7GZhM+D6L79myvy4PuNLu9M=;
	h=To:Subject:From:Date:From;
	b=rjapEeY8tKoDDMZqCsyYxu13dpA9MbgVQdTU62/hw9HxCQ+JUs/wsKjnRIkwbzdtl
	 iSAy/1eHnir0zqvyz3EKbu/kI87QK0l3FlSOtuqDwTQpPcXm4p/dr57AZscEtVb0F0
	 cvkq75vco4vh5fMLfyC8hD9CzwCdCxUa13HvlmpwsikuH7FfPUTDi9Tr5pEjAVmeXQ
	 SY60/C9Royry6T7m5LKOlIkg7Y8DYnu/x8iyh7O/9ic1FXn51wS/+A2Tr6tLKINdr9
	 C+MmPMIHCdNdPBNE9Fa/4Cjx/t+V1OAQ4Aq5HailzVY1dUG7HPn0fBw61gJ6MgESZK
	 OTNRnNxW+yapw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE845C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581423370.9692.4437574957231543787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44490d75491acb6560d79170536e0f135a660b0653a85b8d18a5e874b71f5747
Date: Tue, 04 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785814233
