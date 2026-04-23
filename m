Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACCF36C9CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776907054; cv=none; b=Znd+L1xnVGxsxxh5+ShI+B9X6VYgGFLmFlWGIV7nj28xQ/JbtF369PrdHNt7r86qMiK9/PuAZheSSQbsyQZYQDImFikE82Fpw9G77fR6r5C1+4sJdWlTi/MLccOhj/k7XekoxuUxQqiSM8As4I0fcXRdXfdpViyRBi0c/oysDsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776907054; c=relaxed/simple;
	bh=EnzxafSHUkWfbnEFO5GgLM1L1bkBq1urndEH1Qeq5OY=;
	h=To:Subject:From:Message-Id:Date; b=lFu7tTSZgMLttybfD3+cAEyabyzdqoHy+NhHO9ajHa94zJUli/tqyvdX75rZ5nva0OT1wuqMue2rl0nMRb/bqf8AZWKx22gbu7+gydKDak6dhrmmgmHcadTttzBttdgE34pn4vFATXQSmVSsS3ziFa2bSn3mnDux5oOoDaakY0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogfo0nsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogfo0nsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC88CC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776907053;
	bh=EnzxafSHUkWfbnEFO5GgLM1L1bkBq1urndEH1Qeq5OY=;
	h=To:Subject:From:Date:From;
	b=ogfo0nsrKYUx5IhB5O9ESjSi/uJjOt15d9pHJquCPt6qy/yDezdS9QqXbeAqVrNhT
	 iZYX19QcHUNcuKjO9rAzi7mFZkPkjBoubf82m0I51H9jHYxJkXhyfRlRWCcBcUxhxJ
	 aEQ6P+uJMBgU9+1HSZMl/4H2MLYl89IEWi0y7lbYyBnrqohMzS0h23f0TFeUSNiux4
	 LCxRozzRWhp9JgsEUiCYrM9SVIAZPGG5n5yYwaoi1wMXHhRYCplRnNfEDLihLRqGRB
	 gWOzl9VcKSiCzMIDcWNRC+LxE6JKZYKhsYxx565ee2mfP5ClcVdgpZh7r+ynavoyTq
	 QiWBMZw/kVsBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC8FAD3E5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690705368.24822.13389358364000478989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18d855b23a01894f3177db4f4a5d9bd953ca3fcf748e665da204dcc1f65b32e
Date: Thu, 23 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776907053
