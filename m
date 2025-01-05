Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490A31876
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736058354; cv=none; b=b1nRXqpWQENEbzmB4sfTObty3MB1uBhOKuaekgEuI7GUh8/EkWpMC+t4wYIHvk+hrFrOj9W/t9UKfTl0Zf5di268N+zCnacHH3+zZDFsxwGZmJPRqCu8GICsUo53cSD4gN4GIah410ZAeruzgLOZfamxrEmQefch2/qGFz3OH3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736058354; c=relaxed/simple;
	bh=4O7HZzhazQNgGn8gq8XLU3ArKuf7k44Wh2sKnf2eswY=;
	h=To:Subject:From:Message-Id:Date; b=TDYNb4Z8T4goyNY94qK5SkXoa7IN7etssgSZ6mFxdX3gw3M5JA8TQ2zU1JfI7J3FEtNiSti3CThK4nzv1POnGfCYk8kBEX01gMeJTNRF1Guc0NCBK8qnVgWzoNTebrNbKYfS129L3j6hrnx28SmXolMy0bOgGcPBLHTIFi6CYGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCm7qz4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCm7qz4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A0DC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736058353;
	bh=4O7HZzhazQNgGn8gq8XLU3ArKuf7k44Wh2sKnf2eswY=;
	h=To:Subject:From:Date:From;
	b=jCm7qz4bQivE7HGUB2AotDib3v/7NOvUtM1SXSRzZs/94pw24Wn7EchuJmhB8U8ym
	 U3LUFsnCgI+400WvQxujFLSd7AAaAfi9GJ6dnXHN0aVRcb1g8wZDj/Lv/CQiY5LYi8
	 xiPQj1JJFXuKDBXVm0bP49lPzwOybVFq7MkYXnM3azTdToztjqh6f2044VHOC+iAMB
	 /nWRIjQeytPzkLG1/8izr3AK45OGSGSMkrE4z1YxTlNaXHMiePiBGaamUxHsCdQIqs
	 DWdxw534cfb8kISplBbM00cpAFzqfNU4FyQrfFc8BfRgViZMyo5X714uOHUC9dwTFV
	 VKSu/6950V+KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9474DE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605835358.2652.10521170742564837377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc760baed5901fc0600c3d28e3f5fc6f2bbb94b12cd5d901160b4e993f4c35f
Date: Sun, 05 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736058353
