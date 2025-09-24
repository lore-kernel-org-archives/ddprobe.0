Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1526B4437A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758686994; cv=none; b=C+vpeGvOuCALAzD5gw8FTKbKeH2bseGHG1Ex/z5lioYe+O/OYseVbdcU+dwctXPxZNE28nvu5z4pusDRzLr1WRznbzk0OA2zixWTr1NlSh5vjef2ym6V5uZ38CNNdv7ipzhFwwjvbNC+UaFSK6ApQtMgfXBPRJTKv9DtkRJmg2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758686994; c=relaxed/simple;
	bh=LGMRY7HDOQGIDcxH7iYXNrQookFSsMBsqwp8BQbZaWU=;
	h=To:Subject:From:Message-Id:Date; b=tB02S0YCW1Rm9Q7Ee7PBeLi8mMtrr3mzk/ltkWAKLvhjEG1Jvqnc8wgxqiNCBmkjjYPP+CklCcQP6uW7KMfTbgMt5FohTxSg/ASbYNHmX72TiQHdmXtBtKt7EXhjNvAR9dHBru7+9SUwtdQbnRLCgQDhFM+Y+P3oED+RXzzKzag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkA0XL+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkA0XL+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BAEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758686993;
	bh=LGMRY7HDOQGIDcxH7iYXNrQookFSsMBsqwp8BQbZaWU=;
	h=To:Subject:From:Date:From;
	b=GkA0XL+RxhV4UspcXvdcljSBbuWUTqZV2WIOBfMO2XHfkSbMbD3kZtKc7yUJQfQNO
	 Sa3l2moa5WRagPjcR53V4M46MOt34dKpUYe4j8EcvJp6FPH92HIEB+BX3ZdsIBxgmp
	 MIEa7wX17pfi9r1LjZypasW9V4Rtrv1MxGHABC4CQ2RufbcOFTNW4szoFzkvtA0ft3
	 ndHbvzMvPrAwhzKaaWYf3tRMTHEnlm9s+8WBBKfa1Z0EBxG06WwIFkaadWVyBcVc+a
	 eS84O3ExhriYvhsvPeTga6arVLZdbiR8NrFLhCPfCUR/ziOA51FODqPKT64j0wM6xY
	 Ic49CWQ5SvHLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9015ECAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868699358.22436.8265762506996564720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5225470b7e8c5cfd08bd4d56f6d10307bd90135bad3424f6730db384f71944
Date: Wed, 24 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758686993
