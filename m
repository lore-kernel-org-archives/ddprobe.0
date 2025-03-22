Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A30C175A5
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742663394; cv=none; b=Xbkk6KLEk2Z4d8pgJz9z53aYlYVB3eFBfNcHJmWT44lxNQUEhBhdGwf7/+oRgyBRDHbbnvUclcq3MxBG0yiHZ/F6yoTUUlMnboCZE0b2cBzlaHzjbFVpbXDdCNVaIB3OZxhDNRtk43qVlxkVJj5JiIBKLkijjErIjoiPtTSBDXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742663394; c=relaxed/simple;
	bh=qwVcS+VpKmSvMcJS+y46GIdtJa5YPIcHHHwlSCBE2jc=;
	h=To:Subject:From:Message-Id:Date; b=lXBMkds+nIC2nWTfGsDyl0DCBKRREqWhwJHzKIKoxmbUU6tFwWjnc/mS1ZO//FS+u/m+RnrHQ1xdw6IY/r+6CkEzj5oeBEfCZzZZY0JxDAjN50ss8t1URzQ1SwqIoamonfwgK69WPq4YO5IEkj85mHfbDMT6BBsbpDLwLyhMrOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYYlVM59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYYlVM59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5EEC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742663393;
	bh=qwVcS+VpKmSvMcJS+y46GIdtJa5YPIcHHHwlSCBE2jc=;
	h=To:Subject:From:Date:From;
	b=BYYlVM59/fk4xd440cZTiPYsODetWILkUX3FhH22oeUV/FH6xOYwCj8fhiM80BViC
	 uPyGxe32BCL/lTPxn2l9YztSw285EsOTFmK7iwlOdRRJ0t9NowKtf2NXugPj7eXplb
	 Vf11e264Z2OShB+FcsAiypQ0gSnXgLZUKVqH+ERm1Pqw66KC9obRs+GkqwUbnfkaLN
	 Rg4+1LS6c3XHdGck6lCygqBXSsUWau2UmyWbRpIkCg5YwR8YGwGhzGOF8olKhhjylc
	 +DXchwaUEgbs8UflK/UWraPaQPR8EbHOxXYz9DSmuprYFHgXYjJkjJohDQrFg03hPY
	 xEmxiQqxKKs8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59C3C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266339362.18466.16971627163551780507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788d51575129aed16cae6e81356b3206f1904d3b1ab97877b6ed6bec8d22a217
Date: Sat, 22 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742663393
