Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA993A9013
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774858494; cv=none; b=H/St9/YvqCYaH1x5BxcWSqFjYaUMsC6GUP5BiEsMLwRuZCpBMsClxAwSMJskXxbxcAcIsVj8Gm3nO1WOOMQnMDZqdM+GzH9vSMiOu0PNB39lxNgXqsNvdT6sIKNaQUO5MLfTTRn8avMjPpkXeHgHtCacuzMqCcGjEO8SSGpiGK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774858494; c=relaxed/simple;
	bh=PRhLpTnylvYjj73q6ZzsY7DD5MJtyfziL/PyN5kUerk=;
	h=To:Subject:From:Message-Id:Date; b=j3yK9Hb/jnlYPJTFnGYRTWj9BEH03YoS3xjqSJDrWxmS8ii0wo4In2G0ikJ3eZtPbzFKb0eMTT/ffUiu+U/IJw/3FHOOXrhXQVEacuuM8Mlz1Rop2dlmIL4jMrsc50SOClyvKnL4/SV3WkgZ+OwTkApUIJtqzbji5xQ1VY0rmDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdoQer/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdoQer/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED03C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774858493;
	bh=PRhLpTnylvYjj73q6ZzsY7DD5MJtyfziL/PyN5kUerk=;
	h=To:Subject:From:Date:From;
	b=WdoQer/DCNENp3+TH2sHO+NLLoFjdsuI6kGhTZbHMNX+OarcFO+G46LWr2mWUs7oE
	 B1cj2du6BSALcKg2OG6NQw4xYEf8D2JcOXvBEQvrX6cT66yMoi+slLJh3zKRZHF5Ck
	 2TDf0TGCfl0JZ8szMnStmGrYodEoF6VMTIXPZgwd53zJfxoo1B/SwfwcB0AQWhGx8I
	 CAtLVbHX4+7Ky8Kc+i3ZjcGpWuF/uuD7ePe0vbHkOrjYWcrxWHXzQ8xq6Q1cxWCDD1
	 Q4/UXJc1dkrtIuqjTmRJRFT+HuOxbjTF6LwvEEANi1i06qY231xSg0exXHOSwgrSze
	 QIy9ZpsOAvk3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9534CFF495F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485849360.32036.11336032362396959728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c3bd5b768eae777104ac55aaaf4eb4aef96e7cfcdaf885328cc91c77c5fe38
Date: Mon, 30 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774858493
