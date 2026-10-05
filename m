Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB4948097E
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791223235; cv=none; b=tokrDgvRmerVu9pfICzlRMPaNVSxjHcoBOKKP14Gi4XB/knNg7aT2pPt6zNW2EUHEZrK6Z3B1bjWombvPX2f7YE74HgV+5Fjsj1L0aLPgNQ8i+NxBLDqgWTGxasDZ7ol28gcTMhwTuA9jULUuC6/0rTvJcKjeLCwsAxws4mJUW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791223235; c=relaxed/simple;
	bh=099sxk7IF78uXPRKl4RyAh3fALIFMzPUaxOie2HhXU4=;
	h=To:Subject:From:Message-Id:Date; b=O13sP2uJu6pU52LtqjnxFDWC49EEiRWUoHa0SFslCS2forJslwF5lHWWSq9hHx/zm5QSzaDroDcymK0xsWdbxi9Umls13LW8jawaiPH/5MUIEni0yT3jFq7zJBO/Xpj46amOHT7nUvsmoJQQFbbGV7nEtbPjm+qXg+OGPCPs3bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Au+/bzlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Au+/bzlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5473C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791223233;
	bh=099sxk7IF78uXPRKl4RyAh3fALIFMzPUaxOie2HhXU4=;
	h=To:Subject:From:Date:From;
	b=Au+/bzlINtW6nG9ue/uwTe3SklAvMFUFjDGaoWIEC/+Hq+Hiw+gwb/bwBKvITgWQz
	 wBAOGJmzUtAmfYlAJ+Bc1y/E6td5IKc9NxTID7vOISqn7uuWFeAFi1zrbxhA3naYoI
	 IxBIBdwCJyIEoNQAu1h42b3fHfHY1DSXg1ywnuMUOFBxLXEcBeXCBwAW5NOHZkbRzR
	 lKCLbzOwyehVZv9j65W8KE+PQPwySaDxX9wF+UUnsQ4WZmQJOOE47tr1LAUFybQJDk
	 LiaU1xUaVZufnf58zfeqBDga7WFVyixZEc2TKffzyhqrBGFdbN1g6s2a+fqEHLnVh8
	 b5DHeQgSUMJNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE671CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122323370.1409.5028666727436708353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e85c8dc1ce7814dc13410746d9a7ea6f6ab99507358350ae90b075456c5050
Date: Mon, 05 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791223233
