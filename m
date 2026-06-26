Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F813B8BC6
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782499114; cv=none; b=tbq/G79lIKsHJUZdwWSkcbV0qU/Nhm6xPa29CZkqhTg2BrzsZIF+kBLldAb77j0ajKMxLgcWXh/IhtltW/1etBllLMmUmx9Sp8M5Sl/gZX1GCCp4rgQKJYPObhJMWEsV4jWvGu8weSe0OM76Yq36DVp9u763CFnOsA/897oGGxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782499114; c=relaxed/simple;
	bh=y0DMp3ePX3Pn7VFDiPG9xBUFz/G/MLtexlRedPK9K94=;
	h=To:Subject:From:Message-Id:Date; b=njNSqW1gga/Z8h/roiTUoz1o4Xdm2Si74ZH1v3CdLZHZ29n0TIeDKs83V57Wqv0JH3bsk4rRR8xv0qdj6fKOP1sHJtD1o7xrnjVxPwYoPJxnwcIqlCeecdLJnAX4XcrBMJS0vLt7+0kCNDD4H/1/ogXgQYRL2rz0OIl0CUYERQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bu0Wfd4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bu0Wfd4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C99C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782499113;
	bh=y0DMp3ePX3Pn7VFDiPG9xBUFz/G/MLtexlRedPK9K94=;
	h=To:Subject:From:Date:From;
	b=bu0Wfd4ex9j4kaoNhVKQG1Vm/29O+6jY6Fd+pi/ev6SojnEFsIkwUbksL8VhSOx7I
	 ck9KMSq6D406bT3BFebTiQ+QpElV9+8pqFg5rTJBejyGvXHZLvTbIHHE6mB2Q7PmDV
	 /snBOcGfpy2qHd8wxSu2SfIskmNaoCY/RqAzn2mCPu22sLA/6u74BOu+I/0qbegBax
	 D46CyFaFEwrpDNKBn6RmAKXsUtl1EPuyQGuXYPhmhbqSJlEopbd7CfrY+R6TJ8fdwz
	 CYvx0XyVRApHtVrZGJfMgez/Eznarh3r/pLhcAh++c1c2rsbYvpXtefGQ1ci2Mi2G8
	 89VU9Ub4R2Q3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE764C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249911370.11378.1866333326078598379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1edb510beb9c38a6833b102acbd9973ee58740bb32b83ee2ac8adf88513a2b67
Date: Fri, 26 Jun 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782499113
