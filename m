Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2461D1DF254
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781571394; cv=none; b=V8cGw2O5ZlTWkmZeLqE3ZO1/3Ms3lyHVYGP62Tsc8qYJvsmeCDBGM5e8AsQh/e9UmPffAolBaTL9bYgz+8gRpdbicp+xWSjBS+W0MeG8d8vmqNyAgc2u/UDNEAPSLMwWkgrfNB6nXV3eZTO7Wn45uQkYhguNNocqQoJu9FwwtlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781571394; c=relaxed/simple;
	bh=FoyX1K3PoFQSncg9qdf7P6nQJWTnm3DhnThuXU6sMoY=;
	h=To:Subject:From:Message-Id:Date; b=geInFtuMg65TUFe+FEecZKPpBic43Rr14w65DhsPbfsoJdB2BbpyP1l9+NcJcUNEY920lU79bI13z/cTOFCqkimeR/bV2CjcJ7eMyHmFvXX5KiZaGF27ZJMMMAv+xVtAN3M9aAzcLVuRArrt/P4xk5T1OcRkKCommn3JqoeWEHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7GO6UID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7GO6UID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40E4C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781571393;
	bh=FoyX1K3PoFQSncg9qdf7P6nQJWTnm3DhnThuXU6sMoY=;
	h=To:Subject:From:Date:From;
	b=Z7GO6UIDuE8RySWLkzbx+BSgm35ucs60jr0OGnofrwb0Y1+wg0fr0+F0F5szQMvFp
	 24QpbMv3iTg7qxQit1i+vrxSvuNCns52eDXjUxqWm1n9KcOWghGmyYf9v6ZuTrGAWd
	 EEp3D0D0V2C+IIPveRJxUJJonKX4BmA0LAjTtpRb88kff013fWONog3i3JLYmfYXMk
	 /0CH+1lAl4yIK+jxF/2paZEfttDHxLVPbX597B/E/vP0CRIkYJNjSE4CRLTp64712U
	 6gI+pQPOpPiZ7T2A8iEUWgpzxwl0H+56mNuaTIaY7ac4wd6gHV4iI2KLs/sz3wKtGX
	 m0Lkn9X90YurQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20B3CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157139377.1034.16638666670300190257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef4229476555b9c1ae318d3b98f1297e12c799c059b0a60524955623c57fa3d
Date: Tue, 16 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781571393
