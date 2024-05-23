Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD7820DF7
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 04:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716439403; cv=none; b=guA8Jy2t7vjVD8OX1YKy+7Y1Kp1OgTKkjW9gAZDzurPVPxCvU1bDznlTw7P/scqDYulYWThw7CCC+E6c2sFJSn/ERLsNivA8aJbZZ8ZlZNkRQRoErWSjVYm7pcgjXyu26bdB609Yd3lcJmrrUX9EYKDn0v3aEhZwOEEtx8MPhvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716439403; c=relaxed/simple;
	bh=4CNoz6XL0YjEtXJHz6VsJPdoH97stzbnJ4IMqCnngu8=;
	h=To:Subject:From:Message-Id:Date; b=BtEk5aJhJfGPfteHMFZQ4XV5JADuSuoLF1qROeusYXCxr66yYLrz9GwPfAe/ICZj4AaMVEV6YkLRJk/HmEs42mW3/sb3mFFqXn1YeYDM8aSSS2BkjsEdLvSeMgytZvuU6KC0yoTdL9FnKwGCRI5Hll/fujEQ3wU7rZENPwTLx8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7DIgFMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7DIgFMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C0DC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 04:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716439402;
	bh=4CNoz6XL0YjEtXJHz6VsJPdoH97stzbnJ4IMqCnngu8=;
	h=To:Subject:From:Date:From;
	b=U7DIgFMOD2UVCeh39s2sis2+m7NCA6V9RGpxClfBto54y8cj1jI1mB1A0hA9tJTnn
	 +X9gm3AHExax5CNKP8LGYV2gi+MIwRigLKA2npSQkQ3WLvM0yKQczlpx0yF9u+bA6c
	 dsXqIf/hJMsbpX6f8yY3XJ0IGYcUeokQqDXJkN3f5VZKXYguKe28HpV1cKVGKQy1QY
	 /E8l+yXAyn409pMMxfP48biSKR0qOy8+I3e1fdd/Eb12YpZmwfgdEqFu27DTImUrOW
	 ev5aSRDBpnolrM0hCcETjgoWaWIQ3pZhIPPo9GO7AxV6D5tv0yYbM9yKkG+XQU3M6Z
	 uv89k/k56QJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE08CC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 04:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171643940283.9073.5006384446305882003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddb4b03975742dd1fb6280ea832b4e508d238e9a39fb338c83f369d3175e160
Date: Thu, 23 May 2024 04:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716439402
