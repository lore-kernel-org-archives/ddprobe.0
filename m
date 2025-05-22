Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3365119F461
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747930194; cv=none; b=EuW6zF5Av8uuG/G1wmP1IFthgRFu4vnCCk7d3TyuY7jt8zjUsRcsyU6DljG6A+4GRFp1yRVljCbss7a5zugWjWwh0Fkka6cntPA1i8TyEbaAfBsxmPQaSoLrFQh7G5UeF6/sFxvDZw6Z6/hyZwN5d/P7moOlwu0mgaRpKu6tnc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747930194; c=relaxed/simple;
	bh=B/Q585KKi/lvuiGy84cAuBoA7i6zJqWuxkdExj1I948=;
	h=To:Subject:From:Message-Id:Date; b=XyHYCFvBOI5LWdeb9KbKzB5lUUCKysz6v4KBfZWrNw/5SbToW53+8OoOCo0nS+A37UeyQTpKUEqpSrvoeNw0PQQAfEjhW7JeHBDJdnEI+OQFJORN12ANBP5x/cF53EwWg+PUcq6fqGm7VFOBZhohOolmSHwn13STIohul7Qf9VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYVCMCt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYVCMCt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E46EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747930193;
	bh=B/Q585KKi/lvuiGy84cAuBoA7i6zJqWuxkdExj1I948=;
	h=To:Subject:From:Date:From;
	b=KYVCMCt88pIA5OcRv0rupAuSLFKwcqhWiUf1wV8cZpr1/aYdjhSROl0dfl7V7Itge
	 HIPaZuRQlumjzPEWrf8PDCfPGYgIQDlv/CfnVW5Z+tukitO1mERHbWcWHPWF6rON5v
	 n09E7r+33eL4hyt2ewdgKqVnI7EItdbC5w2TgyhFDhU/8Ru9hyFi0W3U5220mN0gdf
	 +v78hjcBN+uGI/LJ6nxAbsovNCYCNdmIxlCku8oxZYLuh3z2eWyX1/a4V/hNhOHCE4
	 veuZStqmdCNx/PGRY9IzpO0p/vxA2oKz9kJiNlSvCkT15D+BzFfCel3k6l/RBz8/3F
	 XNX5L9glPdPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE82C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793019357.21148.3276981863344223001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775cf6654e6b47e6f8abb1d73c76df92b90da807deef01cb2b11754c0ec2d452
Date: Thu, 22 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747930193
