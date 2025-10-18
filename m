Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCF92777FC
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760771394; cv=none; b=ScXiI92IkxgITeFCScIEdYxdratV4hBDu2/vmi2mQH1K1BgohbIAiMeIyIBJYUQkrLnO5vjS2IDQFPEQy1Kom/a/JVtt0IiE55q1bAdw5lO7zfMFIA+sq9sjSeEBAwXU3CGy5phWG/uUdZft95ajER6xmw+ILy4ts/C0j8oQfMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760771394; c=relaxed/simple;
	bh=R/LiQry+tlcCekumYhk7D74Dq0xFFBAbmTyJ1mF4n9A=;
	h=To:Subject:From:Message-Id:Date; b=heKtv+LUu6laOh6cz+YJyRGsxsXZUfHoauP2scDqeqopF6TltcNhRlmrOJ2asExEDQh4vhZNxtHlYN2PfzXji5xAN4nDUiNIjTILnzoQnTee14+81YdL1eCz6+5w5Fdi81i11IO9TzfnXHNfxkgmotAU5xWhcEnc0Vr01vYWky0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSoWBCJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSoWBCJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE11AC4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760771393;
	bh=R/LiQry+tlcCekumYhk7D74Dq0xFFBAbmTyJ1mF4n9A=;
	h=To:Subject:From:Date:From;
	b=TSoWBCJyiSLsUaU3QQjB7o8NmBPovjj059DvAs4Cao1kGrCyigIPU729NaLQNxO95
	 LqXAYNIuZqVr9ry3b9jKaeZrLrQoNY2P/zoQNutwSAkmBZKPpTXvXD+AlKgbLUZ/vD
	 sUA9Y43P+BNrpJH2J5PUhiEc82cbIckI4kYv0pB4uRnZNNb64qMiAqO8TNK10oVcFa
	 TELy0q02206i98t6rAITI5u+nhtTtDalu6iiUEtRXBEfepXq3kFTCAo8+2OKXu2fiR
	 WTahXNC3CrBQEb68/eozdKRlIML/fXjVCKzdo4pNDAPgHR/qmwYT7O/aGELClOgey+
	 fD4Xn1OPTF9eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932FCCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077139358.6622.9706670397433085418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afec9cec6429ee5da731b3509e0bff55284a6363d5dba0e6fdb200f70f0b9cc0
Date: Sat, 18 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760771393
