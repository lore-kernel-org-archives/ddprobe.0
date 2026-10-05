Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C66A37105A
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791183634; cv=none; b=RI5MjrcBG0Xq+F5iiMlsX+APlAmQos49a7PmzqI/UlB454lLLwALHJjQhS1GwuuovJrNNQRGyqXKSSm1HpIfDtmB0FPHY2noj5n3iWuL5du4xkZhlO0HXp2jb6O24dEbDZaaPZ62CmC/G+DW1RcxuV8kdhSMnAfSdobH8BTCIjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791183634; c=relaxed/simple;
	bh=6DkEdsmaW9RgcjUsvp5zEGP2B6AClOPiMAdI2/OyhIw=;
	h=To:Subject:From:Message-Id:Date; b=gJLaMb5Bg6yMWuFFp0cMPtpUkcGfgy2plW+IIHemXwPZmoihdhKhfl9LTK4E8U8lIMfGSWt7SRk4RJSrXwPHnc8bHWpRkdD0kTU+LN7lDWQt6eKxvLgCQ75FBtWBvrlCc9qeeJiy4bGhlmtcgK8Fozt0Rt+CbllXUh/c+oF1mOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTbhH0mK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTbhH0mK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D040BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791183633;
	bh=6DkEdsmaW9RgcjUsvp5zEGP2B6AClOPiMAdI2/OyhIw=;
	h=To:Subject:From:Date:From;
	b=JTbhH0mKUiNrsF4Ahc6JeRnDJ2I3M1sYRCoyvZJa2Pja7T6jBsGTjSDt6pJiPcICu
	 cDaw3LCuNAJWhMKKyQFc0i++3aWjtHlfWK4VJ4LTDtfjsQo9YgNx+2Eo7GOAwG9GOD
	 StjTtjur0nw0i0FnuUjv3h4krnrJ11qb6C6hsibrWko/BWSXRN0VJHL54tqtI3XFd4
	 NMYeh1oEVu0MBXaw++qJ2BTrSm0tdsj16XOwOKXPfPqS1+T/6MQxtywSfXpfZPAlVt
	 qIWMu6pkLXrLHKhQScx2VXf3X+yT5fqmzk/DdMS6ejx0DkmFsD8sPMswHrwLcl6VOy
	 Tp2wswYx6DdQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1D8CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118363370.28389.7106721293938126228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0791db939e2e8f850a8730510d7604e4cf0098481b60feeee1980023d2ce31
Date: Mon, 05 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791183633
