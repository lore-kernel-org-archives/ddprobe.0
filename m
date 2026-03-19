Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0999238150
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773924893; cv=none; b=uV5RNPDTNZMEVCFJbbZu43m7WpI9Ax1V4bsNeWOBnhe/yiqtpOFy8l3bMGFqdAbNEq+VYUe5WMTKhbLfYNayKn9N0Z847OON8x0ufNNxjXLbLQQs8pbEECHcjPraffeTT/AtHQ+yHFRX+MAgv7cASe8sGsdj0tYEgsizXqx/vK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773924893; c=relaxed/simple;
	bh=BO6FiQEX72OzEaBFshj4WZtUtqi4NaLAywhe13ph6dc=;
	h=To:Subject:From:Message-Id:Date; b=bnsFd6ZRZzVJrKc7fTLDM1WzdWJb07/2XjqercmGjUAHnCvEquPWVd2RCUra62m52cwvEBrxyCr2JoxhOzNt5cZATA0GXeor6JQ6riiXy8AaO4BuhGzWGqDj6IxYao+lLi4mv+pJTF0WemKNv2ZVL65VnfTEiW7v9IAD1UAII2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYECLDTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYECLDTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3095C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773924893;
	bh=BO6FiQEX72OzEaBFshj4WZtUtqi4NaLAywhe13ph6dc=;
	h=To:Subject:From:Date:From;
	b=GYECLDTqH1zl9dkzR2TuLS+DLJ5/aUaUu7c3p18ffhHWD5Jq8PZu+qCnZPkJSLJ4G
	 gH3erIYpGXUoOBUhbD4WiO3MLPk2Q2pHUSDsJTr5Us64DKrgVAOVLeum7Fw6rlwVEM
	 IRAXpd3njuCk11hlin7LXF70VyycGEf53yj90WAOkgRhAyXoLxXHJTpJuQ1V5YmYgt
	 pxK7lhrZ7GqD2cGnL0vLJth1mCE5HSci9+fPs7t5uFmHwkX+3WkYEbd+IEjZ3BR1xw
	 A+YaqnnWgEgaButAiL2Gwe35yPW9dG1G5GQ5GzlRr1UvuCdjFuHKbAhE1O/KSEKCF1
	 fai9LH8LVm/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A911090222
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392489359.31850.14048695490561688461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c30bb936a6c05c7e19327b37b2a4a66be54a1655adda2c21fe299171e39b4d
Date: Thu, 19 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773924893
