Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9B586359
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765911834; cv=none; b=DyG0BhIcLkwIqT82z8yVx0wQT2Ac9obuSSloVgse2ljJN42S1ncK/pTLT40bLenVankyd2FDaQClIFPefXu+kS2yJDXZHtH/HoVs2iB6vrh8fwIVBp7eLZlQfGBwv3vY5Y8WyO6iEMyk8HnadyXk8w33L6QpzWakjWQIDdCBToY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765911834; c=relaxed/simple;
	bh=EC0PfVJ2cCuLGF0eatGY3wJqxfCRUxR12g49LksYNnQ=;
	h=To:Subject:From:Message-Id:Date; b=R1o5uuQVYdohFyWdmfRzr209zf18WuirfBXapBW9k6hb0fBE2BsTgvy4EBIG8kXtcwjoiBMRMV1NrV6xHa0IkiN71It8IY3CAy35kEHZ1roRz4nrYps99abRySEinlvJZGYjmdfmoCW1SJIkLKC5AG9qPO/HNqDKyXcQzCuzWO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl0lNtSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl0lNtSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3427C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765911833;
	bh=EC0PfVJ2cCuLGF0eatGY3wJqxfCRUxR12g49LksYNnQ=;
	h=To:Subject:From:Date:From;
	b=Gl0lNtSHNg5d3qV0+0Tt2V1SnmSOq32IsOBNfBEPD2sWCl3NEs71DMA9TR3L0617n
	 x5M2VUVRw11q+nELIkvgq4p8HytTMR+hNQVhQg7uDHurWuDWiVTYK8a+pcHM9YniI7
	 aIEXTVSL/uuIl1qoTV41dz6gRZy6ue9Wxbi8JHDvD50RwwSIMBwH8S8CWqaGrvZ3Jk
	 ZMheXVjJATxfFCTcFEIfB5K8kE/6+h4C2WbRg/PJwaQ+eT+NmkngCj/ZOfELqRM8Wp
	 0OUD/BKVVZoCoD/WFdz2bV5IjKTjXyD3KI13CcaYmhg6kkLZufQ1ljRVdx8Q7fotEF
	 GSMc2oewapBxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F05D609D7
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591183358.3780.6978028308329121334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15584cde57b5f310bcf8a7e48f0fd7598952e4fe7c160b12b51ca09ed26bb92b
Date: Tue, 16 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765911833
