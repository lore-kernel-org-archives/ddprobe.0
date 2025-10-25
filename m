Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3697D2E9ED1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761417594; cv=none; b=q9FDBqJMj/eXztrHBkYPVeZA1AGBWJOo7WuLVF41AdZrxMcUf7mj71nzaeLdevMNq1EaBk19d9Tp9y42wnAZU4HwUiH9fk0ofP5MBAMq/s6Y8VBzlWkkXThnjOBxKNDLG2lxTcEFCph9m/aiLfAQHtxZsEBVknzLM/va/S3luEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761417594; c=relaxed/simple;
	bh=uLy2zW+7Kr84b26sOX2ZI9T/LWxwhaMRg+5aZj/evpY=;
	h=To:Subject:From:Message-Id:Date; b=hp3dGqEOZZ/lc7Ol3T7PgpvHuoRJ02bhz2iUDhI9XDJaLfr/+/tX9Koqkt0k7i/zjcXM6DYFrI7bjK1rLbSwTg//UTIuMMtwxft9kQ9sofcYsaD2Y5R98qe3wB+RxiQvVzfckyitboSVFL10nq5UdyIcR4yW9pBjMMptHT/f4LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6yvguAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6yvguAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8400C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761417593;
	bh=uLy2zW+7Kr84b26sOX2ZI9T/LWxwhaMRg+5aZj/evpY=;
	h=To:Subject:From:Date:From;
	b=a6yvguAnG6qPdr0geO9ZVIdo3G0Jm956SlMWey3F22llmYAbY7CD1gJgyPJpELf0A
	 QMeRY2aIj82XltdXfeAVjDUCqJ1UM/B5S3B+1/8UtoGKW32/euANiJntB1Z6uTtW0i
	 J+4pafPgTUmHmfK7xf6vsXBEeBx2VDqZVNuc3Q6lKkuxmmjJ09tqubsK7kyaolISA4
	 TJUivk4x5DNCk+oNhIPwd/4VqMJ63J4PxM+PNzMQtBdncS4StN1XGJeB1bnggvsF7M
	 WskQ7AuqP+mQ38tcOHqmNrr6exoGFbKDrwnJ/nvlnKJWhlUysf3TyC5YFKiPKKlPjc
	 Iq/kQwMGOsxwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9588BCCF9E9
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141759357.8052.11622969363211304021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1189a156e84433dbdc9c7a91bbe3f7deef904df160faba56aef5e758ce1f1ba6
Date: Sat, 25 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761417593
