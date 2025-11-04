Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3787A85C4A
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762238394; cv=none; b=fmZxxB2h2UFWgPmsN8fuo6FPUE0O+gVtV+J3qACjTVYefO8q/CezoP1JLBK8OD/+DKXGPxF5i1C2JSGkV+kS9KY75BwtUdmrNL0+MVNBIACEhT52R/kjdDgPUld2zfdiTSkQiHgN0T/+akwr3ID1YcFme+cM1wJzqhN262lxJhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762238394; c=relaxed/simple;
	bh=dsYwV80mdWrfs/z87nL0oMWtjYlU+33t6ddZwSzRF10=;
	h=To:Subject:From:Message-Id:Date; b=UR6Hex97D/5pnMRqPRtRBiEAJf7N7lI5jlqJ0q4EUk016PH6VVnW6cUlu3sWp15wlg1eOQHhZqcVdXi9w9MrqSCeR9KDQOMKGYKe1ZOvCDapeFYfVPBN4VLooGzjvyZrFb+ZBmikx2FJyVoPPJZm9zpTFZurGBc5DLRRW9TC6tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9FBnUnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9FBnUnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF8AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762238393;
	bh=dsYwV80mdWrfs/z87nL0oMWtjYlU+33t6ddZwSzRF10=;
	h=To:Subject:From:Date:From;
	b=K9FBnUnXeM+K/6V6v/ENcFXI2ixAGD4nCxbPu89OJfHS0dNifvqJgx1Ik2Som3UnZ
	 nzaR5kbIr0l/u7/aFIPIwRynjNK24zikF2wKh3VXDh62worNPWBNd2lFK/TNR1j+X8
	 R7hQ1WBHNKwwB3Ill2ejNP5xZT4rJCiOuO2TcKMW5wV29snAefxj2hyxE64vnycrob
	 ldAAndNvLNZFwMf60M4ZRlBGJxeTKfki+nPgvJmsgM6RFah6RCoMRdp9DsPcKFVsMW
	 US3Ljj/1EIfrvXf4hSe3in+KB6X47D4omWK/Ho3zEtFfpzOZGSlp4XxBQXG+8WbvmL
	 tjQXAStNp9TeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB38CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223839360.25036.13998905926178837504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3a616f51a44630faa88ab3d04991cfff7a2e3bef388bb822ee9d8e878eb1d0
Date: Tue, 04 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762238393
