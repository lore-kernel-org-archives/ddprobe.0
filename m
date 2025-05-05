Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6E734CE7D
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746484794; cv=none; b=ico6+a8ZQIZdWAoPQ1FZaGir5Nk24c743joKTsibggsSK6g4VwT06UNw6gB1ngNyaSOIA4UvqkKcirQNJjsdQtfZj7ND+FxpqFvePtYKzqCFIadUjOVM2ezn/opWP+ygd0+/kAF8t6JS8c8iVoCLH4cfA1VeMQooK8ETX+LX47A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746484794; c=relaxed/simple;
	bh=GRgayiQ0MGlRMqZm6pIc83vnYub83ZpWXtn1W2fRo9g=;
	h=To:Subject:From:Message-Id:Date; b=qFF6SUkzPQm9Nq4VNTS5eUsfweSu9oW1LX9pUkOF1lJgbRt+q6KOVT1vsEp2Hal4wdS6Ry7CdA9SrQO/8IhBmB6iAYYJ4sJEaYHSsAJYDxUNiZRTG8fECexHx2XBAWazxj1n3u8sLdU8bzfXk+xKVLgJ04gHBtlj96AvUJ951YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfiG1weN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfiG1weN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5ECC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746484793;
	bh=GRgayiQ0MGlRMqZm6pIc83vnYub83ZpWXtn1W2fRo9g=;
	h=To:Subject:From:Date:From;
	b=sfiG1weNHnivBGxJ98egEGwlDvTVrRvpSk8j7cRNEbl6kY8ar52wrWl8NTPsSXCCD
	 EfjS+38uKFOqPdNS+EUIJrv2UgPLi1xdtxSZR5RnnQ3Y9M78QdFdLTfXDBiFgvBbHp
	 IYxhM+bcGvFkP8wX7FDcJwubEAKiMueof5ALHWTUL1e6/gsAF2J/HjU8pZ69wc2e5W
	 ix4iEPDlu2XmWGgK3YcS6yYlqlA0kjUBCtiumPgQ6dMCwRNkmawnSmSMcqpuer3mzc
	 3YOT+7ATMywU3NoIgQpVwAej+ljezn75Pl8WWLqUKzJjhGfnyS8kEFvv7UU9rKY+VV
	 UwGoknVUXVruw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF1C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648479357.11596.17932626505329406280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff28caa06f2291eacb7259d002d3a4137e1c619183e76b8ab5ace2d7783c05d2
Date: Mon, 05 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746484793
