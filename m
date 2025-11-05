Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D95721D3D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762319994; cv=none; b=g0lTlL2HmyD9yszGzA+P7j+0RVeQFfidLos1nWNBGUTfZx2sVGyz3J1d+5lk9GCEmoq0ALS466DAe0TWByn3tdYXWbtLBi2/7hPtnkq1PjMYza167iPLFoePlBW+QawCZrNhcVM+BSxiBot7xy6AznYJPMwiVoSHIKdYsF/O2DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762319994; c=relaxed/simple;
	bh=/CbOGgmqLrXwg9f4Bjjsnt2Z5aWkSwKwKGrSFEW+erQ=;
	h=To:Subject:From:Message-Id:Date; b=L4VbsFb6tn+BU9AHxBH7O2JjUL3DkfXqMRVf7S/pqT7WyYTwYWk7M3T0YHr9CigN2IT/7rUNOrLxuem+gRpM9n+juXa0xLLcJjSlrqPovy3fIcaonZHBbjXUZ0KNc780CNcu0lLzqFyGOyXjTBECcYFh4kWOGo/4JU+2NZNnF1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DShobALT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DShobALT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6002C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762319993;
	bh=/CbOGgmqLrXwg9f4Bjjsnt2Z5aWkSwKwKGrSFEW+erQ=;
	h=To:Subject:From:Date:From;
	b=DShobALTIQkEl42c9H0C0+sWD7YWq664e8LvWO1k8dDNEy2IcD6vB6p0P/ShEwbfA
	 vXPYKPFPxCUSoU8+apUWHoLtIORY+0if16eW/5nFdDZJkQdtD37oAttL+CgpWPJyVT
	 vaDNgYcOzBdzQlYQ88eFUYvQh0+L9EEbiMqCD1SXaOU9qFVW59yC0rE4Ml/ZWefAkH
	 XZzNIgOfUsnWJVlVqUkH7R5wPMPMB8tltnqZ4E0dSjhrS5Rd+J2eD67odJVTdZPpiV
	 OvSV3sgJUxbKx7ypQ4LGAtSVgPO/x7pTfuJtL92oxtGPLipGoZoMU8bnJ1teVCqLGp
	 sTC5ofaNAfPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A3ACCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231999361.10755.7366986896458622753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908533d23402ba2e1124d148fb6d3e76ddcd3bc9f04c942e7a015a35c1349f58
Date: Wed, 05 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762319993
