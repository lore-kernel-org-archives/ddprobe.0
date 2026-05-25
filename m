Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1979125392C
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779743554; cv=none; b=qezLhjQvvGK2gZ/OKpGy7yya7wmw8PhAWV6mrfHig21AOcEQZzYkuopvNenN1khA4/M++y9LLlFW/JdAAeGHibsAlhWzGiOsAoY2nGdLgyk2EkyTCZKDsDrfTmji5o2h1jaf58x5xcgYD1r+nm5tKRVUOhqpkbYk+utbe6KTYaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779743554; c=relaxed/simple;
	bh=JbnWwoBDLCgvrVUpt+YYQl2aenG0aHt0sRaLp/Jk8Cc=;
	h=To:Subject:From:Message-Id:Date; b=fEzRURbyfE1OUnycjMeu42ZEAlox9qg83XvMBz5zGqHQiH3AAmT71E6AqWAtpx9fysxgqhnd1N6c3wMCZrwLi1dpkEeMh4BRUUATwRIJ27KhaUu85f6AcFegMsVqF9dOV3hMubkMkOVwosek9kEEfntc6Cwe0k5AQ09gO59v2UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lk8rLH9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lk8rLH9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52FCC2BCC4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779743553;
	bh=JbnWwoBDLCgvrVUpt+YYQl2aenG0aHt0sRaLp/Jk8Cc=;
	h=To:Subject:From:Date:From;
	b=lk8rLH9bDBbX4GSIhrKiEyC5+guP6YqAdam3b2F2RydlAD7wLAY8kzP1OW1SQ6TLC
	 pa4mEWrLcve1xC6mxMKgzWBSpMuBMvCKPB9P93LOphSGA/uWYaWfWgvtq+K8ApgaDQ
	 TNI9tqZJrBuxeziddCssaY0eFHeuT5E4nPXrDQ00b1aQTJ/htam25HpmwOKmHkW/OG
	 s9mPsM2uU5VQFUf0J0ysJEubz61Vf8kE+2KLYo2BIGc40phYokdWc4NmVTDRAxw97d
	 U6jdC+sS10Id9LlPPK4TDHzCHSg0+0M8inS9XJLxEMnilpcCHDDiD5937Ovrv5AP3p
	 riA4Ihf9ewmgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF01BCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974355368.20626.9072797457408062552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09344a9b138f3cd6f6500ffdfe72dc556e45a86235bbbc7555649fd5a9ef1ae3
Date: Mon, 25 May 2026 21:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779743553
