Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389D51CD21C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743530394; cv=none; b=LXoq7P0ZESLO4IglNv4fScTkH+2RB0zrNokVJytLDZehWKRv4g6jYWZ+SMhx8AzyCVbh/+dPlnaXmwzd+Q9k2PHDS7Lj+kMaYTbSc8k/eRgDdQdSIGPbWNwe5vevVMWAP8SE/vLFUw24ERaOhln4yVwEhqVaCrZybvD2vi+EQzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743530394; c=relaxed/simple;
	bh=8ZbLlATrTjLH/78urnei00IYMYJvuSjaDvihMe3SE+s=;
	h=To:Subject:From:Message-Id:Date; b=rIcRhanjQFpSbV72I513Wz8LLo4VDGQYcCRRLfJcU/yzhyqrxkHq/J8Em4tswBHGgDj7hlHN9N0xvvL0zLJykBwKjsQ1/lIJmoWgWsyB3P3EJFLgAVgsA2XIrjnkK7KZjia6nK4qfsF1jX/RThyipgtUEKmR8lsC3oha3wxs8fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XX9i5FZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XX9i5FZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF360C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743530393;
	bh=8ZbLlATrTjLH/78urnei00IYMYJvuSjaDvihMe3SE+s=;
	h=To:Subject:From:Date:From;
	b=XX9i5FZi88AWHfJERmYVGT8k9TjL7G3UQk3XYmoaPp+uJw3BF0evVnq/CLz93FvUq
	 NE7zJlYOgRPkOI3fzsqotvf5FE0H96NMtjD20TpetEWfZwq1uZn040Y/RnZzK8pzk8
	 rw3ZITG4SGgV1Yhe/vOOOzjOAA2QUmYAjvJCO2kGvGb0jy8dyrpiXPu/wf+Yyre/Sg
	 QU6wnhUpHhiqIU3quQ/8ranx4YplPzvb5rQHHVgfUWIn442J2akYjNUJ4eMKCoLTiS
	 GcgTsd13WvBRXbOig4K55+IJVdL4Pqc61XzRLScyC1w+ma3uu5bf18My1oOf+SBedh
	 cJiJsiGFj9oqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D119C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353039359.1503.17574928857213734670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221a403630c26cf532f8f52c6c30b8351dc0c85d23c70c88e8253f6b3d2ae7ff
Date: Tue, 01 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743530393
