Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0EA639
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754110794; cv=none; b=S8sY2oCuRWtKqXnDnb9mkXpvRQl/n7+gqEotFh+pY0tE5HPdJkzmabYrg87B3JfI+qFe7E6SYZ4QA4ELcn8lpFbJ+NOTdTotgyx0fZoi0FP5grEbwO19iwD6nKh3kLKgLq6CS/azfgVjc/fTh+YlWuBdQ+WGsn4OmX+AzxuEXiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754110794; c=relaxed/simple;
	bh=dJY5qepqQYi/e2Y7BCI2GGAys1u+/XUHs300iGaERbQ=;
	h=To:Subject:From:Message-Id:Date; b=YHqeqIEuOG1snGACeF0lhtRiFG5qk8znmwfiAAjXZLlrEkkDjmmQaWZWlJ3kp+ZiKKpIhMMQBWAvNJgIiIsjPcI1H48UnO9ksvKDwhqobyo01oRlGnEacnOl+nNHpDbXMiDXbumbTctPNjuLY7sJD/HUOXSYlQQVD2hHPndwDfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNurBi63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNurBi63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754110793;
	bh=dJY5qepqQYi/e2Y7BCI2GGAys1u+/XUHs300iGaERbQ=;
	h=To:Subject:From:Date:From;
	b=vNurBi63vldhiLYWANY4j/lA50o5enLXb7l3i7Ii7+IWFwbY8oscz92itmhSHdJbG
	 gUslwh4NLrqeIa4o/pX8RJSeRNrkI/198wZtYRr838dBNQ98WmHNkdSgp34j7RGvIC
	 oAccuIJJp0z0V9w9brftmd02gyTxuYwH/eEETvUdnXZzg5wCSYaYZZ6CemwPVT9/S3
	 nX9Ev9kBAhRIEjPsG9Sj6KzEqe4Fj1iaslhOX48u6wY2d3vucE685zQlqOo7QQov7Y
	 oPnk58vi1x9UlsImSqv8bSRpoU/EdRO1+HuGM/q15T1aa5q+vHxOCY2DXSPAqPjVad
	 bKp9FNWDUG/xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE34C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411079358.21473.9618774688002080314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc75b5a4d10611419c7873e1014f12c833cbb661454dde85e1a151b4390f2c4
Date: Sat, 02 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754110793
