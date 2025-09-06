Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AABA24166F
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757182194; cv=none; b=t27dNLktTDR0TB5vS27DFlBGO4IP/2QlFsay1rulzhv8CwH34ZcMKErGZZB7F8QH7+gJca3mQPPmTvJG95QVbNkx6fKYjL2/WXG3TsKVmEQAldZwDsBulGce1aYFQH5DsIxhDQlUJmOISii8+Xn3JwjfaEzzoFx30ZCmQdet9oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757182194; c=relaxed/simple;
	bh=/QnD1TpGJGNiXa+UXrrZLVJzIYga/J2mZYoj/ASGIj0=;
	h=To:Subject:From:Message-Id:Date; b=UZgO2gg/Z13nR8/49fPGWCLUeAlNZ4guQSPLsvBbAK9eHCTwpZSeahT97pdZZPmVmRIsmScCxg+DAS0m8rz6UfrYsRmDeV+JO8c8uEvQJekHHiaXCZp4bcd9M6A++4mykVugtcDnTp4nfvsdDqP77OK8usK8kjYQroilz386Mq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gR4UqzPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gR4UqzPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A893AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757182193;
	bh=/QnD1TpGJGNiXa+UXrrZLVJzIYga/J2mZYoj/ASGIj0=;
	h=To:Subject:From:Date:From;
	b=gR4UqzPt21cm1+xk3RG9p4+vLXAvWsp21HFzNh+PX/bZ2JpYaNXkvnZYSvsxuZOYW
	 jiey+qWu8SJZ9Eb5ewGD1osVfQTjT9lJF0Rl/BnfGApnsD3QEjEBgzGUXY995zVRIi
	 HjLI5gM7t8/dTIxwgQyt24Nz3gW654C90J5VivB28rqDuf/FphrxXCqmaZ9G+u7APf
	 jcIi5MxFC+/LhSFzMU0vbBuq6v/1Mel00CbiB4OWqVjloeGTABuPph1kEoiMZaUKVW
	 E0SpeIcoh2+rx5Y77Xh9TFQbVsxW/T4SsgX+pjLcezviCxxN7Hcst6pDHQe59p7vsS
	 RSw+wcDhKAkJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FBDCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718219357.8479.7993718077579317358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b78774530164603e2179a5829d89970fded6e57ac97063d266c3cecba17b67
Date: Sat, 06 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757182193
