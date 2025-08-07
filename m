Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A48B1946AA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754608794; cv=none; b=O1OO9tgqI1iTGG6v+LX7WxHsyHgBWwyYJUXN5m+jaMuu0QNAfzpxuX1zOi7xQRtqFY59oT2QWJz080NsT0mkSGLHF9kYjvPksbx5dObV/9PSyDx+cIfnmJMbZ33kLsQ2ZXJx/MeiUbvcp8dEGfY36VmZldvtd9pA6pC+PLdQsho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754608794; c=relaxed/simple;
	bh=pY8+lGEZVDnfeFZWIo02wHdSsRtQoF2Qxg2grCiefAQ=;
	h=To:Subject:From:Message-Id:Date; b=nuV+s6KP/h8BfGSCLlNwEThX526J9sSzKwZgWpEVMVVJIEl70ux/hcdiDxLuImC4J+vRShyKdIdY6/fJUie6jBwjr4GjEIRI07Id6aQ5AR7lFiEP5a7nbu+nLpyn9dY7vJ8NbEtKTYNNZ4B5jhvCKeksDuqfCCYC/r9bmLIEc2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEWSpcVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEWSpcVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1783C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754608793;
	bh=pY8+lGEZVDnfeFZWIo02wHdSsRtQoF2Qxg2grCiefAQ=;
	h=To:Subject:From:Date:From;
	b=oEWSpcVNuD18Kd9ADHyfGkF3Sfa6TMuvZ7+vZnH/ezuew6vo/+z2OHjU0QyjJZD4U
	 1ZVxMJjH+rKYbVdOx3C94P0Ni9j+b4CCop86KU6sZDGsuV6Pn9chcOIIXm34In+3PK
	 BVn8PXk1+qs5xSgAfEhcyiFYwJVxkw5SVc6ljhGo/MPgrTRqu0bXJQPL7ipaGP2No4
	 JeCJ7CNjNAnMtgT9RIYOPs+9oVh1tIzU/wenidsBqBlwT/YvhXqVJDMBrNjuCpi/5a
	 TQkeWdco7YasGTY/RK7oNqpJDbWxORd2HKntfNGOMYwEqRjNbqMeuOFGo4hsBzkF9T
	 ooVIaxK9qYDlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9036EC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460879358.22888.15077816408293203101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fcc21cbc08b88d5d02e38a30ea79538c809503114439e4e1e619b0edfec706
Date: Thu, 07 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754608793
