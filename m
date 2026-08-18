Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5994B38DC5F
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787038234; cv=none; b=k1lX3shEtye1sauUlxPI65qnRVUQ5s9dPCMDLS/Xt06W3DKO9h+aLenrdRMqvCmdG/mjtvw2uQvgBq1qpL8xS21m4a0fmoYl+Zbq9L02Hzu4oJwHT8wka7BIBswpVKDuQUZhUTnE0XQVc6oOvUtKWQKo+guojcJR4y3AHU0i7fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787038234; c=relaxed/simple;
	bh=2VeTpa2jhwNMH1LwMj6whGm9JfRUNyAL2ILB26Meh58=;
	h=To:Subject:From:Message-Id:Date; b=VBFWo6LSZ0Qt6CK8lta9hY3K/PSrFNvZAMmiDYOnRql8EaJIHkGQjbFJ6aFT7Jad+H25sh3JTjbnghPOzLKmy3o1uU+KnrQEDhoMHhtzJIV1Ta0EysZhtD7YE0r18CDIYchyFI8xNQ81YbTYaRSepR4UO/prq8g2JspVOuUwbHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQrgn4eG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQrgn4eG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D5BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787038233;
	bh=2VeTpa2jhwNMH1LwMj6whGm9JfRUNyAL2ILB26Meh58=;
	h=To:Subject:From:Date:From;
	b=gQrgn4eGJSQLP9tk5sTWIYD35Zrn0I/gnPvwHB0VThj3956dix+617PJFRv4sOfTx
	 jbfEcOYcxHg8rsbLwTBa4WUvCKIAp689e62kUnj0m4vmYZ9Mxz1+pBBVsot37mEQ8t
	 ilv/sIZq9FpLnbMZh6T2tWM2RNbgwl5M6WVCvtuhmPQtW9sN3/+F/uZsttx5DuyNfG
	 n0BMspoh5MOKcI7bZjHoRKHznIOVcT8Z40xf/6I/zw3VfGHkMUBT9o/kYRGeAmLoAd
	 i60c+oG0pxZ11mE7fT5j16ioJGTIdZXCxCyN0TblVGIqix/iLT4mwlIahlT7d+qkLy
	 thMnM3mW00ZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9AAC5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703823369.14239.13474017770865013025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3695e8ce48d429b45a9f4d9b4522487a6858184d509225539777350d927547
Date: Tue, 18 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787038233
