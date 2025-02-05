Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9F021C16F
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738740354; cv=none; b=C6I3Ah+VqqAF+DxrUrmOW/Do4RtegJIrx1MhgS0SWxgS0sx79tKwkxrtWOTNoj0l350vw3LDNp417ymITeSCB/8P2Mq3Fdbx2vPKW7y9980ei2wV/aOTbv8lN5qv49TBRYfjmaQA7tBIusyixjXn5Oo95LSxV4ypjgSzxaVWVj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738740354; c=relaxed/simple;
	bh=HuYItLe0aACJOFV4icaTzEneR4mudYxRDyHQOm/4MnQ=;
	h=To:Subject:From:Message-Id:Date; b=HECWl7OZrwFEnsXID+qei0VYVkMXj3PD0BpdMt7dnjEPPU8kn0JqWJ+riBJd1/kUz0jZlppqBK6ePY1c0YCVt8OYONoBTUxctIw1mNqH1e5Rz+Ae6MvhRMZJO8+MXDnvH8W2wQghWhLqEro9TpFRkfKFXIKk0RfmEw1DhK9hlxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSHzMUJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSHzMUJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06D2C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738740353;
	bh=HuYItLe0aACJOFV4icaTzEneR4mudYxRDyHQOm/4MnQ=;
	h=To:Subject:From:Date:From;
	b=jSHzMUJjeVS1QNS7os6u9kuq5x2LF0cQgV06nRAp9sv1laW2/WYVcGQFkgwwFi7cs
	 3I0eqtFdU1qyjv5qyks9R634UaEg5UL4idR0DKKXJJF4ivAmvBrf2IJhHkAZekD/GD
	 gUT79q+3UScnzkaL7SOnU73UpmPByIu7oXscEE8/C1o2gCsRh4n1NWJCo5AqtcactW
	 KH90xj6lHepM1ZA2hh5ERxRf5kFloyES37dQQsliqHNZ5GlZ4V3lR3iUZPVzBCDI6h
	 oJy3YEJ/lB9ZRBM7n0fuHWnzHbrzZnw1E9AiqazUBiVOSNnWujbA1yD8mUb5WHAyTD
	 cY82uzEBKLxJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98581C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173874035361.12615.13234956310711234814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a127fb988dd83562615a169bbe76de9ec091edd5d1d88dcf949a35743a13cc1
Date: Wed, 05 Feb 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738740353
