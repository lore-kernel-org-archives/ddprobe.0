Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92EC2571DA
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765964633; cv=none; b=ht/XQ8cPu+mfZBU/ZTqZ5X3CvIzkzUvKC+pcK43HKkMEnAvpoFfqz5xSVDFnstwRj7QLEFJBomo8+C12sF6X6FQZ0kaROn6FkGkxS7kQ75/JDvZ2hNnXBfXn+VoP5ztaQ6+PQwz1VfUBmPPHjSXZ/QPyAhYeOl96Z/1onOXajoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765964633; c=relaxed/simple;
	bh=RcvUi440THQnRNhQg9wrWX0MryuOHN3HnrlheWR/Gtk=;
	h=To:Subject:From:Message-Id:Date; b=dIPJafxvF3dF2BODlIgSp4/NF8lmbN1vyFwI1o2R+D3q2ecB8n8mvPyiVdPz4vvGhs3MOPO8VA4uG1tvghOD3OsRTn79nOmT5luo2iUYR1U6JQ53HYW4/CPzhaPLifNmmWLr3XNVQriKWMSCqT0/jaKqiUO2eR2XjnhDOYAoUvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQzsCDN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQzsCDN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12EFC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765964633;
	bh=RcvUi440THQnRNhQg9wrWX0MryuOHN3HnrlheWR/Gtk=;
	h=To:Subject:From:Date:From;
	b=nQzsCDN93Cx7zW4IocTSxVMlM5rEUNnj//ojSLhLQIm/gNDCUfqcV4NwqpT6iYQ/2
	 UqUIz1x+T0vI/5Xj6P6OP88EyF67lHWGgH3j5pTlBPJ/M6fEMK8EiS7PX3UjX7AaXS
	 Bxw4guHg9ERyRIDUIKVZhB1tzfx3jjqXcGxVoAyI5bjRUV/7n614Wwh01sOt+Hh0Vx
	 E/SUIURIP3KhZGGEnsbj6GIpcqrF3Hbs/RMclQfCnNbxvnQkycL+Gi2ycOsJisiJW8
	 XutU53ByMi1QjJ7IFu6mlGO3XqK54QLWbZ+zHj+Ee596a7fj9FZ6blwLotwqVOsL3q
	 oeqAlx4kjyNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92588D65527
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596463359.18233.14247969417343746776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e449bb424144280aab5052c00ba97a932a2f0982f6b5f7ddd0398444420e5d
Date: Wed, 17 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765964633
