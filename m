Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3488414A4CC
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775442334; cv=none; b=lxTj6w45sFAaFVR9MjAloer2h97LzilVhk0zxorcN3DNltWtMw/BSGH0fc3TOaMJILE18GKJFGzdufpOrxUUHRuC3lLonzpKTzc5+SADp0roiymLiJoCErgOGZfEiDTVSV5UevzNVSDuMFqdmpvFO+wGap4TMhzGZgdyL+u5dRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775442334; c=relaxed/simple;
	bh=HHe9jvBbIBaI7KgOfuu+vlbOnmeD7WKJiz8u0N1+Z6o=;
	h=To:Subject:From:Message-Id:Date; b=pKiUcrPS3qacZF4YgJObmnGFkHlhdwnRihyQjIj5GugwHXZUeJ8Os18/jW1/VR70v/WO81BmMvqGZFkpf8X7E6Y9Bz8JffU0f+ePouON2RQ1GLO4EcJjxftlXtZQJSMjcNg4Uyn6dNMZlQB0bjW9b5LGTWzNbRvFBzSSoaMhGgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfkIe0jX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfkIe0jX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1B1C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775442333;
	bh=HHe9jvBbIBaI7KgOfuu+vlbOnmeD7WKJiz8u0N1+Z6o=;
	h=To:Subject:From:Date:From;
	b=LfkIe0jXNSvVF4SlsxcdbSX15a2XBJVMr3TQhMFDxwY6IxnUr34FHZ+TWcH0jL/Uu
	 iBKVVzni3nssieAlM6JHaVcVtey80c8LsOTqrrBMZI0mSs3qhWXgvOXaFjjOWdjpp+
	 5cz4kMpF9MVkLBhrI8NSZ5Z12u756qKiSvdhVH+ogI6Ba0ufKIssJjJbH1AxuLKfYu
	 vaiNmgkzl/S8C4rNvDptaiG2pQB9o5RaZhar79L/4sIEM8fZdKJfJU0xo1aAEE2nds
	 YlO94YW7zzgk23xufikrFKpv+458fooB0ESTj6JSWd27+diVhFeqmUoIRJihHfRaas
	 WF232rqNFcFYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA01E9D82F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544233372.17929.2928640548730358463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4547c7675b7463849b1160964c57834cfbca37a98a854a7f58b1164e4bfbde39
Date: Mon, 06 Apr 2026 02:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775442333
