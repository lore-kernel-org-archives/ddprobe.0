Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2EF30C345
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761232194; cv=none; b=cGO0dVd0tXXwZ1fe3hF1V36LtDWhiQYlyMAnQfnT++XJI8dc5xhldggroD5s8LNTAVDX1yu7f+bQpHLMnQSXkVw9hfiE9LVF9abkY2jfb4XDAXqUTlgyoRn7pT2HrQ3vwAw6ZYTMayULfn8+siW7tLpYazLTRn0C7Yjp+yHOhiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761232194; c=relaxed/simple;
	bh=rf7E7MjfdP7xT8NFNk8gwxGovO2MM5F26DRB5zEe/BM=;
	h=To:Subject:From:Message-Id:Date; b=gXq4oE+D8eQfc41ra19sXIux6N4MSxbpDJ8oprXHhn5M/kWrGRYM5bcub9ZUe1SvzsJt/Ddptb1P3L3wJzPthIKDDmPr5yt6WkOzlmJ5/J7E8ElUBessOs13ZHCikJ3r/dSIP2xEboGX9eIzeJnw2OMbJz21RcYpwuRb+fiju3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0Ni5SSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0Ni5SSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA09FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761232193;
	bh=rf7E7MjfdP7xT8NFNk8gwxGovO2MM5F26DRB5zEe/BM=;
	h=To:Subject:From:Date:From;
	b=W0Ni5SSm2quDmhsHqQt790Ftb9ZxC9jMvfCIQIPLGjJnKtOuMu1a28YH2TgSKtC94
	 loZ6wdqSScPkSoNbASE44sgKU+CnnrrvQMegys4Cb6ZeuzBgCzvarCIuOpKmiAzL86
	 sylwjITg90HtPMYTAWkLFBcUCpEXyyI+oIf0l1ok55YB3FzyINKJbMi/gKx3Pzuxmx
	 BEUKzFWei0UNE3raa9fo0UftDINVCNrOVlH2CI2t8sOOaLnFsQMB50dLlblhyy0MV5
	 kkl8Q6Cv4mcCmJbOEMJ/yb4cuMCx2PJUWMbuHX+THeaZsvh5TTkUy2gLipJwVknYcF
	 8gjVhtCASPBFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951FFCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176123219359.15038.16665953229569776225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb8f1a7c1549ccc405f914996f60e60bebbf60e11fea09495a8abff5d30e752
Date: Thu, 23 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761232193
