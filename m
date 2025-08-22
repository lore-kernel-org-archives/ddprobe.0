Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339B91FE455
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755830394; cv=none; b=g17iqN1P2zb9QEsy2uADYjqPejHezKwLnTZioncsTQIQlif8pH0Jd9UHqziABqAPRknmW9wV9D5V+ORN/jfhQ/jQkZp0MlnrsfbPbIZG8t1j9VYP8z4C8X5YKIlOudmb5nihfJOze2xIiWKFg2f14HoGqPRhxUtDQqdx6Z/59UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755830394; c=relaxed/simple;
	bh=ABhb9oR3ifMdU54ZEyNbp4aGxgtBD2qD0JiC8VWmjV4=;
	h=To:Subject:From:Message-Id:Date; b=owcmFT8VQO2sutFjuzK7GXg74SXd7qqFjhkrVOgD3SIx1ODlYExMZgEHwlrLTXRjvaDoLk9TCY6gnFyuwk4xk+HZeVJJXH8cZ5/xZryeDX3u8VjkrEcZuSy0qk9puT45aFfM659uOoMqpA1e92NbhEgtZo6y5FY5NDJH0YRL7X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiJeco+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiJeco+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F836C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755830393;
	bh=ABhb9oR3ifMdU54ZEyNbp4aGxgtBD2qD0JiC8VWmjV4=;
	h=To:Subject:From:Date:From;
	b=tiJeco+IAnUFpdlYSNzHDvGkrjStv16cCa6jvjP3fWGrM2SAzD6F7YmAP4sGl9YXB
	 UTZvO0zCVsOD3EvRWgBUmBIkDlfx809OJajBen8iN+cL9F/w6XeVtAvfYDNQKXa9h+
	 pw9hvgUUd5ucUQOeOupO4HtoJ0QlWFktPnTVlNfJA/mPK2vmIXyi0wRcKvta0gEA3b
	 HdWrM6ZXtK29VHLjG/qPO1gzCdgxC0XTxBKWcUau9J5G1DzT/jt/M7LstT+GkgMGmf
	 jMCVsq122yDRTOSfqKeN1NjYiLWfThhT6khdRpymMqdp7jIB/z0egvW70pS+SyDCO+
	 DMf09u5tFLzJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0EDCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583039357.27590.15213498790784353671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f39520866da9e3c6e3c6a9fff02354c568ed9327f7e7b0c78f6311d8d4837d
Date: Fri, 22 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755830393
