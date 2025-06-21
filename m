Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275132AF1C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750483194; cv=none; b=PXyq8nOhvcq+klOuW4IQ2pq4nAiAhlX14uAacS1kMfht2TPx0YZn0BcdFbhpJf6zW4U4BitAuoFTV9Yz0zXzzl9e5vdCrXagqU4qoRWRrZ1wkahQmPSG/IL+cCo70N397v88HnUGZvwMpqkeSGZgd6SerdEBJxWmeQ21iy2iBWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750483194; c=relaxed/simple;
	bh=St5VRMrpsw4m1S6ACuifXtgz5Yf+qaDyVWDj+1I8rN8=;
	h=To:Subject:From:Message-Id:Date; b=NcILJsSC6E116kRGu6mQOvCTfp6orNepJ1mZzSSdrcl9Zz5VIknP84cs6r4Kgv16QGde09now3jOhIe7Uu3ttrkQTrS1n8OGCKM1IkWEUkQLngPHFZCpdmJishNiflTV3wJ2doZcWfD79y4MwuKmRnjS6RSXzyUxREfsXnzfCzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg3cS1T6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg3cS1T6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A603EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750483193;
	bh=St5VRMrpsw4m1S6ACuifXtgz5Yf+qaDyVWDj+1I8rN8=;
	h=To:Subject:From:Date:From;
	b=Xg3cS1T6ZwtADcMgjuQoZmE3vmrtR+kB4pqHM3B0E0w7D260/S7ZdCu4Zq1WpqHHS
	 uGZWcSrNrpJSyaJg61MVuARHQkzd+I8wpWT3e8jY2nCbFBreCu+/pjObMtPsHZhKGA
	 bvsQXfgV42rB6v4+BdYo8ffqZbU8vHSEoFjIRBcj+fMWuklVGZXPej/8Vpr963Lv/L
	 fXYHa3gI0PD2w/gzCojoTG8alo5cxx1H9Dqz9Sy8L3WTiPDlbj58CvY0ozrhzGrMay
	 Pyezbo1xklhQUHJM2XAc9oYX/ttVBYZRzj994Ir/1Dp6awnymf+PIIPn3ivV4q0HFI
	 sf9TGUMIV+p7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C2C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048319357.2308.12034896096945159206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83287b9ce5a2e5602e692a49befe823d78137c199c797f03145cb5463ddbacde
Date: Sat, 21 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750483193
