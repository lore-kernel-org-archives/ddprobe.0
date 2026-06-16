Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7F119F121
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781568994; cv=none; b=L89bOEO39iN6tVGh74ctcjE0XPBLv1R8z7kJKGgTRgcwxAlgFugZ1gHMJWHmw4bD1xSORJbyuSFx/7hNUX3TKfZ90yQFzy78QGNk2BeCBmAYqeQ1R/2h8dGFIZ4WwNSWJVt1/XHSLUhT6T7uqetqZwxFYnTqeT58A+O3A/W0i4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781568994; c=relaxed/simple;
	bh=U7VUL1mqf432mGRG0fv8n0zk5K+2p/T+RuPtWZySIAg=;
	h=To:Subject:From:Message-Id:Date; b=dxLftWHX572wK4e8WgnHN3Yp9YaABa3Osbp1e03zX1+3zwniw7vf6hF1ppvuL5xA7CO+8Oz4PEWqb5/TKWOUpRkilsDHWMrnNn6vswiL0V15bEEjzO41rEN/pwJXe1lK5p7L0zL8+ujH0o+WJuAmXwCGk07pwvg2NeZrPOz673A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDD0YwEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDD0YwEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 059B9C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781568994;
	bh=U7VUL1mqf432mGRG0fv8n0zk5K+2p/T+RuPtWZySIAg=;
	h=To:Subject:From:Date:From;
	b=EDD0YwEHRk7AabPYBJhFNeFkcNcMUkCnSq2G5BZJztKyvMG4VtyYqxjCJXmztYGBK
	 WY0ii9o0b/xacWMaNuvXIJjG/7F9HaXOZbKhaDilZbDn3kGkd/BSZZCogl0yXAeE80
	 ncxZ7v8je3SYB/dsAfc+c5uE5bsGe6GxoqgIa8GwugdmWinFQ3HSRPZ31vIyWlcCFh
	 0O+i/DUzMmBtuJ0OTS6fwVOwxC41UeqmgTKDZU1HrvduV2vILJc3w7QojWzw9UPLSw
	 U7ivO41xcOpM0RV23CyG0G6WE14ucRY8Vci+BImr5VnmyumKOXYzTqb6Mc/jtrgD5h
	 7bmn10CtAC4zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA0CDCD98DE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156899386.16616.1811927436805080002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89cb3f425f9308b3ca84caafbf893ddbb4b005e449f6ebc209d8962d3663970f
Date: Tue, 16 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781568993
