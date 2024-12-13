Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262761DF25E
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734089754; cv=none; b=JPMXZB+MnNPhGocT9lGonzB/4lWdDwpwc2GInsI2iNzfkVjTSIAHRGIKccD0ZxSbI6jABU6yXIw6pyyHNa/qiKzK9BC3KCHTDYi9IKD88s87HCQ70Jt1LroJpvmR+4NNIvtrB3l8/xRhj3n2nfblMv+I+YqaDMdbkm23+jVmexU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734089754; c=relaxed/simple;
	bh=XAJxpKKymmrKN/OKlTP46r0HFrjPT3AMx9Fg6iP8NNs=;
	h=To:Subject:From:Message-Id:Date; b=BBogq7xmvhWTHrVia4+uksldm3yfVhg0NWzRSb0I0OPiBFapGg/EKABv+vVciLm03KelKl5ktT63af5PWX0VU8KXlIg3Mcwj8aaDbdYH37rpVlxFPrDHTXmXw7TQFpRc26WCR0QpApkiFtfaPRItJBL2n1A47Bp3waXZzwqUfPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYX0Jv13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYX0Jv13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEDCC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734089753;
	bh=XAJxpKKymmrKN/OKlTP46r0HFrjPT3AMx9Fg6iP8NNs=;
	h=To:Subject:From:Date:From;
	b=WYX0Jv13CKqC1/5D5/Ilb7YBKWJw/xJtlqRNzv+3NXoNnCOB4hQaL48Y78NXYFLRA
	 cQBMS+CiMhwyX5VcM1P7ULRVzwouVjXB8JVjxKBEiHoI9NJzLUvxYLJnFHEN+VzHA0
	 nHoOTNw+lB8YnvZw+PnEWjBa6mwzGENx9JPzxCjcTELtfBMEujqfhZz9Z0GsjeuGnJ
	 NdNZfu4U55Jm4+P3GTRvDxjVsIxuM+LhmZPFR+XiLEBQli1U/Twx2UAjalN27CRs+3
	 IEKsDCAmK1u6g8PWgEPNlaq/VwAEWB21Svn7752/4n7+gSrqWwBpn4sZfO5ZBa4P3A
	 6vk2BaxkOJyyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972FEE7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173408975361.11225.5244875884577743459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67058d4d38a7be221891ab66ea4774e71de9741624bcae945083332eeb0916bc
Date: Fri, 13 Dec 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734089753
