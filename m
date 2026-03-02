Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BE1383C83
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772436294; cv=none; b=U802EQ0dTxoIGPu1CPXqsb1yXOqiRgdnZqgWMnX/C2P+emJAsLvKhaGXccEQtb1GjpoqnPSUMJU0pUew7Dr2qg/vdYCECcjxYROnmVVpjPJAGCNmL6+DleWJH6dN8YQCPn1q68tPnk9Ox9rbQKBPDnXbGZKGEBKlH1S55hYQKRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772436294; c=relaxed/simple;
	bh=lcoYHA/yan9eIRJI1Yu7OKLGr+UjBFhDNIhXaKbAiVk=;
	h=To:Subject:From:Message-Id:Date; b=plOlDcZmlQgVTPvQA0PYvnAalOhBF6aaMGacinO5OcrLbxyr94ftapQhJJOaLv32OgFzNMmRDAlJDLtB0DZPJDBViEsvF71eQJVGvnJfdCPF8UoEQggoVFhMUMhnNEeyvCP6kzyyVIiDHTtQT5JfjeifaU1DJS/wH5tVbVkGwWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZD+yxLvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZD+yxLvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB8FC2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772436293;
	bh=lcoYHA/yan9eIRJI1Yu7OKLGr+UjBFhDNIhXaKbAiVk=;
	h=To:Subject:From:Date:From;
	b=ZD+yxLvCu4f9fmFBOeyJUu+cFo0I8s2pn+yStxC76flTSeqJ7GEn/9RMQBeJIl4t6
	 /ZWul4vCe32WDUK8gCcKQq+Hzr2AiG9XiWirCoNEhD+Rfv3kJAyKmdkYGRao1VFj7E
	 R/dw+dkRBZKaPaQcJ+9zNVA45KQGBA+CissVLFHX+V1aoBjZnfmt4mWOtT07atcJ0U
	 CV9bEs6mQQKuP2NZmSQGzuONR7zPavJLui5ytsYJ6DPUBBWhIcL+KXLyogTgjKQsqy
	 vb6GOK7ymHCAgRgKEdz/xvjVEddSFYQeWMlJ5Or50BJcSvfUMBaxhbz+pk9ro+J0j/
	 izasd2HJcGEtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA5FD58E74
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243629362.2288.14336003255085098570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6adce54f86ef2941818b592961cd8ee7d263e5ff333c3994f9f58914bc60b6c3
Date: Mon, 02 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772436293
