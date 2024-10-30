Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4FF1946CC
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730255754; cv=none; b=Koe9dBA7Co0aFWR2htUG0ndWJHxw0D0igmCe3S1P95Z1FhXe+ZXGXYEZi8pJzfdyUixrpyYH2BZw7eBmDQuV/lNYSeDNCUZGyYqX2EO9Brmz5Up6xShx6mMcETOe0X6wxQrxzvQCzmQPmpodzo1hIyRxHxZlUbMxiEJvtlpozk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730255754; c=relaxed/simple;
	bh=5UrtM+prgAObA02BlplRqPn5S0jZcM6IxHvLFOhnun8=;
	h=To:Subject:From:Message-Id:Date; b=GPM+8PIWID3XHm7G7SQXxTYFlfnRdy+my8gy5BWYrRJQdNmzHVvfm3wxcInLYlsHnUrQYBFpZBkpmew2l1V3FS8Tt7DSPxZP6pXtE/IwNCeFbtjh+TsC2Zue8fP49cubXESR8wxGEB1Bjun73K+kNRpec4HphZCtxkejOCHqecg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwrawWl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwrawWl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0B6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730255753;
	bh=5UrtM+prgAObA02BlplRqPn5S0jZcM6IxHvLFOhnun8=;
	h=To:Subject:From:Date:From;
	b=FwrawWl/I8uH406I60eM74s0EtELoDUdKCqyVvERaEuV6yE79eVHMP4yBeil/lHh5
	 XmoZePobUpo/xJQCN6kIYvrC5MZ5KhBirtsNMjYWPebYY5rGAYyZIlxl7HhHL+uM6u
	 8wubJyRJsQa5X7NVHnTT/89fQx4a58HxCGHstJKfN0cejIgcqgZqnZ0EvNfhYiZuTd
	 Af9ZCZtufx/hhOipI2FPrAq8j3DmkGpOmCk1Cu4QyK+RfX+1HWC/aMVQ4B+yf3nU+t
	 CaoLRqbvZjCe4x8Urf8IEU0joV0WExqS23nCe09OBxPO84BXJSkKoAUFnCvEjEzHtC
	 9uR/mUfxtfoMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96785D74957
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173025575360.23616.6229433410253562940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58dc64bac9897d999341a3d936233936ee49763731b71aa74c270a54ce429aef
Date: Wed, 30 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730255753
