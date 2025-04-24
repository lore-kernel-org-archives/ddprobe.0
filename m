Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3901F0E47
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745479795; cv=none; b=dq57Ju69xwcaAjpC1Dh7XfTs+VXZM3nytmkNO5UwBEAbL/LS5dU7Dd/OVzXjL+MXnEaCabXYuFdNVi1R4afKLEzxjjcJoLzGvWKh5uYZ4qSG02Uw2gTya3ucUFmAKo5kL5j4XVJtgVsR0FpB1yPKi7H19NVsBjEbLXoG+pVrDFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745479795; c=relaxed/simple;
	bh=ywg+X7SU/DtIKQj6ZNskZ+kLAXjdoS+X6uL6xO9mY20=;
	h=To:Subject:From:Message-Id:Date; b=YmJhtsNYTxx/RJWxXJWptRHAYNMO1mzw3MOA4pgwzvp+6uVVNgDBE6b637FJkSVmtFJU9444paPNlrA4EbYnb04KDmb7Vs5t1Nd6rROV01RhbYjDfJl6y0BNoMG7VPJNHcb6Z89lW5HKUtNAAsydd96gs9uDeH8e0l5PUOsCacg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQkqosfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQkqosfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745479793;
	bh=ywg+X7SU/DtIKQj6ZNskZ+kLAXjdoS+X6uL6xO9mY20=;
	h=To:Subject:From:Date:From;
	b=eQkqosfUiPKtVIyt8Bf9v9XKa9BqzDCNUXlrVbFdIoRQZP9csX8eO+TsiQuo0YewD
	 JlfO2sSuqvhT9PhZXyFVSaRJmn1ICGrKZgWnSXqSeuvGXblCihD2ObveGwEqB0vjFz
	 /2XNCqvVYQOpB/d0eEz0+yaw9mj2gl6gMgeAnlYjtZ9P6TDWtnBc16Ao6/XgSttLJI
	 X+RRqdL7ttLc/0k/ZMGCXh16EpX7/qO4YxwB++/leICslO3upeHj4afqJ0WqcuARqk
	 hOmLFLz87JVIazO/EJkwVnFRCPE+o2slJ5SpZ5iKo0ZXwbk0kwF7b6wgBlmj8VwQ2c
	 DDNE86V8L5qFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A0C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547979357.21108.10911979455867541927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c06232884d5788afe2ac762f4bb9770eac3cd5546d35adb1b932739e81584c
Date: Thu, 24 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745479793
