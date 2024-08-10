Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168AC4502F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723295154; cv=none; b=cuuV23PbkXjo9wtzIXiJ00QKv+uW+/n990Tu+mqsEtX5d/52tm9j9lLguME+M/AyDMfZ0aBLa93rWJfEfFjyNNB71kvqKi84C5BRHvhCVnD2v54nZOf3mXbXj2pAdWQcPOroshC7r6DX6QZ9ni6xSTkdImF0vBhlJiw+BUlOLjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723295154; c=relaxed/simple;
	bh=dtnRjdjcmjPf2+NGBPFpWmoMGB7l+xloiLxZfbumkaE=;
	h=To:Subject:From:Message-Id:Date; b=hNqEcbdQBQVtmNCH1+shXmmZgKJzSH95O8mJNl8eHJoy/t/HXBds4ljb2ATseEpWBNxAqYrYwXxrw1PPwlpF6OaFsqdi6q/VAT9En4+7wLOct/lh06ppRUTDRBdKgfAu5313ZDZVjCFOVU7vY8zp5KHI0C0lGKUyGPRal42rQUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2obkGM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2obkGM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9447C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723295153;
	bh=dtnRjdjcmjPf2+NGBPFpWmoMGB7l+xloiLxZfbumkaE=;
	h=To:Subject:From:Date:From;
	b=l2obkGM7v4j6Y0GY9dCF+oyiPFTH1gK9dITo+t3s21JoJ3Nu6Vm/lAGiXCGKrQ+EA
	 4TiuUUhWu8Hn6Khli+cIVKdJ26ME6U2h3o3dKLveSp07PAjwAjMi8sBD8QunwMfkKj
	 EwWegANc1BahmLR2X9Bw+ie3crvvzQIoVsYUCqv0ATAgIoGN60TU74NjjIi0Dv/Sv7
	 tCw1E8ZjKmdJx10ZYjpvDFah3JuwT6SZQl4WKrIddZhhvSVqSvPBsO1u+/uAiU/I9O
	 /VGZsqG+s45TNEn+Hx9Rps59v1jSP3yjbZhnDr4zCBMJmAQbOje44fPPEMYC98QeSY
	 c3rZbBn2vE4Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C89C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172329515358.12801.6529543381959478938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6b65b916af8043bf51aac2b156aba3d928b321cc6dffe48efde4b4ff1a2e7c
Date: Sat, 10 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723295153
