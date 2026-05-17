Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41939405C20
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778991634; cv=none; b=SK6Yf500DyzMvXRFB2VxwtCp6rKfzCui3XIc5yhnsemDhEmhbURrbHk8qZ+EMJ9n7VW0xqRF1XIHp2ybrzZ8/Y22aih8D/3P50El+QMtkBdTsTj9LHUCTSer75JAZhHud4xPlWnrbmvNx9tFaYo6yoRcL+eORs6iGwp5oh4Mc/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778991634; c=relaxed/simple;
	bh=VbwqX5GxE+U0OgGMkucOpvmfTlMt34NSJaJsxj7/btk=;
	h=To:Subject:From:Message-Id:Date; b=ZFlWibz2oI8VqG9M8lzi/OYTbRen1s3tEN5Pp7S6gPJ/fw0HK4o/pq6HrKkv4sv5BaLWlRsbv+ojK+cUndDoEfWDA4Az/KJe9urhq4LCa9yPHUiuiFqZW0lLAO6NTVBvyXxULc8hkPjuZLltDzxutugSTNz+RWxBIlyOFu4pdyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYqlrH6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYqlrH6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AC0C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778991633;
	bh=VbwqX5GxE+U0OgGMkucOpvmfTlMt34NSJaJsxj7/btk=;
	h=To:Subject:From:Date:From;
	b=LYqlrH6+K2lt/Im20+5/RZERJ+YKwLyrZa8WH0uWWwMtp5gPXlYkrLT3N0fRQDDU4
	 Lefakh1gGagT4+O+9YRyDtUfkfw7qq/FS4YYe7Pq2IPs/cSKYlwIQfRXiRv6oF+QLq
	 0oMf9Jbi4jWwJ6KyqOJFzniGNPpTYPaHcceIMy5gFXXGsNGHibWVA6X6JzZmE0ZQK5
	 UBCKT55fT1v20yW0XLy6/+y87nV7zp44tEXU1MQR966zv4HxAkqagZ6JpzcU7TCw62
	 fP85uJnoaQ3JM4cc+kOzwQXradCv9wvtUg3kAfIjwfI8j41WYitgfyZ6/1P6bMoApk
	 Y279Tce3P0y5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D99CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899163370.19708.13842702089509911824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87d42d22278ad9500a26e6071ea2dfb1561f292f6c27d224524cb7270dade1e
Date: Sun, 17 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778991633
