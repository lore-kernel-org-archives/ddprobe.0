Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C342FFF8C
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766222634; cv=none; b=cmd4/hMkOieUmN3UaCqh7a6dLnKeA9Ks9YN2iYKoJhSZaTPMXvLtHVYEZ2/VguwXxTUSGzXT2eTjbRv/O1acfhZsZgjmoOAddzs3w9xYx9koz0j/wsjMMjKvScubylEQqtWUYpcFis7QWNKtB7nRbMQXRZ994RWMs6vTqwWV6LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766222634; c=relaxed/simple;
	bh=M6GrFUpsO5rrhFnqx4ElE6E9dovtJXiD9FBKXnZ8t58=;
	h=To:Subject:From:Message-Id:Date; b=XRFYXzc7UELIVJAZIMcaESpHLCSc9njzOWCHsqRZWINMpVL3JDwLs5eq0VLkU5BFkt6a9dZoOg4cHB0Gcb/90sigbo1kky/3kQ+rQkN/8Q5XH9mti+ilfQnFJN+c8y0bTbPEKSukL7TuVIkCdInS7E3N/bcVPwwHh0liNv2+EN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCTFTZpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCTFTZpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CDFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766222633;
	bh=M6GrFUpsO5rrhFnqx4ElE6E9dovtJXiD9FBKXnZ8t58=;
	h=To:Subject:From:Date:From;
	b=KCTFTZpPgMQMxkuuiXsL8Ms1iYc/2jYT7S39jgedruEpeusJszb8NEh21GHg+5Q7g
	 Al9ke+l2RiEZSAXrYoeTzKhqvBVQQw6Pmjv8s2VeLSlPeA6C0G1UkLl2bn0NAHk8wX
	 cE+pCzUrTGH7x4iId7xDI3QUXIX0PnEo69mpTFizSujFrW89NnoUf2/UYk6rceuisW
	 T3cQ5yHUct6vCpUdSzoVRFwa0lPZHubSmuS323Ahq0WGb4Nu75fWcxyPTpAwR3N41z
	 LAuH3brLiH9ncQqzgbZki68zraQVHUaDTMIHn0UgkPYo6T0yIdXh5DQkr7pbnNm24g
	 GQJAmavWc2RPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95701E6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622263358.18398.7654477542915384405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61ef253c8382b45cf2a604f146c059ca1ac07ad445921cce6949b3643c0f991
Date: Sat, 20 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766222633
