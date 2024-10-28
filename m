Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B06DBA2E
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730081754; cv=none; b=pxDKMda5NSFjEVn+FgEN970yyFz3XKlUCriKMv6O9QmO4XqF3owNZvkt5ZzU4iIN1DmiP9R1n+oqKRV2fKcLLKBZxsLHPc6GnPjLhr80MUr/4MANfmTWAGkEonHu1f1f25MMmJ2/drvqVncvn0Y6ilgeO6uB+3Oz/g+JIYKTZ2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730081754; c=relaxed/simple;
	bh=I2eqFCKpic/DHMwP3zSlQJ7WkTRUX0AtdGSWhSKguUk=;
	h=To:Subject:From:Message-Id:Date; b=Sq/SYI5wOf3WLMRlHBN3UZjFIgYJJ68SFUZmD8lofCc7bQXrH9zy4BEn49ibWhSklsIqET0Co+h80DXv9yHVDObhFpGwsly9Gi2m8qFnJhxCsn4opSXYWH3z4JxQpORfN/L5gT3mf7w1x6sFECMJoXrNYuSKQ4r5b0qklpVMSFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP307NIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP307NIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4915C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730081753;
	bh=I2eqFCKpic/DHMwP3zSlQJ7WkTRUX0AtdGSWhSKguUk=;
	h=To:Subject:From:Date:From;
	b=oP307NIQi7t4lCrsgrTupMbGs+YFOEfH2MwllRv7Eew6U+H9HVfOIQAW5j25wBtdC
	 p0+ceMj7njP3qCIIsxUVwAKLnPAfiIN1sRtW+tTJmwYWyZd5inokHzeTfzFf/zQQ84
	 3EAYt/a7uH/z28p9V1TWsVUoQg7EVyquGlRfP+I8WtQs4vspquDzW3B0kEk0JHzTXx
	 vi9gzjFwM7poS3peBQpM17k68C6yLYnqau2ZBL2pwkpjf3vUKwCg7yA6geu0I9EiEf
	 614FeCSdwBzg+ABe7if9Gqrn9s2uS5h2VM7nkQHsrhp2WuHLZiANmD97D3Yy7/cuJB
	 Xv282CABuaDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F782D13592
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173008175362.19329.13890154999660897646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88028244a651ea9dd1a3e160f8568daae31b141c70026506d50ce3d2083ad10f
Date: Mon, 28 Oct 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730081753
