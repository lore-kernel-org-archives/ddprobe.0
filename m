Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0DF2264C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763352714; cv=none; b=DJOCGopnJWYbSvvrjHdW4z+M8h6i7KqNqhqGHwU9LmqIEPF5HeZFccwYMc1NzhyYWWrbs8QCGmXfLKORICzRMDepXIjG93MNnXOcLmPjL1SHfEmjj0k5uKmJSgiOc0RYEJ2GyoV5tgD3Ec1PownUceJgze5HrXuU06CCBHqg0rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763352714; c=relaxed/simple;
	bh=suPxds/cy5JFBFbQTdT1sSjFbyNqHcBSqvjGYgZipj0=;
	h=To:Subject:From:Message-Id:Date; b=SYLgtays7pFCXosBo1bzB2bm9qlI+q5RnAuxEIFvmbAAAVV3CEy8VC8KwycDIi5UTfQlWOX6VPnlM6NvqnHglbiKasrMrIDWZ6DUfFPkJ/dMKSAxqWl2m2v/3WFt5iJb1HM+0R2Cg5gQKRrNEyuK1oMueDhQFXNIzrw1hm+TWzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ak/zWoB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ak/zWoB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763352713;
	bh=suPxds/cy5JFBFbQTdT1sSjFbyNqHcBSqvjGYgZipj0=;
	h=To:Subject:From:Date:From;
	b=Ak/zWoB12dnDeMtuI1GiPhsiUM1631jeZGTzYGKjV8fpbhk/tUByrx21lRsuDJUry
	 jzdpfbBt66VgyVETn+SzC1IU9PjhH0zWXG1FRD2coeU9sLhjsHUITl/e6JknvBZ+vr
	 kgCKMiJChqM3uLYuP58qhQWCsnsOE7kUQ+A+hIsZ9Hv+9z6tMMY7CgJjDtsONYXQM3
	 agjAiaPVRjU9vluvOn8TTTSmRKSMwpzuvj8Oq3QC6FOME1EBiX5B0mWQLvOdQCJyTo
	 +Zo/9I+Kda52rhei7rmgMGxERNeLzVMvsYBn1hJjmEanBDswW+eFkPdw84HbvFzTxi
	 pB4cA64n5kLzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FBECE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335271358.6516.7956301294095312479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2420445a5fde706312cd035eb2e1c9e4522ba0a60bc420df8c1af29f55133d5
Date: Mon, 17 Nov 2025 04:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763352713
