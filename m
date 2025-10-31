Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F49317C77
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761896994; cv=none; b=YMgAFJ6OLmyE0qdnu6/JFpCF7ZNrQbd2XNn4N45bsJiqrNHnFaFB7dtYvUhNFN2wxG8O8Kum44UPTBd/shnewXX5UrxKbHVSucVxLPFNHbch0bmSDARRq27mv6JFdwXrq5K+SYfLUd9W+2T9sVErjIEWs7yb79XGjA1o0zh6pRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761896994; c=relaxed/simple;
	bh=8Z7yxYzvIWgxcr/jSadIZSIQzZjwdHfjSUGg55ewfbQ=;
	h=To:Subject:From:Message-Id:Date; b=WpVwM+y6JQ9181VDUgqQLvRV95LPloPbvfiTD8PFjA8/4x2ADb9S/WtS4pOgocMKqlx+KVvwTqiyf0XF96/QT7mKHBfryeE1PAu+GKwaQEJEQH804vng6h1sXKPbNpYng6xUvDuhyD/xAD9q+QZ2jb53uwT2SqJlCtl5hm+wY5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okAhEJiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okAhEJiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6DCC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761896993;
	bh=8Z7yxYzvIWgxcr/jSadIZSIQzZjwdHfjSUGg55ewfbQ=;
	h=To:Subject:From:Date:From;
	b=okAhEJiSpb0xRNBI89EP5cIR8hRu31IfjGd9+itb0sXE8ccNsLT1+2vIdc/owSgrz
	 48gIkeObyKhIrG8k55EZh6O7q0R/NHtW5AB8/vz5obN7YjjP4mdI3mIo6+YzZOCa4m
	 QRbP9up3ESEWXBpPH5B2kIaeh8DaYFKtxGTNkp8Bka19V3xVmyLNBCdmyIiaUZTrUZ
	 IK2YKozWZBPAxcQDqX8SDp6putbpqryGAhwyd4fCExUueOLv3fKZmsXHkWQ1Da/A1X
	 43PDmg6w5axu98KOKc6iA53785PMROey/RKOIZLM1ZhcOpANrs4J57EN7fsoE8Nixk
	 1py8y73CC6Pag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91099CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189699358.18544.8442182822588213621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ba7a2bca55aab4843aff96fcd804a8061c225bee823893ab567eaa766b5c4d
Date: Fri, 31 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761896993
