Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7C8EEA8
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767065634; cv=none; b=rolDemlcLxmbAif7dCxPXaDQ8/CJKfiMF06fC19ry/4ii/9F+ZNUlURfV8vc11XnOjy67XlrwnHYIzP9nok7wR+swIa08qPTbxElIFLT+3xxcmgTAT8NwOO/lv41exX6eKlMsZ05UkTYLeZHESaT+BcD39AV5Yy5rBW7H225dyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767065634; c=relaxed/simple;
	bh=Os/XKfLiBCJsUwHmgFfE3zhteVdGRcSHI/T3T2Q4B5k=;
	h=To:Subject:From:Message-Id:Date; b=UyeqCu9bXRyRiH5EU4hV5ljE9zhBx05O07/s2m/76v+fRQ0TFS33IoHSxCaXqZ7hLeLxKhJALtawUjgazDVMRA1qnPX5/POoAwrpTZUnRfoBY4ZE76ixVc65paruz7op6KvWnyIwNSiARYJEMfw0OAcOGOOQsj4IZ4mmgJxWzLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfEjjt7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfEjjt7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25FAC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767065633;
	bh=Os/XKfLiBCJsUwHmgFfE3zhteVdGRcSHI/T3T2Q4B5k=;
	h=To:Subject:From:Date:From;
	b=rfEjjt7joKjqijlp4OOkpEevKqdvYARM+5hbnyFkzbKYxI68H436ks1vkZQowhfNH
	 m4omPCnipXX7C678lLbj9IeETYG70B77KPolB5LVACM5f9jx+gMDbsXseuIrAHEwNl
	 OtBXHjVEyd96W+EviBwgbZa07BU4IgIeG3tbwFVxvup8Oic3zjpxF/sOpKk+ETPFln
	 9IQfjGgVxdJPE5Y9dsADzzZeHTdzBACOLa6XQ14YGrcgJJch7ErVKMN97eKd/arprv
	 sGLsHk576W2Sgph6vm7h3t1saXWMYxQ431u3WtzcjGOmpQvbmPdP6LewuximmunVsT
	 X5nTU2EgG1RzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F38E92FD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706563357.29220.2921559545926726792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d933fd62e4f7f8a74451a68d540ed872c2eda8177fc6665ababd4d85a7d69e18
Date: Tue, 30 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767065633
