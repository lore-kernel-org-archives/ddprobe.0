Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2144C14A639
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728743754; cv=none; b=p9twQahgsyqBnTY7HhkbLHNX7RTDhuh7YY02OU87cSHV5ELeb186SvLMOWIcPnzbD3rTyy5c+zjO5a1asyuuaxKmdtHYoJEn0BQitBtqB6nUCigndO1JyRwbWP8hTGe0WRhCRxhojYfdq/5ZrzZxb7M4JSAyW4duBcocgEB2DxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728743754; c=relaxed/simple;
	bh=k5TZfwC07SMrn8Iyr9RbWN0TXTnWiKGSVr3zaI/x44Y=;
	h=To:Subject:From:Message-Id:Date; b=Y+Tr9flk25+tX4UwAewkx7FrH/FppWU6hbF6T+71NcR3MB6nVd33VmlfOcGh7s2oytBBrE1DgqOfywWXvpVBBSKdkOuz5GCvJzCN0eqERS7eSxaFmeip4uXpn/mZpkT2ZwD/OcVftsgOaH37TXrr/eN/IssZysq7zVL7+Wvd0cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgOUyOHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgOUyOHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFFFC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728743753;
	bh=k5TZfwC07SMrn8Iyr9RbWN0TXTnWiKGSVr3zaI/x44Y=;
	h=To:Subject:From:Date:From;
	b=lgOUyOHwc7h/1Mg+D8A+JlVWkYY9K9Zp0O8HDh9Q1i76HqxdvrHS3e086cNEXIkly
	 /lYwOJYmDigGC7oea3pabU8TFPNTCa7bZ+JIrqRCBIsnnv00130pPMrfAYWXkbfjb8
	 qEQFldUwV5WLhsmUOtzehEZqslNgg2Rp+ru/JYxQ/OUfupG0Nk9c948t+GCCU4/l5Z
	 f2wjRQ0hSa4oKqlffdcBQ/j6vcWPlKanKhRc9LZ1zbbk8sYnDFB56jvPzCRCy8s71B
	 OZl55Ogo5zU5Dx0V0LdG9inGfw6f89p6BHrlIjIH66AcE3BPtb3LiJTj8DCb+Uz8LR
	 flPgi8U1GbhFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97436CF2566
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874375359.2639.9414294471215534593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c4237bf85d7659858dfe59bca784a7a589685249609d58fb48f2394b8c7f1f
Date: Sat, 12 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728743753
