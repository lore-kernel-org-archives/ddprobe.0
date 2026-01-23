Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF49A3876A1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769136835; cv=none; b=fGskKqg9Rdi26wNEUxXFA8A58vhOx2FLhp3kk0ArJ541lu9SZN5IT6zle/gRsFXvihu5rGzLBUwmArku6vKkttccrEoLeIyRetPjFhKJ3BIc35UaTjNh7qKlubljV721zZMlGdZpsKxv5YgTaYvqCgIQa39KUQZU346CZD1z0sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769136835; c=relaxed/simple;
	bh=AWIEPalSYh0rdXVMP6G0YTyzO4UdrxgEkT4/SVrtXpY=;
	h=To:Subject:From:Message-Id:Date; b=LC7weWLmkgQ2zG2SpWT3zXFwYqotXoZattS/HoGuByYyoSf5FXlt/2qUhta/dg9FhNseC8ATqPFij2MHsQDXUO0zqgX1edBiOZ/pxS5q/T63Al/CQ7CciMJm1SOvI4Yk4pw6W7FQ+zGuu9A332KIL5Zd53W11s07BbeiUjvw38w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MskrJOdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MskrJOdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82BFC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769136833;
	bh=AWIEPalSYh0rdXVMP6G0YTyzO4UdrxgEkT4/SVrtXpY=;
	h=To:Subject:From:Date:From;
	b=MskrJOdPdNUow7FnnPR/bqIZ6ETa82KcJ1dk/8h60npHtylO4dGhPnDG+wRMzRvMx
	 x371X5sVLypVd9BIeQA8iMunfFUikZLG2BPA6eNBPpjcc8MGoQDXLIuRgl+ENwLBxy
	 AZ9pE+qcH0vaXgTAOoi4YDExSuYSzM2rIiopQjZ4ddIQ1lQO+GHpDrIbToa1tPbhGS
	 o8ms2CHij3MS/IhHA5NPnW1LZDUhEejdp4l3KWp2S8h5as8UxMq4dCez5WAoEwmD92
	 ZMpqpDrCZrGUuVm9K/5hDU9dO3dcOSo+yhH1Zvv6P55yqMMyvvibbUm/oHzk6PVYng
	 DopHMn4iFSWXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310AD6CFAE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913683358.7083.7921722941877190283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551b484f46392e77d8511fe43bea0a2d6f17c6237a6ad59e569fec158a3aac3f
Date: Fri, 23 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769136833
