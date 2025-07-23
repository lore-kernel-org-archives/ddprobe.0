Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EBF4A1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753231794; cv=none; b=XuT5ozEUa7X+iBDc8QdP/5Q8/zV31VQ/9ZUcDO2l5rB+OtqI9zphse3BQN/Ahwq6YsEbs6wqEpI59dMb+1a6kfXXATLR3UGzZfOaIBog4sFUnRbbZFZLQn9Ohm9HyNr0EIK+XjzJXqf3wi2BSp6OS20E1CaxRkybX0r36FZpR7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753231794; c=relaxed/simple;
	bh=eV5DV+gUargzyGcp66sbnyWqWL6XlleC39tyTUUTXEk=;
	h=To:Subject:From:Message-Id:Date; b=dGaq3vi7TpDRISn2IME5h/RTrjyoQ7xFaPT1ZM4vKSxJFF9qiBhSECiIppBq8eEH5+NcmnKUzsh/aYaScjZz0g0zovGN4JkzxmSJtZW7DpIvEnPzMZ4HhiK3qNzqkYF6+XD/96GxHZJbLSaJr5V7n+e2gnrkLVnIy19zdGqGaJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EA+DHg04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EA+DHg04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0587C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753231793;
	bh=eV5DV+gUargzyGcp66sbnyWqWL6XlleC39tyTUUTXEk=;
	h=To:Subject:From:Date:From;
	b=EA+DHg04bGZMgqIw6/8eTacKPhnEl8wcsElhe6VQvX9VDdXIM+Xwd4LDTypElqA1B
	 WHmCD+BpWoN2vpBK6fsUsJNFqcI+VC3gkLfJlRP9d7qQtUCVmGOXnNRQ5XxDToJ4Bl
	 Ops50PeqKYycv7zKz/g0mzuz3umXd7p+rKJSaDzo84fCZutMrxyAZ8jC9m042sObf7
	 SKcX8TMK8O7Dkdl1OtZfMfbQx3piIhRvI83PqCxVpuPP/MZ2pyP7KANh2BSUtH2OTz
	 44C8XOeeH/jMsxWoCf/CSkNeqDm/rZNb7piqneNbTg+OP5h5aUHsXqjTHAjOa16wow
	 HyhtUGo5fZuNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B4C83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323179357.7225.5778478537181965361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f02e479894b0b0ddf75c04cabefe24924fedddf57994870e287865fab1b148b
Date: Wed, 23 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753231793
