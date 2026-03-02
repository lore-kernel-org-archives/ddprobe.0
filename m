Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C171DD889
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772438694; cv=none; b=ojGiZoqE9Iphmo1GyaRFdNF/ncgoaA7Zq4WA2hpesPipSkgl/TYqPLuEGR7wtjsI+R+FaOQRiD86R3oC0wJ2//JEOB48pOQ67ZB6KqFc0a9OPVVFFDYcRNNYrD+nhn7OkIdacSSLsiD7D55TNjUFsVUOnlMYjQ5NAl/csL949U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772438694; c=relaxed/simple;
	bh=XnTsjATZWAr1wVLLNsE+gdvMs9VWbNTwQbZYVnloUlk=;
	h=To:Subject:From:Message-Id:Date; b=Tz6OWEMQ2nkWv7OzNmh2uKMRdhNG8GceeN1iJkMebLuqdXHkyeiPUd23uimt+rJj2Y6gmKeUjSFGN1SKZmaz/KrjBM1mWwJf2tNZUXovJhY1polCi8g7MBrVC0Mqoc0UkM8WwfxHPO57HkmFJSnOH/YnbvA8kj6BWsWtSWxmzz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd4j5Zlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd4j5Zlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E87C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772438693;
	bh=XnTsjATZWAr1wVLLNsE+gdvMs9VWbNTwQbZYVnloUlk=;
	h=To:Subject:From:Date:From;
	b=Bd4j5Zlj3iPLhHMc320Tij2ez44eX6GqN2FxzAYjx+8YetZoMeip+dd400SGNosnP
	 /tezPGkG0WKgy+wYfaCDF+BO0E+nzQKFeJKlPmRfTeJE+Z4HeildhoT2nWV2pRCHj5
	 79gtv3CuQwwdl1m6H2W6gWmL9O7ONXUHgEFzUpJvs62HqWUHBFEitgmYUpXjlekHfF
	 obAF0OBN/eWN9GOvnoU3jYKEWxyP8lSAiSsX1Via/9b4Hr4QraKVr2RxfCvkaiTf2X
	 Q3yDFQ7INWO8OxCckR0jDClLA0KXNWOV1BqXnBDZqIJ79PqKlzPY3+Uj8Z19taN7+3
	 Hi/c+9W//H+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A460FD58E73
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243869366.18173.13312979205912431299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f22c775ddbd4b6c62c2ed539f08a23d6840949c7d4efdb456526be3e5b0273
Date: Mon, 02 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772438693
