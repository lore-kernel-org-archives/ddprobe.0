Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FFC142E97
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718036903; cv=none; b=c3ZT+FEaOga+63C9YX6qWyzgLC7XiS+hXPNwdCB7PTlvQYrmxrZz97QenxqZizTZqPMynsvMSb5r7Dnqjp/hGDf5E3KnA2mi+Kql79/bs1wA7VCfEFVHIwbWCQvt0687JvPmRb4QRBLgaRxrze92MwVFRqxhXd3pP2TBonjxc0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718036903; c=relaxed/simple;
	bh=HTmRQvMBj2l7mQ36a0vjv7CakExzx5kPUxDktjvoIHg=;
	h=To:Subject:From:Message-Id:Date; b=hKfnMK+9RBsoz9RbVWIU6xZABGpKKqidYaEY4i3Zx7IjLmEzVYfwWEwjHKxihUYwyrtdCHnKHvsuIgR8aR7eOvsf7F+YaruQtJ2JhjvOH//emzWAyIhnHZodwlDebl5R8x9EPU/oaXovldbWzeyFJMC1a7aHCezLWWDCqAu8sP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmcisSCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmcisSCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A6BC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718036902;
	bh=HTmRQvMBj2l7mQ36a0vjv7CakExzx5kPUxDktjvoIHg=;
	h=To:Subject:From:Date:From;
	b=hmcisSCPToZ34sXL3TdjPNo1SpsRcFI5fgFxyf0PNrF3nZ5WUOmb1GHxWtidla8fY
	 7kT2kJG2jiXRtsUTnofl2x2cXSfZfqlF9E+ISl/lls34a0Wg1IjP87qs97x5xwnuX0
	 Y+WHQZ/qJL2g+3NaLxCJwAIVkaFg4LCoHnAtdErxJ5wUCPtvrGI7vqgb/8oLTdFcPS
	 9kZKXnig8CX47Vlom3tTekZ4YahkSmmhCB0kzangyJo2QhI2lTjHYJIj7qPHAu6mGo
	 +LoQ1GcVf3VCccT/7SPtVqK890RIOy6xTeLrlpnqeVhBGUFObAYoZnPnUCL71wScJE
	 76mwa14OsQqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C68C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 16:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803690278.6044.13756800844881844273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f78bd40cb2832cf214767ad444ef4c51b1bfcba71d0deab94e70ea52fe43c8
Date: Mon, 10 Jun 2024 16:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718036902
