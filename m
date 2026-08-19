Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318733B27D4
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787149234; cv=none; b=Bv14MnpKg8jaQeNS8vmXG740XARW9y8KeFTcCAPeBpHaFvqz9pYJTy4/0K36Fd4R3qEMp5XYBYXXesy8a5Adw8UsvaNaOIQoRrs2cLXwcqi38f/iquQv8ntDz0GpupgElajc2K0+m0T3E9RpdIv89camwauKUm+xpcjHbotU5iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787149234; c=relaxed/simple;
	bh=i0ZN3SwUV666Uxm/dP24Ek5PyI8fQsZvN0kFDJgNLgY=;
	h=To:Subject:From:Message-Id:Date; b=fgJgrDlUAZcIrII3wLyZKNWIqc9+sthRT87TpRUQUZk2n1itxfz1yilwg6jEkYo/rlFlJSQNVNibLB6I8sHFGRhvY7ATZpqCg5G23EkiVQaFY3rBRGnvSSuggQxKM5+S/ktCkwYUzUIDxSxdCSMQRXtva4kRgO3rwDSyptU5He0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvkmoPiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvkmoPiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDE1C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787149233;
	bh=i0ZN3SwUV666Uxm/dP24Ek5PyI8fQsZvN0kFDJgNLgY=;
	h=To:Subject:From:Date:From;
	b=cvkmoPiUg99yOx4kaCslgUdmbjg3g+SQPGzfUklXWkG6MBCyIRcpmEd6URgKEQDUl
	 5UNwen821572ZND5G97NzUFueT18rEZIhjTD/g2pj9h6bDv1Y3GCF6gtJG+9jMtq2+
	 jGfSKnN1TtdOePZkIxhAypy5ePflBjoQsf4udUHTSkecq3aLzlDKQKUMCUZ7l+Hd/U
	 6EKamn5fF43strLvLt6V23dWEZN4dwdZuiDKXTlQWtqGfCQV72Bid2LNSYnB6Zm1D+
	 xZHqLckYD1T2qm/B86KAT8F+l7D7WKxxomqHn5VWIQ4JG0g/sVMXb9tVTNctNGKNKT
	 gdmoF6t44opOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB670C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714923369.4426.6299781138588747298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a124f1f91e981a31f9cebfe8d6c82c9bd3f4c3aa12a06a44d5f9d33daf686a5
Date: Wed, 19 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787149233
