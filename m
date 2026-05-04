Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128A01CAA65
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777912054; cv=none; b=NU0QJecXnsnz5Fd/PtcbxTuWB6W+rO7GePARagCGllpmcHrPJUm0Pg0MVEnqywiFAeNTkQIYN2o7C7Tctylbim38SmuRMtp4M2htACTLP0uK1WSbWOA/ltQVP5ebn0fnpaGGJ7tIXApdW+AaBL4uZMCHZ8sWmoPbFbiGoxVjAZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777912054; c=relaxed/simple;
	bh=FnQxJqVxcZJuRsSRyRwCeeURnAosU5mq/LEWlQZRq9M=;
	h=To:Subject:From:Message-Id:Date; b=OsCHE5JJ2eafzgrWk3M4yycyQIzIGbFMVrr7YjtMO4T1tI4DVnLpyd+9F/UDZdRC5zeDPp1MIyfbrlCdBz/2sTydKVwsoJUL+Q5oTUh/VCy0nt3fH+GX4/XzwxleXTKes8n5ojkliQ94pLM3aXbwBEefo+bZbIyeNRwg0ObUhc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHZVwDGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHZVwDGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B70C2BCC4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777912053;
	bh=FnQxJqVxcZJuRsSRyRwCeeURnAosU5mq/LEWlQZRq9M=;
	h=To:Subject:From:Date:From;
	b=jHZVwDGKGh8ZaBO3JK5AoN6OqKSniTAJWVwz8S9tcswysMeg51vAW6oKGGa9ieYXH
	 s93eUfBTAuo3UfQJGEZQKD0dPU11kfNPinzRIB8GGlrob4YmhapZvmN9WE1smi8ztE
	 KJ8B974j8x81eKr0YuDlpr3bHe7Q8I5bKPdDd9QUqxIp5uRkFsKtu+uHeWhvcgtwir
	 oWN4cdTAXQu6Hpblakx4mKkZpcDrOFCH/HSgirXHf+BpdFvvuOc1o0iz9Imk6oNgL4
	 Ea9QXjrFAqeqTxyKly8e0PWzxm/DlFD2MQ+QYpQovMlCHZywKldI3HTVdRMk1ofvhI
	 vnIVNGJWmZiFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA66DCD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791205368.8063.3660585904728590305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c4e61dcf8720ea50c4a3bd553a786aa530b1280806bf5d6e8c605a781391cf
Date: Mon, 04 May 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777912053
