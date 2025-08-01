Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310BE199920
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754087994; cv=none; b=L8rJGncHV67gherZ3MlzSkzJf0K+7ufZXQBqiAiWUnY6Qh8FokU+h34QijTQfZtrRb6xJa0a5RPLPiDYp4PW0QdOB/0ok08sg/HODkRe20zOivKRGZNZi2RlAAFcT6IMMWa77sk0LMZ3L3zfGYZDFjt0OljroJ5C9D7JLldYkrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754087994; c=relaxed/simple;
	bh=Y2J4LPIVmcJNBBFVWVkrAVivZxbdKZPNB1HsMYlEVvs=;
	h=To:Subject:From:Message-Id:Date; b=i/EHrqo5YpfzK5iPJxPBmXdIhTg/SzOUpU31OAzdvjpCuPwaHE12HrTstpPJDUzDLqUceMxHUUyhX8pYa2k7Apq6oMYYPD1e8nqfDEzdV5KDTrNPBeE0MgjI7TgGqkPqOpW0IWyyc/WTZK3KD/IVQa+wW96SjhcF1rKXHUShWX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVQh1gLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVQh1gLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD89DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754087993;
	bh=Y2J4LPIVmcJNBBFVWVkrAVivZxbdKZPNB1HsMYlEVvs=;
	h=To:Subject:From:Date:From;
	b=IVQh1gLnoyeXIPkNuS4m/aVvqF7/CmTn0wBKacZtaoIVaWDcFFuCBSbMu5+db8lYa
	 tEPRaR07rsDf3yv3LUi3qO5Elk4jz5iZkXGPoUyElqZmJwevk4aO1VF/kZLi69uWfE
	 NWr8Cw6t+oI5Aqr79gGT6dhfoq0ay7VBPlDeIvGLMVrZ+wXzbMgvvHBhmfLV5orT+w
	 /wQL4SxIAEQhLUnMrUZaYtq8T3NVpOAS11ZR69k9gXffNx2PthmdnFaDpUpTKfLXKS
	 Rxw20xMHvGcWiDdd4xIU26u3vx6eDHjXhj0hcsyp6ubX9zzQ22jNBUmlpODbLhdVY2
	 0rATLww44VdJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA2C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408799358.27232.2155474121858769284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0cc105cb29bbb0642ec8b8279fcb6dc76a8377199be48dce77841ac2702944
Date: Fri, 01 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754087993
