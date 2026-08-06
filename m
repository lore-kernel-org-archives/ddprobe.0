Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341C837E5D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786035035; cv=none; b=jSnLkzcDBgc0dlhiS1l6nHxAGNUqbIm5qCJp21cwQV5KqBIc7yJbk6SwlZ48Fn4OuOmYWnBIIYoEuZ83aC9otqiFqmj+Wi2JlCk2ct6CQvPOkTB/34+wTCemJ7FcxA3iqs7xTDqmERRzEmWaNk4R0Oc6RyrO0bIG3V9jwk3mIzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786035035; c=relaxed/simple;
	bh=e3qV9Yt9LicKQqCq8PAM3bDOUVrXl7skdwbA+QLKl0s=;
	h=To:Subject:From:Message-Id:Date; b=KXKbU7JZ1W3TpQ9RGgxZu165EZuXjavIqsU0nMhCx6TkhzvWexx0m7v+MoMI7tQdt9o9kZdcUn0tbBVA3hnZBcxFCTJd7Mbh722Ehu8bimJPP0EQtCE9Cmj9sVlusc70/se2WieYf82bqUgrKVTOHeKU8pVWagMV5dpdeko8/CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZvuWyGei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvuWyGei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24B7C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786035033;
	bh=e3qV9Yt9LicKQqCq8PAM3bDOUVrXl7skdwbA+QLKl0s=;
	h=To:Subject:From:Date:From;
	b=ZvuWyGeiOQprP/xskjEgUu2UhKlw8Xya2wTYgdQ8Az1W589woBmifwmESZZFNTAlj
	 00ARIXxQrJseoGpxmcR+MRShHsjbCn6m5Ank3SXmNYMwR1Xn00i0x8eUOYPYM9ityw
	 8Xmk2bth+w/HvSdnxLVfnKAqMGtupTWHTIXTdpw/vYvQXxcTEGM68z6v7K6ViQ9jCE
	 RFC+riVe8g9vkPY7+iQNI8aMTazaEHGc1dMtZ/radw/60UGSseQXSDba2HJydMnfFH
	 uLMrIDZeqDzqv8af85jtxNff+Na90GriFUaf829fwfambIi6EP5lVfXwyRk+RUQUM7
	 Jr8jrs9COF77Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF5FC56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603503370.22561.15609460983008468456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e5d050bedcb28523bd500839a5ee52950e54d35d0b96ef30e37c2dacc83c2a
Date: Thu, 06 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786035033
