Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DA41411FD
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722292554; cv=none; b=FeDl/cPkhslxOpY4oBAY57OxjwbmLoZxIFmqXB6nQUZoCyDGZLB8PxX2h9bAy39RlmdqJUKUGxyQaPwdVlX4fZkhlNDl6Gxemcr2sF9Td3DHMxQ+9tXHzRKFGoHtHyojHMDkiQRNXaitiL7mmteG38lhZ4X0v95W0W65/xAb+uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722292554; c=relaxed/simple;
	bh=ADqQYtkdm6irovXE9AjiyrUIDbAM602oIXbs5qbgMBw=;
	h=To:Subject:From:Message-Id:Date; b=p4CEsi6RT4v7RGn/xsnA+Xj4NEtUE9Ph6nXCYIEvOGt+YmCjiIJqR+eZhjqFGKq7XkHgUF691GIEAwTFUIUF7pPny73pPtZqtnRyDGqMOMzwcQzzd8jGqwo31s9EHKmqCW61hEP6u3QCnxM/3OQZq6Wtpqyrmiym9Yam0JIxBdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfQV5YRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfQV5YRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47BEC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722292553;
	bh=ADqQYtkdm6irovXE9AjiyrUIDbAM602oIXbs5qbgMBw=;
	h=To:Subject:From:Date:From;
	b=KfQV5YRV+kHp6EdrVz/HS9SF/e93a2Ot9Mq5roRYfnGQABAv2mhiwRLoL4ynLgmkA
	 LN5kE8FfBOOmUCT/juPE3tWwBaqXFpYZyH7QYapugglyhhvjurZ1zaHla8lGiewb44
	 piUS359YUG1FwTWQXScyBzZcxw6ABeC/aJnFi3oa5MRrcyiIJoK8SV4sMnrVd/W74h
	 Nq4Zc6/uapfSPEV/pfeFRpCZpk+oCFj8evZBXhr8+IAj5VAh+TIgPRKV0kkQcrOUMw
	 aKnxmjzLgw47LSkI2+m+7BQglNFIuDFYazPPkYy8JgtnL2WpIBqPsaLGTOhyzeXy+G
	 CJQJ6AYnOoMXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96183C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172229255360.22142.9114544868141716974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc7e88adeb207859f7990257bb6aeee08b1dcc689003e5d0de45ff10a45ebfc
Date: Mon, 29 Jul 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722292553
