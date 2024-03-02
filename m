Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016834206D
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709417897; cv=none; b=lgMuIFiGqjb94R2GiMHaNlm1Rj0n3d401CcWyuY2cFX4AiU49/p1+7Pqg80dTP4/Oxt8q9TU9Dy6o/7q1XuRcIE0Cikl6AOFe5/slIU45DUdwYsU7FOwcFDmcAtNzJGJaiVaDr4V9n1aWyc2tjpZ9JTSMPv5iViDTGZ2vOM28Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709417897; c=relaxed/simple;
	bh=S7anB07F7oS8KgfrS9EWRnMVeKlNJQ6/ePc+4hfrWLA=;
	h=To:Subject:From:Message-Id:Date; b=fubgxzr6H1oajYR1lpcx8RYQiDXnAqn9kOm0Q0hVY3LDa0rafoMsLUr2oDYsm6chW5OL8I+JYPqFZ0kcafOv79gk/yx4XT2dFQEAo2VG35YJmna/ixQN64F/fFWnOFh1Y3QLl4oppCscAVgCDiqUjba+DkTvQlg41IdUnRcBysA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHoD2c0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHoD2c0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8629BC433F1
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709417896;
	bh=S7anB07F7oS8KgfrS9EWRnMVeKlNJQ6/ePc+4hfrWLA=;
	h=To:Subject:From:Date:From;
	b=sHoD2c0jG0i7+c6nnCKke/wYfQ80Xs9s3JShWxy31taTbbnMrE+e9UobKkfaMYXbW
	 X7s3OkUgcBm96ZOxP5zU/SqomWyvxIhIR13E5qj+LLINtqGBy6kcFYFx5e1r426z2U
	 5uj98M4tKbM2yN6bSDIzV1lI/xAXFD1TPBnBYGTgDq+VvqlbmmWjK3NL8kZfv94AjS
	 3nRkXrNCwIPQbrQ9NGbVNemfB5wE/NLdmcohxaSw3Dkx4Ll2b0QWqVeQNFZMkNL0kp
	 bp/kJvKciCnd2hNcWpmvbUS4cHEeZnE+zZXZVmvJznseMQUoC3l1EXuuYFhP6RDVKM
	 vZdvsfWIc8eeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683E7C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170941789640.9581.11499366611974457013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b360d75cdbc28cedc4f4d44fa36c988333ded01bd8a8d0afe4f21733fd3f3281
Date: Sat, 02 Mar 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709417896
