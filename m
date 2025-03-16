Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC1C256D
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742158794; cv=none; b=ATED5M0OgV07AsEnNkMJD8Tgby0cPT05ULydxmPmVGKwDwa/wHhKb6XQl1G8I+wNJHqt4nVoj6hlH8sqaEcVhx5CMlKS4xzqRcDJJSOGXkyofNSqWksi1UdXkc5rlQplbNzaPczbZkeCDGXS8jgVlRbOneTF0tAeG3bAE5WfNf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742158794; c=relaxed/simple;
	bh=HCcy3c1qfanVtCy4Gr1jqBkUnZ89bAxu8okyinR581o=;
	h=To:Subject:From:Message-Id:Date; b=aNakVu6XrstGQCSqvJhGrPangVJXrdKKsWFXRfcoU2fN7h7KJMe28ZOIBJ3fmm4zsFQ+SPMbtMEemVdYYWggOIUVN4UuE1AuhUVneGKjhPJZgCB7qnaFa/EFp8DhbutWfSV9NPQAtIA0C0QTrj3vQkNsSHssgSi5tQI0WX2BW+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji17hTin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji17hTin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CDBC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742158793;
	bh=HCcy3c1qfanVtCy4Gr1jqBkUnZ89bAxu8okyinR581o=;
	h=To:Subject:From:Date:From;
	b=ji17hTinL2vUbs0u2397aqyVP+xmzx1M/yBFHGXTc9jKYjUL/+hATKE16eUl2z411
	 ulJwz0w/hPHvHNqbjmqpX042zqy4HnUvMvTMO6KRQuRlstaDQ+T9qHDyDrkQh3sXCQ
	 UY5+Q3SimrpUsMMZwygW6SqugsJVSgAShbx0kjEsiFAO4xHxU6pZSKRi57uP45hpuV
	 76gNrWrTu6aV/vqltSIO+dk4U19iBuksXm5noQe+MA7a/JRmrw8EmK1g4ufiL5lWYc
	 cBgjTiGbxAXLGF0SxLBEbLzs7nahhdGjhxzIe2kilBay7GbGGCKZhMe+Z+przGviPb
	 MGLLO3kewqKeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B0C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174215879358.19399.5602453090146850484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1e038293b5067842e26df667dfb03a1fd3d69085be1a177b0bae78af9413b7
Date: Sun, 16 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742158793
