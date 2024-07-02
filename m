Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568AA17C72
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719909323; cv=none; b=VrPLcbRe2nLI11feeUwybyIiwtjmtCZV/jJPe4w0f87jR2WTXNm3A9UArEpxZY+hcXxuPzSj7V4e2MjnAh+vJey8huwIFLVmRBjftjsHS/6og8IyPR03uYndFq7c0xr+x7H4fJWjx/CGobUDQLpKSEmR1DNk3FqjL3xBm60ZmxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719909323; c=relaxed/simple;
	bh=uW9iltd5XBfoxTcnrhZBrbNM3ILMysAj71/e7+pN6kI=;
	h=To:Subject:From:Message-Id:Date; b=cTcPDM+53x98tjpYt5mqHn4kFGXqkzmAih4OTsQPw0k5zE2AnTMf4MA6+1mRqKR8tawOPgANSpzCD+eE9FDaOR5BvSSovwepjr3bt40GPil9UgeQqHIzXHkqn346+MwA2uyA6G514vSbX67YSLNyp6aX4jpKODd0NBP/6Z20/LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5GaehOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5GaehOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9F9C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719909322;
	bh=uW9iltd5XBfoxTcnrhZBrbNM3ILMysAj71/e7+pN6kI=;
	h=To:Subject:From:Date:From;
	b=B5GaehOL/vUbSco5wzGCYvojgRfHOl+T+vjsUuMCPjbvchmTdBOo3qXpq9dB1z5cv
	 6xfqZjZirGJjthw7RcHD4mO3v1elBy5UYMHey7QMTq2Le1jio0W4nKW4JJUrIjFXAy
	 8DViXG/XSCDhrSqXesmKE0BFl5PcoQFMUpKhWGmxJF/4z1MlNU9DIRSzufwpxuLNky
	 VKl4D9MjAghW3DBKB0iO5thIhdbUGDn5VzRYlckMBJMbbLSdJnvVQuTpimNnU0DBnv
	 Btwk4iQxe5cc+zEaTJVoDxkQriNYqz+QNOEWfVoWjoDrEISFlUZWAnHz2dzbGT6TTC
	 bZ5jIGpNq4Jcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C504EC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990932279.13726.9541674721631901021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4759f2794d88ec16c2b61feae7364e55027bc4b94ea601c11244516c1a9ebdde
Date: Tue, 02 Jul 2024 08:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719909322
