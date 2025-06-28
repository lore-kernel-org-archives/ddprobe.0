Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F18D222593
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751105994; cv=none; b=jifV1NQ3DBKXDXopM4Il+K9aUJTw3i0s0sfwO+MtTY6EYbVSSZbrFHjSLBtjIZrGTVV99ljlM2/O6n2T/U8Ayo9DCJYkgVfnaui1Q6bOa5p8BijmqA6k6/hPbU9ieoYVZBE8e3vXeW9dlyXz7fn8SZS01zIv35ta+znVtTcNXvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751105994; c=relaxed/simple;
	bh=dF/9HxzO3jU7B+kgm7plpifBnLrrqKXs0BWx+1fabE0=;
	h=To:Subject:From:Message-Id:Date; b=M9tbpcTUq7FRmbq85Y4X2qaa8SbCfworffOtC3bUA7l9QVHZXm+RzKo5IBo18QFDEiVMGFUVT1AB/LwnRLoqHP4YW/dQaKgZLjn2mnTcGgIDMKcyHw8E4HHJ7cCMaFVyw5rYVDMfYMDylNsUROn3A0BoaKf2SfR3PVwnyQd5Xok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSX5QiYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSX5QiYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1CFC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751105993;
	bh=dF/9HxzO3jU7B+kgm7plpifBnLrrqKXs0BWx+1fabE0=;
	h=To:Subject:From:Date:From;
	b=PSX5QiYeuhazqyS6oCqgVCEG0O4r/+liKA+AVuhbQQwSIPnKm5SAKEoreY+RBJG/B
	 UYViA4rIkIaBr6/i/5SmSIU7K5s134WvW3OXL3KMYzVoD8sVAtRnAuwW8KbULF9FWW
	 8xZJPX1JsOa8Z/LoKZuELKxl8cV+7MjnyagTMaV+lFRXvNHTJfXBNvoWdIYLEXb3Dy
	 hpHMs1fktRqHOG7VLcQp8Tv+Quz1D24LpEGyhjmUWNpLb7KYuZ7dnqM4SzbrYtKbGD
	 3BYemcCE3qny7OIdmL9VnhmrSBKBTyKS2MOsjF59N/5Z7hd5QRS4A0AyPO/xfcOw+J
	 09vaw9h8HEWug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B736C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110599359.2281.271569077715736906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5538891dce940a318bea3d37e04b62b6ef6ba38734a9ccae9b96776905b4f1
Date: Sat, 28 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751105993
