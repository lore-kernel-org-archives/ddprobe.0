Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3257B1FC7FB
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777166854; cv=none; b=Hksi/u2/VR1Mh0uC0Ibv2wv+iPDG1yA4AJIMcOWG3lJixgeQxjvncUpOBq+Edbammem5+pTBpeT8RhIceA8E7OxVGvdgBoUa2Bt5/NhkFNNHliG+4wpYjk/DFrLmY61sTeFZ28tBaUU3rHb6gZRYLzngvaAh86UHt6mruMBQOps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777166854; c=relaxed/simple;
	bh=rf07c6D2x60Qif3XAgt/wpqMUNmkL/1Xa9QiyQU1Ohg=;
	h=To:Subject:From:Message-Id:Date; b=VUokVhfvaO2rKU4uhR1gZVSJZ2OpI2N5oaRm4OaZ0zjoKMe1pEFFjmQnx0gGn8VqUSNaaAJmT8HCoV0/y1K8lkWDULV482O/AMt7gm4IK/LdGvmPzVTLxLhnBJJatltLilR+eLi8yug8M6Zr1A9k/yHVy3yKSb7RQ4qRWXNItFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7+/mkdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7+/mkdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14FEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777166853;
	bh=rf07c6D2x60Qif3XAgt/wpqMUNmkL/1Xa9QiyQU1Ohg=;
	h=To:Subject:From:Date:From;
	b=k7+/mkdXu89qWYtgYTXl+twRqY/RPSmsv4lNMUM5aP0UdwBKQ0twCR69RD/ebqa6t
	 q9fKDZgUq02e9kAELinAPgoGA/3Ls3rh/b9cTPRrz0Kkq612HfXf+7Gjusk18rY/P0
	 tDDgiQAIrST/wfje0bav5+NAAZnjSqkWLO/72947jPvkkTgYOBYHerud+OXzesk+i+
	 /1VstddFP/W32Y9YFuqY7AEnvfkQdD8XWUcrAOnZ8zufLiWWx1msdmD+DfdvQQIEka
	 1c3YRWQiTb8XSoYCSUR05cEyg7CNfJQcV4Bby3bol5Mu/tjR7msDqSSCzq35R7RVlx
	 5+V1Gd0Z9EMGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF80CFF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716685368.370.5908790149777594825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed2ac11277484cec02e4b2901b6d6694042e9d37a6697f5cd07103105ac1d54
Date: Sun, 26 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777166853
