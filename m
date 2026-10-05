Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7663242E439
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791192634; cv=none; b=ubKvc5puqY0AMcOKyBWW0l7PA1zD9SS7DAT0AV7tHHgZDd8iMQEDqAzDiYcfjGVKwKIEkor0AeWGP14ts+jJMDJBnezZOQRcx3mv1AZ9FaoiP568CT5vrWfaSG0u/u5iSdRksikyMqPJ0a8QqBg56Z4cLJjcQ0nFry9uS9pskeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791192634; c=relaxed/simple;
	bh=aB4TSxMSun5DbXCr5fQAuloPr9tU+r4z0jyxvwMNiBQ=;
	h=To:Subject:From:Message-Id:Date; b=UAky3VB8I9RlUEaDaAEShFvbRkDYUjXxcC/h4JZSKdf9ENLLkWXS360oTIlieLCp3e2FPDZKTZA4P4ehg75BJx8IgDNbt+/taBCWSm6FE+k8XXzFBpY04l6VBf3jsc3imJbHPGsQEDNv5TzMfnOEIlmso+9gHqWEhcT/VmmZgUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szctBvKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szctBvKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E044CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791192633;
	bh=aB4TSxMSun5DbXCr5fQAuloPr9tU+r4z0jyxvwMNiBQ=;
	h=To:Subject:From:Date:From;
	b=szctBvKZzLDWSNsw0OTUya/Zmv70EATC15YXWV9gAz+vfdD5VSeMaXuzVzzdTpuTZ
	 VQ5ee4pPHU/fsyU904nBLdJSfTfWEZaQA/uIvOE+idjQurBIAu2LtQpEJX1cyyT0NR
	 BcUOztZuZSXhXXD2lVgFTZV8I4+3lUm11Wv7LK8Z0JrttbBuqRFcQxIrkpnXWtjkH1
	 lqX5c0uYsWEXQ3qjsCpT/wsJ7PQqv854Y8JpjWqtuOWUYk+8OHea/eZZxpkAUL0daQ
	 mzQ7SrMS9rraFXVU68jdM7cPQ4SMWfk4CbdnVEJDxbg7w0oKl3Xks3VJV0+m/wmdtj
	 o2jvV/fXWDsjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEA2CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119263374.11935.3302334828687272265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94de04b6d7fdf1b83e3bae716d2cdb6aa415bf591c857da84441d3d45bcb6761
Date: Mon, 05 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791192633
