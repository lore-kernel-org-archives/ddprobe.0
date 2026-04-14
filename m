Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB0533EB1B
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776148053; cv=none; b=nUitPwM16TLXWQv9oBSJ7fjApZpVxC7Cb9t/MZfmM6+oNKJCDsr0ImOrUiVmlVO+M+E6zyQAEOZxwN822dRh1PT4tpdfaE7RPqHHqNyP490wWygt8FWeGKgSFqVe37zdoS5D5mhVDaeTgUslxDk/2vTMnwGA60lAIKz8i8DRg/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776148053; c=relaxed/simple;
	bh=Z+844YDoC5jeGJ43uRqJMInzVzO/BoCDGL038iaN4kA=;
	h=To:Subject:From:Message-Id:Date; b=RBsqmDcJtaV53QTPvoNQv5dtmNsy2g+MfTdGI5rrKh5c63COr37cLKg2gUTguzQCtiGDATE2syY9kNVZUDbbqrF3UrhiTi+ox5rjmhoXNfwZhvby5Er+mbY8tRq3lEfxvLA3QTnUvlwSkKysA0jpu42cC29P3NcaorffjxCVEHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbL0K7w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbL0K7w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2630C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776148053;
	bh=Z+844YDoC5jeGJ43uRqJMInzVzO/BoCDGL038iaN4kA=;
	h=To:Subject:From:Date:From;
	b=LbL0K7w5YR68lRxdgKtKLdXnBJyLOv7lN1jWVIsBomtWYkQKYmfZSDjOsAUQPujU8
	 /lnsgHjvkEkFJ/5cF9sbOmAT8vGSVYyNm+jfpDGONb21nKVwTIlMfh4bCjorqGjlvd
	 RvFe7anwdWCVtJsT7pcMWKiLYbFfm22JNUCPN/Y2qKZ6nKfA+pa+beBXe83WUYtEvP
	 2yITwQ99e/blgJ1WyQd3pTYWWqM92l9ycUs/qUnzgEt1KMQdUJkng5rmhhn6f8aci9
	 CYr0j1ZKWzqH8q8N8gbEJmZbAJ7Pi6Nj7mqgBxXAD0sP3OpMY6Cd1dfugWTvqipbLJ
	 V8GXPIGb8BOQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01C8F531EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614805368.20984.8846844033164026623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30cda96f11be342871b7d9b62f210955a5485622045a1a0d0305c88b5e23ccd9
Date: Tue, 14 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776148053
