Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358DD19340B
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731608754; cv=none; b=WvLhfmepr1hBv6iSZDWjwFxqrEgfYGFvBLwGgeuUIgJOFk6KAyMOoA1WRciLjsjS56FFE/HCv12kRxF5pLJyDUatTVeNMz4FAIwiz+Z7q1XicoT3MyJXOPhu+IWr31s9Iez7se4Dpjt7E4FqpSmRZGcUo4iFp4vYLKeP9d124ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731608754; c=relaxed/simple;
	bh=AUTRgsXoPiYLduE+SVAoFJXFl0ZcM6U5MjVSeyqebzU=;
	h=To:Subject:From:Message-Id:Date; b=VDXCh7YMAxXPpqG0lxC4VVTwQ0UOpCI3ASQxLVrsVeXvuOdMA2wDzuqo8Z8NWl/4MegmlKe/6/vfeC4UDoBVQw4AcxsSwODAugEeL8AAfHNOQ0f5hqiEwwPtKJOjopQVLV2i6VT2Mh5iVFZ/KuHmuq6YgUDptiRperQY9o2V1h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eU+9eaDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eU+9eaDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7137C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731608753;
	bh=AUTRgsXoPiYLduE+SVAoFJXFl0ZcM6U5MjVSeyqebzU=;
	h=To:Subject:From:Date:From;
	b=eU+9eaDjTrUtDTkNE5RiA3J3Tw/o7244eKf7XlHPGgv5lQio8gWcQtc9qcMbxg7Us
	 Syefh9HXMIwmaIl5Vlrm/SfLFOPlpDBWrBdL/odD+dsDtTdzJfqdEQH6bVTIJwRQBT
	 MvrZLCouczmCLNluXLcmtHUneEjZq8ExYIyt0ulIhyy0c+faJnrXlST5cZ4o8tjQFZ
	 BeZ9Zbc5JMwV/FHDL0oH4JMHWnKQATI72LcqlcEFwVD/XxE77/A0G6u+3bR6YT7/va
	 V47aj+hC4yiLVpyg1VntDaRI7RNZzRCrCt1rdeumdywL0A+S08LKhFax28LBTbXdV/
	 XZhbj2frqM5Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10FFD6A221
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173160875365.12941.1497880783924503660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e81d9e70be146972bc966c01fdeb3e67a05bb275bcbc57846f8203a0d72ec3e
Date: Thu, 14 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731608753
