Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663B04CB5B
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738697754; cv=none; b=QWniZ/0Z2Q632LrZWkSQTKNgM5UIR/SALR9ndcgB7JIw0q3I1nTDlhOd1VDON8EVbdaaQDQjtTS7kSaEoZqi+eTgSL2Jll0WoxNP+lIZbXnCbG3dESaDiUSnjwbdsIENxtHeA083Cp/D9L5XIpKg/6eaPC3MBvK+sx2vCN4hzEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738697754; c=relaxed/simple;
	bh=Y78J4w2idV2MRw1zkILqgZ6TOPt0yLqQgq3WXYAOUDQ=;
	h=To:Subject:From:Message-Id:Date; b=kQPKS5AYdqHOIxKTqOkhwh5ZOc37p7KGmrAw3jxFdxq6j1oV2xdzwz6aXs0skgulv5KiPTT0Hv8epMa3dbZB+yZMMmQUJf+arZy9EQtEIt4IjCID09vHhX1nc497jsebu/O3nnPEiJVnnlI7bh22UWKT2iS6uPBlNMszINTNfc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDsrfVCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDsrfVCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70ECC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738697753;
	bh=Y78J4w2idV2MRw1zkILqgZ6TOPt0yLqQgq3WXYAOUDQ=;
	h=To:Subject:From:Date:From;
	b=eDsrfVCom2fUzUYrCTNFne2BEHW2XCnKeQMDguVebFoRsxUvljrAtPdnyAbqSSBEP
	 57icSU0QOnnrW2T0lLD31MCXBEqJT2UCebxU7kNrSlJ1E7Wv0aHoWPB/tKb9Uk4qGH
	 3L8AFWbjHZYNccjlGyNJ8QoRuuioLn4/AFm8KMcuRhSFbhM4iEHkbwZejSqjDlWjmA
	 RK4iQWEj3c50QavqFTfu8vC70MJ6LKsJ9FcgiMy0b4fhgqOk9UFhcYp+BpjM79B9e8
	 KoGlTD/3gI54U8FqCGGE34fSnS1zVhXpoVf4c0mcn9cHSpPvKhlHuJ286Zdwv221JA
	 UHP2SsxrF0KDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E3BC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173869775358.28569.9650951320855767685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75072b0db509eb1c1922154e437ad725c4cacd15be3b09019bcb59087aa37fd1
Date: Tue, 04 Feb 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738697753
