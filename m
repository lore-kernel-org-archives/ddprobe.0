Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235371805A
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740707334; cv=none; b=Buh4Pdo+IKsQm9UwI+3xvyjv9hKlBNC7Iv+kPYHS/pJnqZpUuYMW3QHMhHr/gtEA/zdRL6rEcZRPFbt2nR7TQpCRDb8NZv+L2BRqZNyTjXciYBxXAI/JgHPHeY5+u4OFfXOrzMIwmUEafFURTUkImzzSDjp7KQPQXv84Pi91yUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740707334; c=relaxed/simple;
	bh=APf9Z4UCJEHzr4RY3xBZfFZHpYFdmsIyhw48aY2iefc=;
	h=To:Subject:From:Message-Id:Date; b=JACfrOUWpSUyKzHq5+VD66K1FTjXjKj7hqxfE6Q3sbQDgYQfVdUEvGcSvd4CC0IEiSi2oRd9IatW+81dcQvTHpE1z2irnOd4/Gv+TD/r7V/g3LTKFLY9uDEAc/yJwfQpufDkVmGG1Q2mQBWa6n8Q6Xe6E5j73tn3yP4Pno+sevQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2P/TF/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2P/TF/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36C9C4CEE6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740707333;
	bh=APf9Z4UCJEHzr4RY3xBZfFZHpYFdmsIyhw48aY2iefc=;
	h=To:Subject:From:Date:From;
	b=s2P/TF/FZA9sbejXl84+/1iFFj1XX+GVSWh1FxzgmSsHMvDRrpKR0gw0GRQRjChuM
	 owF8zNXcbXCkhD5rQveJxtxqyNR4AKhW3YLYK/kHa3UAgLhClQ/S0l67uoE2VWGWpH
	 a3FJc3i4gyAK5XeAAgPROVERn/PME5JX9U15o/UCt7Ht06MWsFPiUzF+9JEO8ta1Qt
	 QZ+Nc2EQfDvBvxd86lUkRj98mX+oo0DbV+wcXzTxU1NIdNU/h2aZdk4o8UwEKNA8s7
	 hDV2bARUXfIWIu4qS7IBtd0Me1TApN7WN0/LDdHiOoFkfhTQkkB+huxonDqp35orD9
	 FsrxSXXvqfatQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BACC19F32
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174070733359.7355.10916750337138778691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbd1aa003e43ccf1678ccb5a11dd0357a9d09a657b150c513d19aa93269339c
Date: Fri, 28 Feb 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740707333
