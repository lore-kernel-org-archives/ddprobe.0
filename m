Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2787D41C31B
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779817954; cv=none; b=JmkGWvORjylaF19cH1kXwGlQBpfBO0E4qHSUG1mf4pXIC7it/FX7a+OG1kspBx08CGb+Z5nucR6BwqBvO00A9V7svXUbNbbVgXX60JQxUhb8LehW0GPY85vPWRVcAHNAuw2Y0RAwcUrM5Hr0H2Sw9DW3/hTwznnamQGNmxy/sho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779817954; c=relaxed/simple;
	bh=3VyUZ+PLRVjpXvr1HgwTV81iXZuWyEgfHHxYpNhTIeY=;
	h=To:Subject:From:Message-Id:Date; b=aC0uddXGt/CLdlcYcX5fb5nlFfsoxUJEIalT4GheYWsIk0Rjmx8quBzSbqkd/8tfE9h/RWfXjEZUiUVJWWU+h6dXVjXtcX3FGju943bwvZqk45HzmTawDrVQqA8ux24+dD4LyomEnqxXyYeHsBeJkGtDFyxE1MbIT/SvkTRNkU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AucwP22w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AucwP22w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E8FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779817953;
	bh=3VyUZ+PLRVjpXvr1HgwTV81iXZuWyEgfHHxYpNhTIeY=;
	h=To:Subject:From:Date:From;
	b=AucwP22wG9E3J1jmmWE4og2C/mHcU8KYpBSeYbh/TLjHOlP7MvR+X74q7IX+5H4S1
	 UnWv4zmER54IYvpqauXYrkPyluZy2jnZStpm1ZP8wUVZfQi43u2T/PUp7E3TKXHobE
	 /Xctwil8JB1LqxnkhcWsHzB3IKPUgV6lKwFaUr8cvEnlTjQjUy8GQdPUVEFsFgUgtz
	 muWNTB9ZpICHjnOLvErlTMe30aIZr3t8LuGme1RqmYsjYLZMsCVzW5lJljT65vPnmh
	 Sm7H3fOqEpZRd4HfDJt+9yZPtv2MlWZ/Qr3uuydZCo+H9anGTbL3vTnzy4zXtKU8Bg
	 7B0LNZhNOeiwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF33CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981795369.22896.13393920275582361164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c653ea1cd2fc044ca5bab259f9edcb5d1ae79df50a59786d60e53df839c4a1bb
Date: Tue, 26 May 2026 17:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779817953
