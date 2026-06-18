Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C74C2D7DE9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781798194; cv=none; b=UZFTtLYfknVKYm/HrT2ivHiy0eyrw4BO5d6vqFj8zW+pgqbjHip24ov56gEHn8fFLI5gpRJ70mllo7jyxFx4+Sq01Pj25o+eoqC1j8tTvzLfGs70mKRDc8ntjL4RahGGAFIDIk0PfUDhMRdkoAPPjrTcG2KZ4I9yZR2hWc2BQds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781798194; c=relaxed/simple;
	bh=3l3tYXTAHcLMQv4cZaCgyxhvq5mzy4KEXSB3wIYp0fs=;
	h=To:Subject:From:Message-Id:Date; b=YeP1abKgz+3NBEB0gZO05Cm6IZ+wJmq6E6VKwU3j19h8KxjP1a4K9NROO2hucQ02wH8kCY420Gkb9lPSNDAj3G5PRHAP3fNqIQGx9WSBPmmZ8hNFwin9XoBmneowJsAThDjjFyFkgNjqYOSHvWcDF5f5kZkxE1x/NPnY/ZFSPA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2c6N7+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2c6N7+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0F8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781798193;
	bh=3l3tYXTAHcLMQv4cZaCgyxhvq5mzy4KEXSB3wIYp0fs=;
	h=To:Subject:From:Date:From;
	b=r2c6N7+osqVmFuI62sHS4ePapixuRA2cpxyVsJ8W4H+PBiOTM4l9p32XMHYGjIAGo
	 EMSr54yb07rrscWSpQWcaJFZCnR4ajz66yclVy3GCaF0gc+hvLEZncFXX13L7oSsoW
	 Tx/CsTNUzi4XMoNqx+Btl5ixvsdMYacao6Q0sTlvAdyT9pnb9qnQKmhObCy8yWgvM1
	 jLMgNyqTJMQ1gsbqFSMGuhbxoYui74b47vrII7dsXfOR/ZpfwCzIimrgRgJvuIXPoW
	 Z4HVc7lcXPBkvv0bq4MJH2L2t1rhB3ZaiXkb5hj7LxLhobSZz41ojfd6LYzJGqa8ke
	 URDq3+HFGOMQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B244BCD98F6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179819371.17285.10139904123210849383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d20792ad619d1493f283a21dc7ca20cd1aff52c7f79330365d8e5d384b9832ff
Date: Thu, 18 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781798193
