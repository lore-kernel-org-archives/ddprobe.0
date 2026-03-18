Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05131E55A
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773797094; cv=none; b=b0/oWdiAM6M6h6M4Po2qYFlXiNnrGPcQpeLbSgDV1AuaNk9UeMSc2n4tvw+x9UZdLEwIfk1RSqs5HoUp26Zr4EzM8eS9sUBKUbFgwzoosWMO2MQ1IPOB2nzLkuYpR77nGHvxneBDQiVpcdoM75OhHFSe+9sxcDfEZD6I31pN+tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773797094; c=relaxed/simple;
	bh=qnFK4pYpiB/Q0paLjGMGnL7v5G+BUA+aCj9omUdBZJc=;
	h=To:Subject:From:Message-Id:Date; b=f265wnMYlG9WBEmodUFXlfT7Cerh5sa3K9lpSN81BT0GaMMa1T3+sHknObq1jgh8NfZzyS0OBQMW5hPlWK5J0xxWHrUdAK03SafMEFJa+5Q6J6egc0P/bvozmpA+rWUjJ99cv3QQUxqBwrADLJbFD6OicfIcuzh1pusZZh367AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZ2rj02O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZ2rj02O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25DBC19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773797093;
	bh=qnFK4pYpiB/Q0paLjGMGnL7v5G+BUA+aCj9omUdBZJc=;
	h=To:Subject:From:Date:From;
	b=LZ2rj02OvkGwK0AVWO7TA/CzKfGfiB9JI5xWNhwBsxxU2VPoxW8uJjYZ+FChfIRsM
	 r2qcZY49k39tFeUkINxUrkEEdMwYdTnCwqPDbCGa3kObCaWqgc/0MZk7znXnLE0JhO
	 sXxroOK1kjXck0Kv+P97irTnBNx2lWlDwCuhpdCJz+HpXTpZ0QoKAEvswdpQlpeMG0
	 pCFpx5qC4y3LrsgXo9PJg7QZI7dxtyRdgWYS0CmKZxS4W8jy96hxSZI59iZvPncFMO
	 LDYaYFGXC3df4GF+gn6+CN5FwbtyLgCHupQmepehe6LFZhH2ieR4WCO0nqBHaciDqC
	 rJdAykIry5gkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B3DFEDA09
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379709357.21045.4505859828136671729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fca6e8c13cfcfc49b7048dc9963f8c3349859ebbca2bafddfd5aabc9e55acb5
Date: Wed, 18 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773797093
