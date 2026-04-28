Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230C62882B4
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777341454; cv=none; b=YWTIlaZlgfk0PkpKBnwZvUhbrOoGfu66qKURLrl/q59u9qFWtr4iFJRxvslhuq6VacL00v7TUjEiDOF+Ihs+QxXBy7/RHIqg2yxBaacbuQm2Y7C9FrdZkLvH1WaQC/6y9PdzTE+tmFFwogwhaI5K/zyVoL3M064HVQgT3rU4gQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777341454; c=relaxed/simple;
	bh=xGmikBXTcgk/v+Y/68/3iAmTUZXKqN5yPapobOpjWfE=;
	h=To:Subject:From:Message-Id:Date; b=QkCRYvm7Mvhce945rh6uFdd1spzpDP6qe4gzXIgj80neK8J2KdcejiH3FpY/daez2fDc07kEhCMLJkLhI8RjMTaP5xIjhfoT4weJTQjWCCyX/A7lL4eyE0/CGp/eUYp+fa6Mc8s6Vdy/6yeiaaAsh984sagnyM7Cyb6GG7paT8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwJXodvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwJXodvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD367C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777341453;
	bh=xGmikBXTcgk/v+Y/68/3iAmTUZXKqN5yPapobOpjWfE=;
	h=To:Subject:From:Date:From;
	b=VwJXodvB4S+83553BaCZPbOzR4wbDLxsVJDGjvlS3fbNyFPLOa0pjnwZrSTBx1nS/
	 +X/MAGfS+0TnGaH+0Opq9Fei3IxzJgyZ2oA0sXneAwu/DkuhtyTCW4wfS2l5DwO2lP
	 aoIM2S4ios04XdekhR13/7VuTfXGu3itrkZ3wghj3xYBc0njmo/B9v0C50Gt9L8XwN
	 U2NplqH1v/ClmEy/o4uk3p+7mH40gaMCJngTRVRZBtf/89sac2L6+5C4k6Rg5J+BMM
	 wqD3cLIiAKxNpbc5DTmyYHny8M9NYvLQ3YZ1iAIGTJLnybUQoOZgh6XFjHdi06JO2n
	 oV5UqXbwappNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1A0FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177734145368.31269.6565443544746610080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78de70162e0a2cc798897a1364f47e5d4956cee3c2208d69b77bfde17755173
Date: Tue, 28 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777341453
