Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022D11487FE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749515994; cv=none; b=oeib5cITQXjy458arGPffUM5xL9yFq1kSOo2RxBmWZnu4Ht28PS8lzy4Esrdg8zVNA3IJ4u4TApFmAb73odGXxSdvn7xLzTUkla0PtltoqB8C1sOq5mc7/K/z3EfhY5CAUP6hVzGyxL05Z05Y1KUcq8LcNwYiD0IungChp4Hyho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749515994; c=relaxed/simple;
	bh=G9oZCmdm0t0J5x2DWPu24bJ9khXZY0h5RC4spM/qgwQ=;
	h=To:Subject:From:Message-Id:Date; b=MlY65uFEKXTJuV+ZqT01NHAdLWk/uRJPGOk+P/WBl20AovrQ7zm0YK5PhbG8yPFJ66e1XePW55qvhqRC+UIapeDFnZr6XFjzoHHm0HPLS8v4WVLRnu7dmBW9TNmjd4cVqQZgfW1DxObqCTLNxmniIWh7Iei2ptjMScMO2ZxaQ1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WT3oTRoD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WT3oTRoD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5DCC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749515993;
	bh=G9oZCmdm0t0J5x2DWPu24bJ9khXZY0h5RC4spM/qgwQ=;
	h=To:Subject:From:Date:From;
	b=WT3oTRoD0fzM0DVCtYez8QPCHfW55pL4dD5XKDyaO2/M3sSwwjoTQKs6HByECj4BO
	 s8TCXkskJLTdyIdIcGPkUEBqikVtESayWs9eqDNPYHQvJT8CGnN4fLOrGTicgsjxcW
	 DK+kQfSc6J2LaoIOP6sSTIb9OBHVDB02FSxc/UEGnCnKGaN/CgkyXG1LxTJR9mzQ9Q
	 8RefjgbqO3ct6F0fKCxsyp/mgVhawBlTF/HTUxGRPmTM9h17/yoF4aXrSEVm1caNpE
	 ep6YbjMd2Usa2hhYmXQROcKi+gYVJshgJ5ceYomIRrcp8fYU+/hch9PUillKUjnD1K
	 aVg9/wnsQbrBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D2C61CE8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951599357.1898.9757685003949845279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3134552e3352bc1cf6810f0fb8f68fe22f58d565b5a60794312cdb0459826a71
Date: Tue, 10 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749515993
