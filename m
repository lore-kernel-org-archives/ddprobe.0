Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C65FDDD4
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716179543; cv=none; b=jjSaSufNfAwvnf16wW3aBLzg1N5od45/40jSmgyGTM4UiKU/0JHbulyjwWLwKtqXYWe8v8cL3jCrdDe4CCLs9EF1mxl7FOYgwADzzq8fABrlawpwyGVSsbZCGqvvWtR0GbspXLh0moS+fYa2uL6ccu+bVusvrenM1biOb2+Xgy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716179543; c=relaxed/simple;
	bh=H1RzaB9k27Db8/Gzib087IUvHtE7BAaOuTEoOdbbv+k=;
	h=To:Subject:From:Message-Id:Date; b=VTNeMWomS/xNuvCXaYcKzK2HkKLqX+sHLYHxsqUW7PCj1bzyJ1WCu/4tVS68HMj5PzZ0WBiX9PbLoExlaPFa3dslm4beoUF+6u2gRO++C7Mzs08cFT0hG6JrnGHCgQrbH3zhfi/bimWUCByCOoWkW4JuevHqAarqNoZ41WXNTUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdWteO5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdWteO5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E679FC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716179542;
	bh=H1RzaB9k27Db8/Gzib087IUvHtE7BAaOuTEoOdbbv+k=;
	h=To:Subject:From:Date:From;
	b=IdWteO5YUiLxtIG0OYnBj47/eIoOWYq7lHJkOp+zd+I8JnDVU2XuMvpuaHZPa3mhg
	 7myxQcALzD0lZHIdMselTb7vBt+1ib+lNDhVVQwyn59yBb0QR+0/5rSq1mGSDO/LL4
	 8fGbIlLe1sb0TBYxOUFZ41dXjIp6zGH1pep0YcwGMqEXlUxYgYdn9e0x8r9x8C3l+7
	 wsETh/HK2stqFvtZTNNkLwSQyJx2pWkLwyWRW6WxzDw0RyN0Vxq1jWP6OSk0zhIhS1
	 jFPFwMLo2p8HTyudCG+13sJK8scOSC9YTeGHhlX336BOUFzJQD30Aps+5hvJMNpxeY
	 4PqKo32mNUQTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB95DC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171617954280.28465.4473724827813224795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4130958a16adc0d4634f6f8ad2e4784ea5f31861fe87da27ca6bf86693877891
Date: Mon, 20 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716179542
