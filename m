Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB6B29CE6
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720586783; cv=none; b=JtyTdBIyPGyCcskOnhTs1cFNl0/KuIwQkQxbCRzQ9fgj9ZxVFZpYzifCsIqNm2OrHubSVn9zVuovv7wiAtskuGzO7NCXDPSorWeJ+Ax+8uUE2ePx/tRCGyXNxWZS8EFQSosFx+YI3sbFQQsSCQUvyk6GIuYcxbIuRLwRq0RA0lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720586783; c=relaxed/simple;
	bh=VbqTMNWHEaYcynjrmiMiWRb19Hx5edx8nxo+A+Ar4os=;
	h=To:Subject:From:Message-Id:Date; b=b5JRVM8MH9obEF7/VDkM8Pb/PY0MmjVQSXCuchZQMlVbl9IbbuESkXC1R00HITDvKugE1F8pS8acGtt+Pcg9uwkjjy8tufvFtRDE17bBsbvumsGrwRQ7DrRwjdvlXzFpS0Yt4wbWg+5fccbQwNvtsQlfb27op9k3S8z2ca1HvCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnJlgJ/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnJlgJ/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0FC6C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720586783;
	bh=VbqTMNWHEaYcynjrmiMiWRb19Hx5edx8nxo+A+Ar4os=;
	h=To:Subject:From:Date:From;
	b=LnJlgJ/FYiANPe9Qgye98k4Rko6QU62eBbHxeZRLynWvOQbiNL/+Y1cEs+6+ayWHN
	 qzs5NbMD/a3CxaAhovKwLx5OrNz0rrbI/ZZ7iQk0lraBaZ+z1GW128BMhSuYgbpX6K
	 2gC+r/8X1kGci/MNpq0eoD2NpRCdZcTZsFtZ4dTqJVmlRcBw63w+S9eKMG/aDbznNG
	 x0HqZ8WqOlKfsvv8sxwj4aAG5BGtj3SvUd8QcQkAUWU/SHuLd2IEJSXRr8Ym4LZqGD
	 qIiRYwTny+9nyHKKN3+dSrbCcmpO6Mie1+ClORAxtNp+XyhNsFxfmOb5nXwIWSTLks
	 4/zhl/j7lhX5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3F6C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058678282.10226.9891131375924905928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a60ed6f51915b09ba724102f204d66ca0c5b656e876338b4469b726c6fb7eb
Date: Wed, 10 Jul 2024 04:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720586782
