Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AFF278E63
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759351794; cv=none; b=VMWU1mt8ZyamSQOiumQEnezlL4gjf406310TAzs56upweM048YF8ntErf3UaMRj6erhsomXi/qPl5qhaMq2wspZd6B7ToiAEu8qkIAGJSOAKAsFfiWRfVntJ4WuLj9jq4u5Zc1DdcecBpCOthd64dDtkAlpzS7RzDTZpoeXvrso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759351794; c=relaxed/simple;
	bh=Puy/i9A2LhkP1gchIDUB3dTtokEGR+LV+br0dxVu8DM=;
	h=To:Subject:From:Message-Id:Date; b=j6Djf0dEGr9i164TIjkdUxRkuEyHeX1VSlnWseZeJHraSQDt2Je14lS6W1f2wfCWfXQxisr3BAdsRcSZdc4aIQVyxx/Wjnize4yb/HG7gjVKzWE8eGMB5rvQfwLbbBNfsu9jUQc4Y4GMa1R4OeQSASLJYUJamPjBmWNFB86sfro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtG3wFPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtG3wFPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2356C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759351793;
	bh=Puy/i9A2LhkP1gchIDUB3dTtokEGR+LV+br0dxVu8DM=;
	h=To:Subject:From:Date:From;
	b=WtG3wFPo56sQ2K/Q6Ofx5Xa+OkjVMUcT5jWKQ8q3t1HyUppBxCRkAik5Z4HcVmduH
	 i/V+coSkm5TlgGkz8CBlPuRk90kasNmktXndsusjE+fIESVXMi8Xn2/FAy5XqlF6P9
	 FTVVrAbzLVVdkRu0mkLpa6be2moUFnOpvS8ZzhAWyK2hHKTeqf9UbmFqwgCmlKVi8I
	 DavjlDZ+eqaSXgks+9DBHaJojUICj7zH8AhSzJUw7lqIYonbXTUk71fPmm8T9jNqrS
	 N5nsSdHuzFyXwTY8EQfs8T1PX/dt3TGkBm2UccJGTzmYjLYlFM74sYyVRXhtGMjzto
	 UwghWxtdCcxYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935179358.30660.7992123270998855362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9911d51b87be6cf5575e94d13cb4141ef6c627ac07c37d728456c0efe59859d9
Date: Wed, 01 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759351793
