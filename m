Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A41526F2BE
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756510194; cv=none; b=QYSRLLgVv07D5vh2ZNIvSY6+vB+9Soulrr0OhVhJRPVlrGSjxmvqqse/Kd9cc8OIbtIiOJyzFmFa735f4ZD0/x8si7qff0skHwNoHWRUKVj9+bc+3zWvq9x9f/bWl8bFdmuUCnI+iv4iyoKx/BveZPkp0/jvfFwOkenbKG5Q5OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756510194; c=relaxed/simple;
	bh=DpJGz3LydA+3lBuQES9wN4Cv4+cZeEtO9Mo4Qv6NeP0=;
	h=To:Subject:From:Message-Id:Date; b=GYv6LBDTPXjXenF9h2Q42DQFaUoF8SMoGlN1LGKt0tGqmZuKO/RPOhWo6C4e3UfIr4zMA6UPNB+TUN3wy50W7ZSVJS9bFqWKmDDMpY8AjKFZh8ihh50Lp30bPFVl9LO19tdrH1jVwoeS/sXry7Qi103IjNW+WUkU0hOJ8DzS7Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYXktklo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYXktklo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9188C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756510193;
	bh=DpJGz3LydA+3lBuQES9wN4Cv4+cZeEtO9Mo4Qv6NeP0=;
	h=To:Subject:From:Date:From;
	b=lYXktkloq4Bi6L/QxjDl8QZ59gEtmrz+A0li2LVQTeN2+bcjASUuVy8WHZGec9i0g
	 ho6/tS0uTjRbsGxT3vWZ5+8KeLOl48xrQexNkynXX62QhgvnmL0JB68WFjTyLqEH+G
	 F94W9nyTTlsgOYmn4+w0NSLgvLtoCrHaS26wluz8rnwj3jOg74SA9Ex6Z+juyGd94M
	 EVJ+bhlpREBQT49tmH/WMQ8eyW2upSMaO92pmT97zuyJHAzGUw/S78IRilzOHe9obj
	 0SV7f/z7RgHiprtlMeisrshc29dHElHMp9qtK+m6K4Wx6vLW+OPDqIfBg2e857Zmnp
	 fQzkpzFZcCOWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95139CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651019357.29675.6155823102636796468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6dff017f373d033a992fd7ef75818f19acd846a5530058bb7b24fc9ec0fd5a0
Date: Fri, 29 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756510193
