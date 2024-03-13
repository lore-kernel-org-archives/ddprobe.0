Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111173FB09
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710341897; cv=none; b=PEnsmqV7uiL414P/q7T9kaN6Wk5wdUVCieb7i8A6OwreX6CZxiiyMa8DZd7UvD6vN8JbO6Q6BVI7vdXoas4EN0vaeoKPUCcJpuyL1Qz9E0EOhuRDsqKCBCOyxB7EB7Osq7aIAG+g75J816sOV+1BzXhKUTqHbMlDxVu4l+04mGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710341897; c=relaxed/simple;
	bh=YFT//gpxpG5DmfhBV7/X/v94M2wBZMs8dCgyGzypylQ=;
	h=To:Subject:From:Message-Id:Date; b=Bbmwy7tNsCPkaZspeKXbLGZAhN8r8mrQ0l3nMtV38aKsLjw5h+Y5hW/1L/zY2E3CCsFOogJ3AUDxQuNkZGTZ2TeQE3Z/XZWsito3JkYAHiB7gT1DkZeE6ARQW+Os6QWPssTe4omZXMofmMJxG/ImEW7apCWW+MhOGc5yUEzirmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daefOot7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daefOot7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF38C43390
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710341896;
	bh=YFT//gpxpG5DmfhBV7/X/v94M2wBZMs8dCgyGzypylQ=;
	h=To:Subject:From:Date:From;
	b=daefOot7zotLvhRFbdRJ6A5yPWNiS6jvfAf1l6VlYKHul6FHvVbErOV3B3OWVs5Bu
	 nXOHkJTIJdNZ/FuTrm3JDNewjUlJNisML6sZjRgs8cwo19bGT18Mrn8UHxxXlhHMLr
	 IBnC5nf74MLwLESTU7QnUrK8jxeQVZG4qFK8BUk8DBNc78ABWd4h6Xn27N25W1gUhn
	 +FZ92Uc6FizZ1EM7i5b2Si+kskGuaFSAlKiYXrkW9fD6SW3JXzP6DAyN0e2KwhKTnr
	 G3gITtLKKJwWgiR/jnPNViel12gI9DRTNUNu2pCLm+ljfH+YYHnvCBMahqSftaP9l9
	 SLoydcAGCUtPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F119C54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171034189644.8828.15765721195157712763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451a9982f5dba47f966e2b718b66207dce5bcf19937d15694ed331adb91d0d56
Date: Wed, 13 Mar 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710341896
