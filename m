Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74428348C6E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785209434; cv=none; b=cP1jmWdQ8fAwGyZOogMyQJKUkUE6ALEFDVpbIhZvWgI4Gp/RTujE/kw4lraC/upTZDbsmdAfxO8wQO1yS2eHbR3wWiyWPC+c3caAtuvf6u/4MjhRrwRe5FI85t2HLfyddYqvcNhjyTYS00NbovzMuNoeSgmB3jEicqq0W5wNgS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785209434; c=relaxed/simple;
	bh=2QyJPtNu7sIRzVGI5q4mA2GqoUFDshPQO4QyPHhaSwU=;
	h=To:Subject:From:Message-Id:Date; b=MIgIQIXSZn5SoXzdkGkuWppDnfup43yI8+7I4+FlM8WQbbdBOl/quwLFxD8E5xLLsbS8oYVkYajp1KZdXNrbuKxXz7f1HqlZUX9MLE8UEttBSkabnyD73v7is6xuu8NRFKLCeMc4LRZ8rJWXmPpG+6bQAqh+DtI0GwItcFE3tPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPYjp+pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPYjp+pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF172C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785209433;
	bh=2QyJPtNu7sIRzVGI5q4mA2GqoUFDshPQO4QyPHhaSwU=;
	h=To:Subject:From:Date:From;
	b=OPYjp+pGLzP5Jp8gvhMc8DaPzlQtkg9VGfoW4OEnOhh4NczjVnYYqC5G/84xk3mv7
	 g6H7C9CoTuaSlG+aXwhxb8AaClQ30/0KrUWCvZc3fXxXPpElhwtNyixy+9rRW9sqp3
	 0bsgVg9jTpgL7pksExVyJ/X6KK6ucn8XoP3OKjZY3lSy+Fgh0RaES8Z87gMYeHMsKe
	 2ya/dX9m/+MVMo/tP89+ZHx7k6KL7Yjm9pnSazPkkxCealUe/pazugJmOA+yfKA/i7
	 FktNV+bfkpp7ms2ZeDMeYHrkYolUM8KfkMxBSFnLvM8zic0XDBDQF6OnGf53dv10q8
	 wTDQB3VYSqJXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6AAC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520943368.3310.9285053695591378460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83831c51ae36e645a59475aa7d7bdf75847c69d5c247de8f03a89853a21201c
Date: Tue, 28 Jul 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785209433
