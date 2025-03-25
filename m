Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4A31EEA43
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742930394; cv=none; b=sP2bPhU4WSHYwKNdT2ix42EvOr/uUuxANUw7PcEfOaZDt1cjXMNZDPIVKKOF9EyZbc1yaccC8SYPiqPCctVX6jeS4QY9mt/ZtKAVYA2Oak9M8K4zzVEw6Le6sO7S144G19gKf24yB0wPGigmLYtUgl821Rdq4WmurRgyY5CSNoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742930394; c=relaxed/simple;
	bh=N9VQNwiQ4RdwsxEb/JKZ9lU5O84XKGj5xaWsK/xPBV4=;
	h=To:Subject:From:Message-Id:Date; b=H7IYKxgH8h9yi9yFN/PRSoNAvr/rPiHWfXDtZEijDnYXl8geCY8pjq6DdnqyBTZ54hmpcOwehzJaV6W8KO40BxTnCUbIlQeEjYWKiiy9NH31OBfCbYhF7b8pM3SRm/0QEFyI+4t+CnmEEbayVvNSQX46+RWbFmuFCMTfxdOupm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksqS8kvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksqS8kvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B931CC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742930393;
	bh=N9VQNwiQ4RdwsxEb/JKZ9lU5O84XKGj5xaWsK/xPBV4=;
	h=To:Subject:From:Date:From;
	b=ksqS8kvM4GjLBogwMLr9EFYUqzM3Xp96emYsKdyEPTJ0hfzKJwMPeatKEuZZB7zc4
	 dwmGack2EgEd3AFqojFFTnmc4GK4QpxHunhkgd0TLTnJGyj/tuM8oETZafYJM0ceig
	 05QqSDUJP1igCKJs6LX42F10DeuoMYZ7rnEvIn283ccvVRb6p2HtDri18xl1+0tnsd
	 0nvROCHbKBmD0SiasI/UQUuZVrbfvjygzDm9ZDFgoM9QXJgncWdLAqjzUMObL5Bx3R
	 MopYYpzkWFQBTODPreUcub+2ALUqmcMGmIEeEOUFihRPcOKzZZnxfTwWrmxj3V2fpb
	 OVRzsCKy89JXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B0EC36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293039364.32434.4075544347605036262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ddec4ac0c897a85d8aeb683abd9c1decd2444a39f0f6b60bb3f2c91b638985
Date: Tue, 25 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742930393
