Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EA63B7B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781081134; cv=none; b=DUl3CSfE+Dd0Iz9jNfLeDeZp567seCf2Vsd2VxCCUKOdwzzRqdRJ3RT2TGFWIbg9UDxJVgc+bxsj29NGu8aecbcgo6LUhnRXDGGtDmm4LBy8LeDnBjsZ1V1QJacfutoWeVx9tIUfO5ab1hTXLFJhK6GoDHNUElvIr9MhN8Adx/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781081134; c=relaxed/simple;
	bh=uDmlmjJUb8qWxwgiqfHp6qUn6T85d5WvgGGD7hSXYyg=;
	h=To:Subject:From:Message-Id:Date; b=CRr2KpOvg8Jrsbx85DMIlsRQXeXaKav8RUli1mi5+165N2bxrpa4+O9QfvaqZAfA6cF+ufqBLA4U4D9b9IJUlpyOJzshliXemMn1MyiO1ZTcvuxGCze2MFhZiAsCcHZQ/OfDqb35B74PYdSYvK30vMR0ie7R2MImkIlukOk8/n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pO9IsdUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pO9IsdUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06A24C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781081134;
	bh=uDmlmjJUb8qWxwgiqfHp6qUn6T85d5WvgGGD7hSXYyg=;
	h=To:Subject:From:Date:From;
	b=pO9IsdUL3TGvb1TyiFY6LAQbXghRHEV+JwUdSKo3dU57BxO1vDE7h0PNgSJvD17K9
	 b7k6MwNmp2N/Kej1HEsZxFn8YIh404g2P0NKksDsg7QIg/Yfpx03B7jG8NVo+MysqV
	 KlPt4ai35YHIrvrnw5cGsC2/0cYkO6bBCtQ+1DLdDRp6yWFxyorG3F2DqJ+ezO6O+6
	 fLqGZn67oADd+lvRgNyfpg8IpyPo9jbGN9rk33PWvxyvxLlwN3IGtW6mZPhK1IhXsS
	 yeQp24KlUZvxxBjI4RzwmICndbmkn5zGw37bUGIy9/3Nh8W4Wco/rOMAbWG3bE7/9I
	 6gVTrHu+ZqGLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C885DCD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108113379.2666.83530013850304957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f51979f8e3c53eb4d000251b47cec55a895ca93fcb864bd525acaa1e7f45b3
Date: Wed, 10 Jun 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781081133
