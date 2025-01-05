Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FA51E871
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736076354; cv=none; b=m0gLiulT+QSsPtnCfxrqLdy5JD4/QnjB+lnYJ34QEawD++GlBcJFIrvcnGo8IB6OuHsblhInvykrOejrJtbJefT/1OVgI3Rs15/652lUyv0IfaBH3xmXmuUwrfUmXRX+io/hkry0cmcLUpDA2uyMcMngRhqk7nfw7t8MxhNNyHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736076354; c=relaxed/simple;
	bh=yLH3S+13V4nKPzwbcxzxQd65j7WnF0hJqtQSX1+Oz2g=;
	h=To:Subject:From:Message-Id:Date; b=c56eKcVO44Lndm+qAkQAwxG20Xa3dYmVVhVuAOz7PXoAeDH2efG20hfNqc9n3Lqr+fKB+W6DCKDrmoEYm6fAAipqOfCa0eck2Qpt4sMzzznyGvkDWfPvaGJA7+ouDGWr9H2FecgJJqQcf6I52eJvqT5YaUJ0jZWyxj87id6WY98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwy5Y7N5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwy5Y7N5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC849C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736076353;
	bh=yLH3S+13V4nKPzwbcxzxQd65j7WnF0hJqtQSX1+Oz2g=;
	h=To:Subject:From:Date:From;
	b=kwy5Y7N5gTVKB/oBLySmeCkhbkszDHNQb12+bzAbZmo0ZIkvREJldOenOly0mA8SF
	 j1thsv4gmyEvhNn/dnpH3lr03t3t53NU4AOA5jLHJ1gS3MpfmzCLIC1xTm/5zkfzxj
	 1ynAuA1VtDNu6kBBGOXyWYb/H6vHvrZ7TQH7wTwFsqO/Qdy7KYem8waP/qLtFBZgsA
	 UvPDM3KP3DSinSXoRdAwaRXVPbulC2Ik/SeHYyUV07fXmrDT9cSR9vb/TnKKGuKzOm
	 lZrrwYYCkBHrMOXMGPtuWYQJtc63SkPORsOnU+5YcEdAhx0lg5F0Wd4ZwT2dKuVJiL
	 zK5yhfheQXkNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DAFE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607635358.26547.12998898652943389250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307c0546560e8692e1b645df79d255f201f321f3aa182f788baebf783d08ff48
Date: Sun, 05 Jan 2025 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736076353
