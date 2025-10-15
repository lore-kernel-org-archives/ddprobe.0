Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349ED1F91E3
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760572794; cv=none; b=sIqU2RAsAc5EGo7V5a85rHYk7/6PKrgScc8PhbcosB9aTJ9W3n46LQef9xz342FnN4RbIpYNH1H29rbEjtN3EVtkJDjn8J63NemsZYWqek8GvAbpAocTF2r+wZ6WEBJBOijd6RYBlOHIJ7+O5BAj5reJYIF81DzaP96HBjB+Fdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760572794; c=relaxed/simple;
	bh=mvf7VQcKrG+9Q/8lKTIBudK8u/DR48ojs0nDizqdI+0=;
	h=To:Subject:From:Message-Id:Date; b=oE50OZRax7g53xHpJFk00A/yyxbI6T0A8VH5BecpOCaKH29u7ZquJrcmFnHU9b1nyMqqRW3Rn59n/VKP25b592yP5dg+wMWX1u3OKsQPZPlpfD94/XbGx0ZNk9dlChuBFAO2xZoIkwwYSTSjl+Mgfh+MNkPhRj2I5XVAs6gc3aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7cRdI8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7cRdI8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14EAC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760572793;
	bh=mvf7VQcKrG+9Q/8lKTIBudK8u/DR48ojs0nDizqdI+0=;
	h=To:Subject:From:Date:From;
	b=N7cRdI8JaqtZV668/Fg5EKx1Fo7ced61z7rtKFdk4dKsOxXqlGetS8MaF8oeHD8Rr
	 6avdQHjPNm1LtKQOXx6iyXAzauI0brgp6WRA30yOgaVmM/ENoKTRHZHeQ5+/C31OOd
	 CqnV6US8Jqh39KyHPPxXmFu+fGyxkTrUL06herGT7hUuVpa+C34lTLGZwSK1pyNSlw
	 hiMWp7VAEGzOZZDYYNH0mo83VjAyjOly+TmEjbow9GOCq1lDrbiivVtEkI9stuM0pc
	 mbLtWawavus9s7MKoAjOUV36yO4nCjcgsDsVZBzkl9f74NUsRdeK6HyKUiUFsG/1oy
	 jcNGXz5DkWVWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD01CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057279358.21443.17669226031770522648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113732597c2e5c7a017ffa5eb37ff73a7aba7bb46cfdb4681b86566ce5df7213
Date: Wed, 15 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760572793
