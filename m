Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA652CCB7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717285523; cv=none; b=jctD4Ny58nZ5uhv5x6YJkshFZSNLmSTDKu/M6GiYgF6mYE5viQMisWCH22pJt10SqHGUuMGB5taPSFgl6h/IlMRoXxd3ly9lB4aCAvzo393hzMVoAtZIxzQvB6BzpaPOTLN0frV4h4V73Ppy2HyDc5s9LW4snkOfSSg7B/wpolI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717285523; c=relaxed/simple;
	bh=ZlplMtq3ZtbtMYUnzfI+FIrz30yYTAhlbzjphM99Vs4=;
	h=To:Subject:From:Message-Id:Date; b=WuVQ2El6xGBoKAurVmYECaj2COCOisWpHhgjU4qH++vAAa9MA54WzfOjGCg1In7QnOKfESwl17V24l8AfhwceasLW3WohA9PkWXRZQu3F3mAKjK1DF2MknR6w4ni1CpmNU2lwlK3Fs868qywcQPps53Y8ebnSUE6Jyla7YBu3oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAyKQUvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAyKQUvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3CDC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717285522;
	bh=ZlplMtq3ZtbtMYUnzfI+FIrz30yYTAhlbzjphM99Vs4=;
	h=To:Subject:From:Date:From;
	b=BAyKQUvLegd5fzLEf4LDQGBXOZR2wfOGurjPBvj8ve9mk54e6fEFLY7ZyfoUx1UjM
	 71d7nEo7OXEaIJAxxYlGwazHvMs7UJrl17nPMLHG696wi+wJfRMyZzTlJLCpUfC3hV
	 38pIIvFTkCr7pqPwfSiyOoz1CB9HdqiuMnw9OXHgjYKTCLldLCfd9FJkgdX8HR30i1
	 rUF1kzIef6fQu1ha5uB7vNnoolT6tFxeDsEppuXmWCNPDfEMRW03JUecMURpUYAlTM
	 vTwyeBogyfpvzMPjZLsSvEbeQCHR8cQLs2jySlTfUwJNZ35r8QT+0ROB035rKhp72V
	 KgrN2jIz4GA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BCFC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 23:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728552277.17816.15622932076226285602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef97f621bada4df7f2874b2f866cb763dfa3ad8534f9261eecf27590cb16493
Date: Sat, 01 Jun 2024 23:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717285522
