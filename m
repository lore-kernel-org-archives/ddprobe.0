Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690E93BBE9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 23:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718061503; cv=none; b=iduJRZI8jP+k+UN+AATt8DUrLMt1ZGmPeYPU2zb4Felfv18t5zQJ8ejoe8FHMVGX7awpNEaSaY1iRcS4lNCCNdxtUNeXn/lcly5mtlQm3FPrdkGhm04cFKkI5iWjRnDL91a0sLIPIy5IFAYI7siqLWrtYgl30tmugm2nG68H1BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718061503; c=relaxed/simple;
	bh=ByR7jlAO1mIeMi5lSPxMJl3cXaFghBBEqj/UYBSlKXw=;
	h=To:Subject:From:Message-Id:Date; b=RIIeQ+qH4Ez2hF7yAAsgLbGMViqElKVCCy34sZHz9GOoaeQqx51FjASWZ2+S/Nw66zN02BnlX2CX2Rtize6xOKs4dEVMscHlMp4rAAgvOnqg7MmteDrkT/JtoM8cXyeHfFurQ1M/kIaP/6w2u/5U1VdtMjSZXEFBawA/FD1+9iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NojfhNfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NojfhNfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D45C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 23:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718061502;
	bh=ByR7jlAO1mIeMi5lSPxMJl3cXaFghBBEqj/UYBSlKXw=;
	h=To:Subject:From:Date:From;
	b=NojfhNfLrH2VbB5GMRFt2dSnJayT6AeM3xiPm5kx5XRj5KWpjg8NZuivVgtaSq2Ot
	 Xs3bspcR82rHw5U8P9iTGvNSEBYLYjb/Bj8mltPNG0K4PW68ZwiFQ5TfVOpPwxj4Xt
	 uZVI2o0Wk+bdbcUiWEAGNxZze73gjrMdpODy38//q4epISvGVdiMo479ZBTSJT9BPE
	 UsM5pcz21pFkv247ig0mB8TQ+JDqxCgy9Wq2B99HeBKX5elZRZmETO+HDIV/UyX+DC
	 45lJ5QECR9x7+PPFfwyXqLqYf6sI8x0/+/ym6DYaZsUX3O/QfmFVoucbVf6xn69D51
	 PozIJSj0N2Y6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C667CC27C4F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 23:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806150277.18549.6716429980966649559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7c4cb12717a525c753ece091fa31412d999333115da252990a4a801e36819c
Date: Mon, 10 Jun 2024 23:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718061502
