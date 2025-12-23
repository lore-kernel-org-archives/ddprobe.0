Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147932222D8
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766456634; cv=none; b=n/8YuWUJtUJOGtsjUqp8bSpxnW6EeT96Gtd7yR3K8aXyZ9kbzFFu/a+pkJxr+uGyTQorPtkJqXgSEdNrEqHgut0zICVLmYd4Ff09C0MGSw9rTFv1B905lMVzxlRynUU1CYYrtiquS18UL7IyLBvMKnTtQBoH/sUW3yvP0q+yuRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766456634; c=relaxed/simple;
	bh=XiWOO7CgnC1oFIMntuKFPF0aE2C4jVc+CEMMgDWdTYo=;
	h=To:Subject:From:Message-Id:Date; b=tf4LJWEsVvXzNSM5drpjYO6a+LVyESm+5nJKC4rbFkB1OQZAAHKHoc9B2z/+UnhQTFTge63XPhwEFnOHtlJySemTaM/XtFgzErIiyunbbpGjm4vHBzckITmNzPNYTgo0pC3aFG7ufwacjcKAEoA9IG7a7D28EKI99W7IDJZlJ/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jp9Tx9qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jp9Tx9qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6886C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766456633;
	bh=XiWOO7CgnC1oFIMntuKFPF0aE2C4jVc+CEMMgDWdTYo=;
	h=To:Subject:From:Date:From;
	b=jp9Tx9qkugQrtM+DDm38PmvH5pMzNVj5c+oIfuEN9f0tFifqIKG9NgfilOsOVx68L
	 drQ1FlkfUd1G+IJoGM+dVWNGomh8dJL/4JwyZmdjZboT9biVubQbrZQz0eNo5rqcah
	 ae3sN7eGbxd+gSLHOhSJ57OHzJM1kpjNSy9HIHGUm2AnzkW7Rv7brpuveTVu6amYn6
	 nm9NcRcDreecYsUcvWoNl0Ku449a4atx/xq50It3PT1SNd1yuMMY8e8UebNZRW1+79
	 BKKMqX3Jy1CAbXfhUDpGQgMajbsfZr9SmRnOxIBjdwAZghO/ZHpc53jMnfsdPhCGv8
	 RNtPDOWW0vTPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94921E6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645663357.13698.485008768943273433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f07e30ad3cb95449c552ffd8a5fbb5ff59dfcc99224a0b0679fc4ec16ade3ae
Date: Tue, 23 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766456633
