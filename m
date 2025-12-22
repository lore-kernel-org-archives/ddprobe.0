Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180C021CFFA
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766390634; cv=none; b=uwABOVn0RU99DvmfaGKhulTfhLmMM5Ms/joBdYnMCsTtnp9hfrvt8w+Zo3kA67sLcp+jPUBiVL3ptG/r3FrvlvJVXLIeS8PfbZvda0bhGTgoFyuamq9tZKM+V74MUicbjrgRJ5H0/JSEB+HjCSW6Xe6nPLkmoPy0DH0Pv6Vqcvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766390634; c=relaxed/simple;
	bh=CvKB4O3LzCKg4KhUJqRZkeWM7MOo0XyKgxqs/uZaywk=;
	h=To:Subject:From:Message-Id:Date; b=n9tdqzGC7d2TPhpNM+U2YWyO2KVBmDEBAbqmTwPRzZzCV0nz5Gi6cSpWnuLF+GQkcGv7b93Cp0G7E35c45jgWBeSsrlwyKUTpM8oBrEhgY6Z/vge75fMNppVj3JNskVQ5TqNYq8QyqxCSjrgpqcSQC3ax6fQ0QX+Axw7YN1ma+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvFiE/tT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvFiE/tT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E14C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766390633;
	bh=CvKB4O3LzCKg4KhUJqRZkeWM7MOo0XyKgxqs/uZaywk=;
	h=To:Subject:From:Date:From;
	b=lvFiE/tT2AGCKfHqtfrmwMVBe9NdsVUCcURJ7PhObZq7LlULX6W8/IlS9bIKAvia6
	 hO1PyuLzSRgY2chCY0k1qCz7sth4T4dUu7UclVe492eK5iPznRdI5vu5NthBJAeybh
	 q8U0/VZM4PZH31PcFlR/e3xY5GCz/nY7ghDdn0hYiqEEkTxFCFvxv0W8CCffMVf5f/
	 HtnkZVCQuFe/+Ug0vZVmHXTNYdlaUkZNVpl8qunWjRDbw7IehddX8b8rpzR4Oz1pLk
	 KCBITqB6UITtFd0FlcZz4fmXGWXdVChXOeH3YDv6xLlzlMWPCHHDEnvfpyZOFziMYK
	 ZpVrO7sST2fIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CD5E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639063358.18949.8461567498773516586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5496bb6421a03aae706e1ae9ddd615bc68e4f357a8b71a1fd55cab141d047b
Date: Mon, 22 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766390633
