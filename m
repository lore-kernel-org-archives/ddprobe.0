Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AE81EEE0
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745909394; cv=none; b=XUBKH9jUvLP4ahdw3pY7I7tQKhInCXv2VBkVt4zMb5y1CYPJ7Avfx0nHnff/UJxKSIvXW2kVsVtEorWe1vd+ewUds/isBXdQMX307zgQxaigL2KQhBkhZgKTWhSe6cEFUpWLH+w+dO2s02450SiETTORidEXawEAAZU7zQJsYUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745909394; c=relaxed/simple;
	bh=5h2NDiyuWKU1quSPI7lB4+7owpqgmcBflxExBHPvThY=;
	h=To:Subject:From:Message-Id:Date; b=TUjk9H9EfYV5ybSHYtnpYVAzRhdLPogqo5wsmIrsfoeF2/M/ZmXhVKQIS4Uwzpp3iuwnUqSaWj526a0idUBNvgwxnbX3hm33ujEHQXBQKPLIk8+SA1bjWzifKWHkd8vE37Sw74nLu0+eua+PsqJlT2AJLa647BoPCLqNm32k5Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwUqzhtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwUqzhtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5C5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745909393;
	bh=5h2NDiyuWKU1quSPI7lB4+7owpqgmcBflxExBHPvThY=;
	h=To:Subject:From:Date:From;
	b=iwUqzhtpBLNfnQ90n1jpwiSTORDbdP2PQcqTLmzL+ugigQOjN9QLXrc8v1DaUrEha
	 +5MOmJ+IKyxWjCNX+77OLwRCHXTzKrueTFlYpaV/qzuZpvO3xwycE3XzSuNc6Oe7Ve
	 VlIniuw/oyF4QDMcIjTBDsekGu2FnBRoodNpSpKdDD4+1IItxGdrLsEFB/mLaOVbk/
	 UnJrCeWicCXkRS13F3VrwwoeiCgQGw/ppJ1zhesMXWKe9dSrabLwiSdWzyDRaI4C6z
	 7Eow2BfyZRBVW6yDZVD23EUI8xAnzv33AQSENVP6/R+PqNh6nLt98o9EngnwTJkPJu
	 JwYO08gO6vT5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E598C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590939357.1556.17017613500374869458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2652bb268c5f4c640a650c5695907ff26ab7799108624ebba862f507bdcc50
Date: Tue, 29 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745909393
