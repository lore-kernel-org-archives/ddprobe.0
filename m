Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C86D1DA61D
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730976354; cv=none; b=U5uIjb8htjAE6mbdZ0sTyJS58xNIN14zj9xc/07WHaZeh7CFOXzMQP9rdFkPsHgdPyojt1Dfqb9V8WzV69k8W+gJhijdatB6vxNOouGnsUU/DjBNL0IBlWyCjYgrksWgoyJQ6n2IVMA85ZY8DmRttEZqGT8l1nfyfcG/kX83yas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730976354; c=relaxed/simple;
	bh=pEZvtSQEzXDveqQH4AGCwyUV/MwVH93NMMkz4lM5GK4=;
	h=To:Subject:From:Message-Id:Date; b=SaykK4xLTtMyofzZPq6yyBkdPKYeMQ/V31V7zZZqXIxMrBajXbklvh0osjtbdvgseJfJC582Wx8mD1zeGAtOGfXOp73u6T/8af4fUBOIJ4ioFw0bxNMEQ0oAPsTEYJ6UX5Uj2BpgaYsTPsQbu/mKu32m8IzXZu8dexEa4imy8cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3ELW0sR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3ELW0sR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62BCC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730976353;
	bh=pEZvtSQEzXDveqQH4AGCwyUV/MwVH93NMMkz4lM5GK4=;
	h=To:Subject:From:Date:From;
	b=L3ELW0sRJzoswxMl2rSwiRVh7amvkEN39Mprx2RPDhzMLRpWI2RupZxQ+UVezd3Bd
	 yRCLk5CcbbX1FHLdZJbSmf2KvmfgWTqXz3jS3PqOGwNPLJjxntavyG+ZyVmVp1mnqW
	 pCyPOYPzNLUHBN+vQnRff05basf35YgmPWrTWP3+u1HzUtJESkKd4a4nxMwXy5XS0u
	 3sXtyO/Kc0RvPl8VLsYYAyojLIkdKR+rsAy3rybik8ahvys263vzarvwCSCQXWC6Yd
	 Nou5FVNqZOzb12HSbM52+wgECXD3/+n/zIqZ8wg5fS5o3x84eeFOc2olKZ0Wf2WWB2
	 5g+LNJW9YXbxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94209D44D56
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173097635359.2780.10625422818584679245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6cff2456d0a085a166dc5deac18409713f0df554ec7e560218e4a3a3f9a8d5
Date: Thu, 07 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730976353
