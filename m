Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274F21096F
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779553954; cv=none; b=Uqm3pRZRAEaQshntyu7JQctbG5HkXNTtMU43icDO3CUqN+JYdSzA9/bAOO1HhrvJAlz17sUaQir3/gIlz9ycrGW/QLnPK6wb27YzYU0WWVazWo/8EKVotNw+0YzkZFqPE2zS4+a72sOLKygJQJRbu4mo7uiHKlPEnczysrc+jWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779553954; c=relaxed/simple;
	bh=ndAySZC1hsLyvIfolfB2c1jnDBbB3ynWh96qNXm6JY8=;
	h=To:Subject:From:Message-Id:Date; b=RET6xFOTsO3LFK+0Y0AJoL2FnQlKVww9zQnjWRtDWsbOJ13jmzHwZgDeWSxoIK8w5yGl0ALeu8vH8PwKKXtRAy61g7pyiZENfGvyDvV50Nai9gwZuaypmBxktZqxlxynqcQl6WBtV+YoFCFehj175HMvphkGy0+RosVfgHTFqG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mY9lYtj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mY9lYtj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F61C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779553953;
	bh=ndAySZC1hsLyvIfolfB2c1jnDBbB3ynWh96qNXm6JY8=;
	h=To:Subject:From:Date:From;
	b=mY9lYtj+L+SibJXG7Lxnwgsy2xWQHGkyhgMPvQURptrIDfnvUli9NsD+y95C+hgPQ
	 dLmPYlRJmOcLCQh8tnzicl1hKejMY3tGC4D40921nn/EW/GkQcm+EDwXgHMgPuV+9+
	 tqyQqKk5UjcM21Wj4UW6CJq3l4KLjuANxZgweFtDI8ADjdqKE0+WEzTuboPoUzRL7F
	 UHKpBjNV2KJrwOtLHPVSo+5a2m/UQcgsFjEf1GnriA6kW7clCjyz0V4hXV8b630pKX
	 CvE4fnm7iAXfnytMZmrYjKhzroT7QzM9CnJVa2N1kVr4UAbCdFZhmzUOvBTNJXyXw4
	 c+wNzSJjvin5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF96BCD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955395368.31669.10115945803373798239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ce59469e59c8c9765d201e2d7e901609f38f32083b8ec785aa07384e46f2f6
Date: Sat, 23 May 2026 16:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779553953
