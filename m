Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E68AFBF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745813995; cv=none; b=A4P6QfdWnLwmozMLxyE5cn43hoOa3W0HPxg6wzlILAhzfcakfMl/xZZTDzT9p+wdaNfmkWVAu0c+niW8LU9Hh/RBrlpW2gJ419r+mesSEPub3GS2I48udefUTtdYjuvdRRLnnN7/O16EMWwIZKK5GiziDjIOABHgUtguK5dRWRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745813995; c=relaxed/simple;
	bh=HA4j8OYyklu0Quh1RrdX7A5ENybFdOoi6GyOqaCnlKo=;
	h=To:Subject:From:Message-Id:Date; b=O0wHe5F+cgecRhiu7H7xyoUSvcq04EldRzHklt+MkIb1TjCKeWC5llucaMdnQbeVJo1aI8wbXExGpgfHTSQUanOyDGmAe8dxFxhLhnItDs+vibJ0EBQVZu2My851uPuf6YHvxQnTMUKKBdg393pULKE4Kp54uppMisUgEAl7BZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRNyN/T8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRNyN/T8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7566C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745813993;
	bh=HA4j8OYyklu0Quh1RrdX7A5ENybFdOoi6GyOqaCnlKo=;
	h=To:Subject:From:Date:From;
	b=hRNyN/T87dYji+FWXzjUM3ldETHjgO9P8edYAVQ4bxCLaMlvFDMBKNw33m5KnOsqS
	 0S9wgaRY77/e5ZU3IxA6NU80NXmE9zDii4L4z1XNIeSUIoUmrGx0Xjkanj4Y7XJkWF
	 U7sCNnOftsQ9HcGOZE1F3HjXpMootPxhVeicnt33QYH8moAYGyUTgnLzt0ZDdU+GHp
	 MjyL1LA34sWNFeZMp+w0ND10IXSCp4DWh8l0Y7lLfJbf0yo+z3Us29OELYW9Hc+r/k
	 JEjChvNBWzlDpGAirSLiDMMfNu1E6p8P4qTX2L97+SZl14Cel1NZVPx/g+GulV7o5F
	 1XotJgFfTIetg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E7C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581399358.21063.16670227614058355601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c980b04fef861295b20705f2a4fb31e14ce9da600cc1c94c813e8149904eebca
Date: Mon, 28 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745813993
