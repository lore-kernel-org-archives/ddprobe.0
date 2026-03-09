Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1831E23EA85
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773029694; cv=none; b=Ic/WI8kYdK0j+OxzSmKTQv4XltQstQmo+nFKsmr3ik7G7jHTpLBys6QUkyyqnM2vsyB7tbBymIxolSrRIAI29FSFFW3p0UFnNwnyNstdmVHwaNBQTuCh8/pIYwzhquRG7fjDd1n9uA6MkH+IcXoJSJLrcFLFmC0UZ0uGrZD+GeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773029694; c=relaxed/simple;
	bh=qPK0wWlnwgm0mEflCieuvDtreMATi01orxT82urS6dk=;
	h=To:Subject:From:Message-Id:Date; b=jS5xBBXNb3C1FA+tOpzqYATjkFuJPauOqVSpCWCNu54Y0U0f0YRvNKQtTGvZuid1s7QWH3WZ2mZxd+97r1cI6US2law/K+iWpbCqMdvScARX8IPI/GLvYCvizO4M/2Esu6ySHYX5JNFS6ogiQ25m3s3u2LUAXrc2EZr9qrVX8n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSamKz+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSamKz+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6605C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773029693;
	bh=qPK0wWlnwgm0mEflCieuvDtreMATi01orxT82urS6dk=;
	h=To:Subject:From:Date:From;
	b=TSamKz+SV3J0FSjRBOcBt65zMLbe9VwF2Vw8htrwDCuqQI+WSRcDdFJBM+trTl/Ha
	 TJiesXdYHbUaVT6LD9gJ4O8k0gZMK2RKgKlDDUzIz/cv1ddrR3xR8v9uD3ugIcLNug
	 3YsOP3Q2q1rL5vWE1yDkRXI6PVc9uFqgYZCMk8xwA+v1xpbxZ8qxqgoITA9h1Sgdg6
	 ctNpeNjyNJpZEhTMYjhWzejn5b6mor8DCDkhHTnsqykp3iJc+fgRv6/zbjdVSCFvQb
	 auf+5oeO2/AjApMkma4SNKZflTuE8yziTtNefcEwM03ZlUvf5rdccIxZfwCNyz5CvG
	 ewfEKEkMjTb+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532AEA8542
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302969357.29359.8240739079675208629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69008332ca7b4777ea7e97785d091933b84321240a633c8a6b375542513ae5e
Date: Mon, 09 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773029693
