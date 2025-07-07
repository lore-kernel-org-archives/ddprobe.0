Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A2A1373
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751847594; cv=none; b=mb6/1aGuzWalP1EZc7dO0IlolTSDe5k6VLNfmMpLwNwS+rivuNoHN79MxD+IMZ/BNaasBsYj05AxJ9INvaqp7Uua/W0DRdySq9YVhhIaW7Vju/4Z5Bd42R2UNZDUWxFzKaJ9Bx6BN/DVGtOChqnv/4x6Ztxa0N/0OuiMVO3a8E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751847594; c=relaxed/simple;
	bh=RUv4L8mBdOdqQHdqPYpBVDqD/VR9uakot6lz2tD1yOk=;
	h=To:Subject:From:Message-Id:Date; b=sHc6bcGd3SpsaAATCPV4U4wp8PjdVrFgdI3s5YWaRd4AUlKKuywz+lmp9u/7mFbNXjAxCpRoBcwLFBHuJ1sBlKVEWj0lNuHQgOvaS2UTDg00B/XilB2W+GANuuTJf0LrmYNf9r7CgQR7WuG8LSWkue8oukfAZdUCdXWFFVZpJMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmc8rNsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmc8rNsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01F5C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751847593;
	bh=RUv4L8mBdOdqQHdqPYpBVDqD/VR9uakot6lz2tD1yOk=;
	h=To:Subject:From:Date:From;
	b=lmc8rNsNrl4Or/1wRvf//M+5C2dIF2bjDQnmXKPkEyNHYEAUn7CVQQFqLmjDIuBfc
	 /iQrOX50hO0ksQdwdol807E64zx7AZFUNFzODM/SMlwGZNQqN3vSZOFd9OuPjrrB6f
	 xTCII3hZS4PFcgeLc6sWLO9MjW3MnPTpz/GoqsMKp9BK6bKNNhPkKzadGxRGGaLgjC
	 XTtU48H1aLdowiGaevWYs8NeIBQ0/vnrJ5lqScwpvN0hZSNN2oRaMBulCEDXX7u5Kw
	 lTVy2OAoaN9Ju7POwo+0HbmO8FzA0WmLr6Ld4V9wwvLp+jcDhoacMgoPRzNY7qNGnb
	 83INsvcpHuALw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E385C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184759357.4140.10251741130240838656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83028cc42e9ac1fbc4d292fab640aa9ad47c1ab7847b99558879b6aa7fb1334
Date: Mon, 07 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751847593
