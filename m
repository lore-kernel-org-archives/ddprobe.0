Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D93B23E229
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764701574; cv=none; b=H1brBMCIoNsluFJ7xguaZ7mFS73M5smtKZJLe9q2ydkZCkPFr0qkftAjf6oTGYORk7BFDd6FC4VRZu3b1ZbU4Rqy9Lu8/MYLoX77xhL/otGetMga/EG/EYTaapP1GBrFsRhB5qJR+4BkzpDTsuMIAwNMR2ASiOxOWBgMxfx3wbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764701574; c=relaxed/simple;
	bh=7YsZjqSAI9evxqQFAm0uyRJimSwOVQiy7/dDtrd2EMA=;
	h=To:Subject:From:Message-Id:Date; b=Ok0CCg9aYt3UEza6EdIDSZ0FfKK4erW6ORFkT8lxE4wiwzG/XgUBJdBHAKAO2MdeaoF4vtPWJ3t77CRJqIKQUp5VkZ+d8r9BEGk5+KD5cgPJFVUW+P9MZbF3XNWSx9kcePvFnLUxQCWqvCxNUjztdRiDRt1G7AsArNnes02So3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9oEQWyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9oEQWyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764701573;
	bh=7YsZjqSAI9evxqQFAm0uyRJimSwOVQiy7/dDtrd2EMA=;
	h=To:Subject:From:Date:From;
	b=N9oEQWyFeZCeo9DehAwTuXcNXJcU/a2kxGuQW7OACGUK65PkBS8Da6d0wTwXXZHzE
	 f8kefB88gLTLCIvGyb/LsH+Nf7Y0Vo2HxZDQzLQO19O2jLK8pSIsW1fvUDiQl/muZt
	 e+8mSVrnBmvcV2awmukOkiRxyOLxhsf5he+VK6u7LmaWYOionEjyWN6pfXLbOUeOqf
	 5gDCI7r9PLWppQHkLkW7NvDKZYu7ex/XaMoelyR9lCrACjHzbdHKclSy4dNcSn3NMf
	 GkyhQxvrWM5F42ZJuoelNBKBmmma1CgjLv0koJuncEKCmy8S81Jd0AgaEKcq7Gt0s1
	 Vn5m/sIpnDBHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A0BD12663
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470157359.23880.1842189187443670889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cd0b44591cadc566ec8f5f2398b6ec2938f9450bb07f154ac00c0efa90c54c
Date: Tue, 02 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764701573
