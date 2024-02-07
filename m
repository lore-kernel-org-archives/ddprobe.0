Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2E520B37
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707295697; cv=none; b=EC8YQd0xUvMs1oGjxzt28aXm48qCzO/gyxoeewdb7sB6wNyCZDhtOyNWEp5PkrYczFYEZR7J3+jvkvl2Z+wv0lgTD7Nb5UCZ8geUpmJ7VjBk9yNSeeKXADjD2Rz/OsKmUBXEQDq7p4ZkXH8evuTSMzlqLcaZKfA20vUgO5v4HKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707295697; c=relaxed/simple;
	bh=dYcUuPel74aML72rbBCG8zMUa4QsMfL5vvZ6so1STJU=;
	h=To:Subject:From:Message-Id:Date; b=Gl/qRkjmCydOfGH7lbAJLVOhCsIo8mfy51osHxZi1u4C9krk5wJswwOS5GblmTDhPT3lc+HZGSAsd6Ww9cDHP+adOvk42rZu3qYPEudV84G+/pUdShlr35cHA1HRDSLLLV5PXKyVjT4oe0n2YnbRMWlem0r+R3nb9aHsdfRN1Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcIY7nfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcIY7nfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E141C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707295696;
	bh=dYcUuPel74aML72rbBCG8zMUa4QsMfL5vvZ6so1STJU=;
	h=To:Subject:From:Date:From;
	b=ZcIY7nflScrAuehyqaBwrIMKSAFqI2IhI+B5jQeBabh2GphefKmqh8Iz81Q35OB+b
	 P/g+JVIRALU2SQ6CbbUZAYnoHpxY6FqTIPFcMgj4OdSZpxKKSfwwlFivwlsitmfmXY
	 3AG+dgd+hE+rimth3J2tkibJ7D+QjCx3BDHwaHyH7KvtBm571bywNVzQBcrQc9YDsl
	 QpXLVBvzD4Cf8uCAf7CmOtsZzlgKOnvf4V7snPQxRYFaRaSmrswh5MesY01O0HyCW9
	 TyZRC8IeoFvhzQ8zyBpmyhrSs6VxMTpJUFH+QYQe8G4ISxYN7lbuCeS8FBad2W/D9O
	 WzFrlC2iEGsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62012C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170729569639.24823.15757300871795327239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db210890fbadcf061679c22dc1ecb242c4b81e6deb8467a7e36c12d2c49e358d
Date: Wed, 07 Feb 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707295696
