Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3726226F2A1
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761199794; cv=none; b=obzKm2FILtzcowQboK+Tq/FjeLEuRMuXhcWCkMJ9XuIezQ2+5tP6b2iMAsLWvxoZE4oodQ/sz5v9DRFCFZh7A6+Eot0+qj5tWElAKQx1PcZbmb81nAb60GNrXTDSyfQYKmMlcuyLTvbRTX+Rubn38+I/TMp8hvlnXllt+qyaNas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761199794; c=relaxed/simple;
	bh=ZfhEXrt8ejRNHZ63kTJvbsp+lb5BhnhfTu1C7qtfHCk=;
	h=To:Subject:From:Message-Id:Date; b=seZXY36iaLxMWnk72ajT2nQSC558iCGjZ46SG9QQHmv9RpVEOdrjNp2OPhuLXTK/mz13yJ21l27dsO/t75shHCIyTDUO9RQmIBkJteqxIGjQc0WMFCXeJGr/HivgpkJ6J0pCyny/slIdzBas+kwt9Yzk3cT5X85/dg41B6P3y3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqQd25sJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqQd25sJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60F4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761199793;
	bh=ZfhEXrt8ejRNHZ63kTJvbsp+lb5BhnhfTu1C7qtfHCk=;
	h=To:Subject:From:Date:From;
	b=RqQd25sJyMgjXacmnmjRdWsmjmkEE5VxoqLor8HGyKd5SspV8uA85CU61WPD9JDWa
	 UtqzFOhrFcSiQmrUrMGGfzSER35Cylfass+3zIFwPO/wj0e5WrhsQQRgMn/K+8BohF
	 TT7cMEQKN3iUR/p3JpuL+WGi6afBJvkFYqss1Zw8af5f8Ue+8kuQ7V50+PvvXLj18/
	 AGO9XOBqdWMW/DrNXf0wtWdmSbQ2wOJeeErTGpgT4/1kfFCyLg51MWII45RdkNFdju
	 3iQWctauLnRxJr4qIEnf5q+0c+k+h64im6m1NJG6ZFNht7ivWeWilBZb3L0SObxiZu
	 uNwgG2Sha0amA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926EDCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119979359.4606.16041310429968384061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34458fed513d6e4ee2371518cb00a798c54631db0fc7eca2a60347afb3cdb015
Date: Thu, 23 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761199793
