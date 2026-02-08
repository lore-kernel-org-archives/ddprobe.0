Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DB582866
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770522234; cv=none; b=SHd9CufhRaEacD24HkDs2RJr5gn4u5UYLdCuLai/Z5dI+HK9D61ce+FTc3p3BQlNjOtOTYt2XFkfDmbnUsyijeyfL4KMWfBKx7MQ8JuSyjnPYGFDLqQVHgmSlDlpHgEu1FJXq5pmwCLIMtZWeZfivefteoq+m5+fUhToDCNgyn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770522234; c=relaxed/simple;
	bh=0XpHsYQ3iPx+lsGLvaweb9G/rkv1EoWG2BD2nnMjAXI=;
	h=To:Subject:From:Message-Id:Date; b=HYHwe4Vd8ZLm3ivjpjI7sPzDRwDIHgJ49E5Ygy4IwvXE4czFVzAZtPBQou+ddYHueioPtVvoPDyfnVlRxDKY//bxeU9Tg4ANNlKrHZgD5i5i+Vuz0yTZkYIOqCMntULX2jBE9jNPmaOf4whiRoferSVY1M03NqIitXhD9QXjeHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fp5OmeMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fp5OmeMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770522233;
	bh=0XpHsYQ3iPx+lsGLvaweb9G/rkv1EoWG2BD2nnMjAXI=;
	h=To:Subject:From:Date:From;
	b=fp5OmeMcTdQ70yd3r6up/I4dZDRBYAqZ0kHW1BfhPD/MZSvSqGhk6BymRrGrmcGyW
	 aHH6xNvt+dZH1lRg8/Wj2GCFhafvxKOTx5W9rwS0qsssjy88hkqq1F2fjhoo0jiQdv
	 ZYyJ7K8iGjz+st2PaQ8R/5CzE3CmG8CGiB61K5CNSOUIlGlDAX7DbtwOAsOBjl7k/T
	 AOElgUbk0QcnRGBuxO/NEsmIGxaaIm5C0sHN8eeVW1e0t+voeUxxGoA6cEqRseNxzp
	 jcQwW/6jDgzii5zKr+VHCfKfSXxiumXifJYu7sk5d/x1zY3gedr3yW8m4xgVjSVQAs
	 WUNS3rgyjoypQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A7EEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052223358.9593.4657480763262979886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b03c8cf6e72d038f90a912545509bdcdcbbd1b9038bfa74c7448ee91a441c9
Date: Sun, 08 Feb 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770522233
