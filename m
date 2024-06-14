Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF212107
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718380103; cv=none; b=JbII+zR/acrBQ7/XSVO2v/Gzc5KKuL6YileyIqw92iEosAUqWd0yj2cPEMkdMq+Bbx8Ih6OJ8+nR0WjTqKrO6y+RdGjZjH6giyKQFHks9+RprHP2AJI/YJaWVyqA7gfmD6uofuFXL3+4fNOu3+ql8dikaKwkowMd08RInwrYMLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718380103; c=relaxed/simple;
	bh=cZxrxXbP8PFjrmDViAhsJRGcE5+Z/Xf3wCZJIdSeWhs=;
	h=To:Subject:From:Message-Id:Date; b=i/JMfML82Fm4XpcPKzPhpojGIoopBh/JNgoZ3jFJSAGPEZ5J0LheMtT2EOdnfG2HUPliXlsy3dQaqbNxn4sR767DcvZvfTGQodN3eUpAPI5zrIvF+dKuNm/n9hnb13iM7xJvFaeMdX+3jXBzcpabiHYLupNqYnLVz++l4wwFB1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aafx80Dl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aafx80Dl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FA3C4AF49
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718380102;
	bh=cZxrxXbP8PFjrmDViAhsJRGcE5+Z/Xf3wCZJIdSeWhs=;
	h=To:Subject:From:Date:From;
	b=aafx80Dlc1tla6J4aG1nJqSeUuRFATu86GArjVqC2Em5aNz0DqQGrIVuKnvxldnUA
	 0LtnKFMxQ0K1mas44YIxkd44kJ33qlyqEqxTZb3Vhoe4SOSNKcs/x/LMi+tbkAKSwV
	 Q/j+Wi77NRkx5SYGcAQWbTN/yN/8ssEeyQmecgU8WQCHApnzT0JuL3UWulX0oru/Zi
	 K/GHZPRPvAARcxkliOJDgzDzuxxhBZ+ijdTIaAwKdZagou0utFowoblIBVWnRrI//J
	 Gt0W7u2XtZbqv9h7WFn8XEjpE6+JAPsECfanJfi61vmLa1UA3Pwjl7mGSLiwZrfalG
	 20mzzrzZu/SfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3539C27C79
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838010278.7771.13486768348287966007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c40c78ddd365426350fe99d9eb6386da611d5e2a01c54588d675188d196af74
Date: Fri, 14 Jun 2024 15:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718380102
