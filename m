Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDDB443A87
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786450834; cv=none; b=UCfk0jGjzQ46Tr5ceLQ/rY6fqHpSZGKW5XTtNfXBEojA91ngYIH1RYOLYNiOS9toSbj/Q7C+rV6Wx1HkoIKFboY6ranAOvxlDpvtwzT0ZoZyFi26o3DkJrY+2E6PmXgSah5HZQhxYTdaTBaHFx0i1SUsEyIyUy8oOn3s8fcUNqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786450834; c=relaxed/simple;
	bh=D4bnErlD3cMNoT+nHv3jSL7h7cliXGeZy5f0+PcSRMQ=;
	h=To:Subject:From:Message-Id:Date; b=qBZGKc4DKRKxl04nLaYa1Oga2j+iDtUNBbEjaTm+XQIvsFrR/ottvkBoi2MbQ33JWGVyH/+ZQEH9dCJm6FzVAGUk78g1pB5o4nodEbo2DbM7RDO9XgD9tH/sXs52dyLazklvAJB+ZyLklCu1gVT2rdEz+lW9zIuKmjhqR9hnBm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmwF5w7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmwF5w7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB87DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786450833;
	bh=D4bnErlD3cMNoT+nHv3jSL7h7cliXGeZy5f0+PcSRMQ=;
	h=To:Subject:From:Date:From;
	b=fmwF5w7NGMlGv2Kye5x6eceeuRFY+EbhDaLTNv72hGyQIk9mBLoHTAZm57NSHCVS8
	 e2/IGmLrYAOJdfeDviZcbtdGy7MmHwpTL6g8skZ5svLmBwSsV5gxWEQDRYFrZ4gkQ0
	 ongIxWKdjFeHcHdDC7loArKQnGP8xKTI6huJdke3hGBLyk7AEmf+pguNDZVUuHk2Nj
	 bigzdPE6gJ/mVJzea6OzQZ1reocYJ9Jq4rIclatOk7JoEAhfDgAmwpznrx4Qt8hTSf
	 2NLK9wwFw0L3hwrC/x5jlQrDFIaiIHuo8ap5u+iZPewnrOak9dBfyJSnz2i0qLu01A
	 bLWxmbBpOziEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91CCC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645083368.4090.12534079461272811759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25d747f8b8d716383166ea1c8142a9a395a7473f9f6e25a236f5786e9af9d00
Date: Tue, 11 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786450833
