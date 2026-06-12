Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E68D3D524C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781244994; cv=none; b=T9Z5UdQBCHTQBeJdOuv/KmhIh5vtoz8Uk8TbN+L+591JDRa+wDPl7XzghWEo1RlRBsAx7XUUNwJa5pZMhO9wsWmL+MSpCEVa5Bqecg3aOlrnxC/OeuEBFF35gSnHI83DdwWdn6s8Pl4d4TExECOFafjj5zVca8pzwPqxbswvb28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781244994; c=relaxed/simple;
	bh=xloQ57rsGDC8js85zOa3stJArD3SKXFaZhi2fssz2AM=;
	h=To:Subject:From:Message-Id:Date; b=MhvTI/0a7uLPDRp9IdNcXeS35KUzpqkk98diLDfiK1RSc4Nm1l0DrzLCX6XEMBrziAF6JzceFvspmmTrUoscN/3qiPRL1qVjZNcEvkM8aIh+wnsSA8KWDPMENaFS0Ulqai3a8j2zTLeXYPhYuwiPC7D50dqM0Y/sgYDs+fP6eyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6B2GU0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6B2GU0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4514C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781244993;
	bh=xloQ57rsGDC8js85zOa3stJArD3SKXFaZhi2fssz2AM=;
	h=To:Subject:From:Date:From;
	b=r6B2GU0QSwHUSGPVisRAXrApxgBktRD52cmMir1u7ZfDuqAex0MpVZBT6FgBK78RY
	 p8ytFWCSqLR+wo8nDgN2kG1Q0NpBVtyogXfS3AE0AHUsy+6loi1TH9ndXb4I7r7VKg
	 qX+WUbFldDv8b/qryK/Zg8Xj8uU0lhaPz+jQ9/DNJowEU+e1VcAMDm98zMMPt7YYjw
	 SXLJvg4p0sWevj0Xq57Lrbxyd1e1xooBznqvIrBNK0n2enr36TxpSIjHqZaMmS5dso
	 0ZhCd+t7kIuQs60y9ck5wU9zkT/6wCkRkg5VXMqrGX5TJ//aaqW/ia5QyJqxy1HnVO
	 rwoI0ilGK3GMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91D8CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124499368.1547.10853655341372728077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a7a16fa3da1318a5720e43aeee790d447cfd1cb7df5117e1e4500b15a7658f
Date: Fri, 12 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781244993
