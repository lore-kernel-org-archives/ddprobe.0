Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487C5283FE6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782168994; cv=none; b=LL7/fy8JwEjh6RIdcJNf0NDpXxQYU3A7hBz2MbRnsqI+9Qd7Js0GnYxNjP+b3CAoJAZ8ICEE/X9mx8OGfQ01LannvW4DwMjUaZP6f+9zxUC8fTeuymCRo6B8O27cIJ0sLThrcoaS7CVvLE0HWm3ZroxGVs9bOc4ky3VVaDNotIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782168994; c=relaxed/simple;
	bh=QW+lYDbx+qS4ASCpxCUfGbMPBuTtQCxJvOfzFpg/iK4=;
	h=To:Subject:From:Message-Id:Date; b=UYU+pp1T8bl2oItNCBVa8sGQdybyoNqbpmQg2qH1HoDXd4nEKGvYUzaZvX9z2AZCNbqDKdQYJ3YzpbHt9WbKVGNpugtmLC73Ls0LarHhpt+bu/qoBf33kGmJqLXI5LFBjj/R/LIjF9qfOV6y7JvmJfaOX/zM2fYCiCDJ3ixTFpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gx7u4NiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gx7u4NiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6603C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782168993;
	bh=QW+lYDbx+qS4ASCpxCUfGbMPBuTtQCxJvOfzFpg/iK4=;
	h=To:Subject:From:Date:From;
	b=gx7u4NiB43cxLzpDRdnhZRoh0i2A1iNlYlcFGyIJfqdDaIW1E30b1U+glwj6C0YMA
	 a+CzkIaSGDh1NDrsGYseDYDNwtihz+DqDEBsAvX/tOIRpmKj62DQaT935ymp4cDZaR
	 sGQxyig/lUKrCeT9tPR4mRc05gTQwNQyDBKNARV/E1yXAgwkynDHrm1xpXDjr7vigu
	 gm2naNglO5Dp+RufxBSF0MsouYEdF7q5/stepJXfjweKllrWyxh0FV/S4S6fPKMOXQ
	 iUQOzLJd8QxN/FeJDjtfupc3XR3uzZ8iQpPg6gE0YsUOLM2HbiJVkx2dIBRy/H6jiU
	 q3tX0VUwyPYyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6D0CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178216899372.14682.16136777241999764241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5a9bdbf0f9b58196243b21d5ac8dfd1a5193fdb3e72bb428151beb305e42e5
Date: Mon, 22 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782168993
