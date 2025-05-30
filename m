Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E16A92E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748576994; cv=none; b=ZN14QSiPNts4aa2JHJWdrj9uOpvJZsUP77AXHfjq/Z5ME8NwNJBNqTDztDzKvewxq8GR8afsL9Ox2ou3gzrADMrHKV16ehpGpExCXSaapPsvmuk6fCqjjuiP8xnNczBnP7r/3SWhxGl7giM1HXGiMYHTVILatTUVhnYfyWy+/bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748576994; c=relaxed/simple;
	bh=yh/cFDbrpfbi4JJa6+76IzAU0aaDxCc1w1KoEDLuvEs=;
	h=To:Subject:From:Message-Id:Date; b=NsKawSKNqWeAHAQtxe8/JU0RfaukzOerUl5zbFjmhd1X55LivJfbXAmbgeyUwD6DR+XNwVqzrNf3udkTpd1OLD2g6fe4Qc5FF/i81AlS86n5ICwtYcaOqHEEa83pz59e2aaQ4LbezTe5o7Gxb/ujYKWDbUinTXFWn7P4VmFml/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nk4pSKuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk4pSKuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B58C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748576993;
	bh=yh/cFDbrpfbi4JJa6+76IzAU0aaDxCc1w1KoEDLuvEs=;
	h=To:Subject:From:Date:From;
	b=nk4pSKuJy+bV86zGkZU8s5xhiZheORmiG0FlTqYNaeIqnSU+c22xaGJXzsUWja07L
	 kEsVhS9vyJqOB1kq48df2Yjor45bXCVOjZIOqPHn/Q4mMqyfRkxeEoPzMzk0dhla2l
	 5mNwkDljMXAVMuOtu+wigKbCZapqrmR/jUkuzVQSqq8Dc3z5U7TXWRKW9xIWzhZ7yu
	 EUFNBDuYS3JyNH6/jtpd3wmwQMKvj8aCA8/xHPgCholgRHQeR5dPBT1hEVWX5JeYkj
	 e/aDg2L4F3UFlX8Pu5SPYT9sE6F5McHfuWDxNYNSSPNAA6gtHe8QVXkC7LoHqPqRHG
	 ifPHCzX0c4QJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F091C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857699357.10710.10754443569369113646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 648c84e418daf9380369abca85d388d7762fc6c56342cb604b3aa3bba06e7d8f
Date: Fri, 30 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748576993
