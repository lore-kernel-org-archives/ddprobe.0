Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219F772617
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764103374; cv=none; b=YiQGr8xCB+9grXwRBD5rQy/b7CsAmLV7NsBpg4GuPOsSqEfdRSJ9AnOT5mbHbaej96ibjfKhFXjZWFe+BcYZZ1nOIDmSS0OiTXibOeqf4uBw+Y/jyUFIMsGBL7gnPgOWPsPDfZhNDMVWu18exIMsf3BrqmDDOeGmxeGO1VzdlR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764103374; c=relaxed/simple;
	bh=XxA7eGKkxfPcHmI/U/0i4SAPXcu2Wqg20CqNq+joxsM=;
	h=To:Subject:From:Message-Id:Date; b=L0LZW8HVqoxfm1Wv3QQB/Orke1O5qfnjQ4jBzW/vZZzHGSFUVInQMLL3cCnlX1nSKEGnPirxOO1vZT2vxTXYpGZplgu2hYsW+zSNcqvSF+nyueceqdO7BApaBW0AIyWHM34xHLi2MROreiKQnyF2oTxjnuWOU6aDkGtJDH8Eu9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/mcxELM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/mcxELM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4F7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764103373;
	bh=XxA7eGKkxfPcHmI/U/0i4SAPXcu2Wqg20CqNq+joxsM=;
	h=To:Subject:From:Date:From;
	b=R/mcxELMJusPWr7giKoN/MfqUqwB2LUSi3Pknc9+zqpSGpLl6lOT4lr17OgLLQefc
	 F49E5kAGdnrLx5ubyY1+5PxWp6DbMg/d0oSidNWzZTeIF6yl5rPkckGvxXHrtm1gom
	 BcR+ksvyQEKsWuFNHTNP9jPw9iupgL/uQYrew3l3UsvxdPmoQDIiRkxGey6Ikk2yXT
	 ZGS9n4W8yO6MxNT3ABi1vJ4EjGgifMIvNX35yBHReQKD/rQW7MPnIj3e113WTspmUm
	 hq4nboaLWL+IobAcfyLumBkTsn89BmkvbKgelEyI1YArbJU5o+h8H1ICmIr3ul8a77
	 FkmC+N9PZCZOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94502D0EE24
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410337359.8444.6968917531014166203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49780cdcf6f1bb376f6d42e652eb958499a51ed0bba10ce93dd3b0f5a16fe34c
Date: Tue, 25 Nov 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764103373
