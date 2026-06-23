Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255E63A8FE1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782190594; cv=none; b=ICrh16GBOytbp3clDcnicC+8wB2HB9AyxCtsj4XF7Oh+rBZF8IQ/+eUy0frQajdGKFT+GGkZz4Q/qee2bwStlRsWRJsf3qpb+HPyZwAh1uWVH5jRu5LqEtAg8f0XBHlczYetsqBddMj//M2hiWtyuyUR5l08vlLSgp/CV9l8VKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782190594; c=relaxed/simple;
	bh=IqcJn4uXlUKMtTwBPqlmFOXDZIIPWfAWnUQob53E0sc=;
	h=To:Subject:From:Message-Id:Date; b=LZiI+EpCeppaDEdu2NFANrqN1pJV8/QRJquyaMRbAqueK56iL6fIMzaY9fGDhyAz96o6b6GLjQkGQpbwsBjFYA/8DNbCQoShlm3fkCqqeVBLj0iQiY3rmMM61+df9RNVm2jQPq4N6TAxPZ24bS23NJx4ENzsRiH7mLDnLTiSnIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaQEz+IV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaQEz+IV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27B7C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782190593;
	bh=IqcJn4uXlUKMtTwBPqlmFOXDZIIPWfAWnUQob53E0sc=;
	h=To:Subject:From:Date:From;
	b=OaQEz+IVdtaUhzU588CM02K58M692qqCcie6EYxU7yCnsOZFqSSczYXLZMkj0cjmF
	 QAYoZS/5GdbhnptPPbUydIIuc3F1HB9+CAunVtnI96Mq4um8tAD+kNnDnjmiUjyk9V
	 57JKwba3LTBOvZSr3ZyeKc8VdRmzu79LX/ijUzkPAqq/5CQ1qE7PoUi3bydVTWB5WR
	 LLibYS57T055wMqT0vlt9Et0alXSFS4SJUJphFDZHKCqM6qzBJNLt7sYv9R54lzVsB
	 U5BkZ3ABjFJzSQ2iMtNA9GTIdiUV7imdntgoofW7h+LtDeP36xuscPhR4MzoxC1YkT
	 hcMeEkQc9U15w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6E6CD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219059369.32154.77751545432881381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee54a893be0129bb51c620e01a0dd526948cf742834874b730867270fee0715
Date: Tue, 23 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782190593
