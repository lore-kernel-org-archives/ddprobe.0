Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19911307494
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514834; cv=none; b=eHTXXIiaJcvrPJ5peox9k62PrK6884h8SARpQKIHOBgmXhsoU79/qqla9lXvsTyt2wp+Ud+ny2fybZqnBQQHXv2vkjTJoPzOTXpTOYIUJyNCFZ5hFcPwelX9XmoaNSsaxDhefwF4irSYrtkJzYLlmUOn0FaOiUt02kTa6k2v8Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514834; c=relaxed/simple;
	bh=F2HAZ1BYOdabVOmfAiWUROpgI8+uICjCkXmbd615pjs=;
	h=To:Subject:From:Message-Id:Date; b=o69bU0wJDWVbwpkD5aWWhM5PUy7UKbnExKN5Zke8y8UelDNO8Bk/3LlMMYGjIzBCjGoyLTJ/OX53qhXcycWsMXWYLj4igzXxrHiuBejm4rz5YIzg8/CrpEAVW8XCaAJqwYktgXir944PrHStD5GeAgo9pupgXdeNu00cPuC3EJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2Rh69jJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2Rh69jJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACD7C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769514833;
	bh=F2HAZ1BYOdabVOmfAiWUROpgI8+uICjCkXmbd615pjs=;
	h=To:Subject:From:Date:From;
	b=I2Rh69jJRmhi26mvR8xi2IT8o6LWRXDc+cUMlqoAk54MTWfUV01AC3Juj5cGlTXlL
	 qX54Yu+91NRYlmPq/zAJF87ThDlTSX3BqtRszHWE/T7pgZkAjSXr1ufev7NvMFUwD/
	 yQB2yoC9H5tNRNXP90CimOSZ/LevZQfUPSrJTSp/vLJz6ZDHW1bMOLfVWYyLLs+S7o
	 fZhTt+XJbT40ctii9mW7zzhNVMDIW+bvvZvJsI37yqLP88jLqJ9tLwGIc95O8D7Oap
	 EAYIvbgxbmrz3gVLDl5t6XnkFhVyVyfJeEzC81/8LIBUacZKUaTpTNoNbZmWrm8cwb
	 OI8Vt/qC1PXcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9868ED2F004
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951483358.5172.10026956707868139505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fef2c6f285f22fa220960abf0eb08c61f4af0b3047884410f33c6113131728c
Date: Tue, 27 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769514833
