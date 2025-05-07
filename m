Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F53A1A29A
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746578994; cv=none; b=Sz8wDeiy2RkAAjnAZVNgFFDB1yNRcb3AFh172SlQ1rP2AHh0/7FUB6ShaEgHecZvHTIiDcmB+A4YVwtQqJ0hunB14OaNbjWfg8c+R3dgQI/8ep5h4zxIUvj1mnpsWsbhMrMxs8y1jM/8TgF+auaVZAge5zZ5dU6oELbc5tQ1fC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746578994; c=relaxed/simple;
	bh=djH+CzmtNtAEU/af5QZWUOMoPAcUM3phyvq4jQ6nyVI=;
	h=To:Subject:From:Message-Id:Date; b=s4c5wGB2OYktY8RbqFKXC2k6beF/90MDdJp3G9kVUosvCILKgMAQ0RNw7brcmSPCBNs1q7iIk4qGnngjUSs+Ym4XrLbPtDkD3N7PlMBQ+QrbOK5ZTk9ILo02qJtSS5rBkJipd+lPL10QhNdZLG8UDNjW9kUv9zYVv/eJWMY0N4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iATwmQYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iATwmQYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34B0C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746578993;
	bh=djH+CzmtNtAEU/af5QZWUOMoPAcUM3phyvq4jQ6nyVI=;
	h=To:Subject:From:Date:From;
	b=iATwmQYtGO6SfcOqGXSqHFVrwUYl9qYqyFaV/eF/3Qj9ajqQxH+KbaJxJtR6F3+V2
	 TxoCUnQdr4OyvEabMx96o5doV05z3pR+cXmT7zgvz9xD2ef7SJcVhGVoRlL+1rsSz4
	 nDoo3nyxsu9TTt4iRQvJQLytURdc9r+iik/FKlsCjD16VDBNn8a1gADNDLwVULt1JX
	 iwafULYza1cOacMpliFxydk/JrUw7g8U4U58gYTgPn9Wg+stVog2ZSkM0TeeHNFLY5
	 QLizeRvtXHYrWOF2TXkWNHRtJ/pwF+2EtYdHg8lZMXZuUQQYP4jkwrXgi43azdn023
	 axGRMzg6Q3mpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9559FC3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657899358.11917.8439709021091514163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915726da41ca5532320377c9d3e3ae0b6d63059c745b4fd22e45b20b6d401edf
Date: Wed, 07 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746578993
