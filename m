Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229431C6FF6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746473994; cv=none; b=mfK00e0oquYtMbp42xQXRmjgPYnvaBKHkFdhBAy0aXNxz7DJPh3tBqqRPSnY8m+W+A1jqgLXRZIaYZwDOxA8ZxSrnzSMd2oG9HHSCcxHm2nTErScw+imGjnBTH+TPwslDq4kBHXlbqd9tmTfEzEOG24WDsl4TU1lCFr40LBupB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746473994; c=relaxed/simple;
	bh=DMJBPFM0xPslapEUT0E1A41/wvv5Zc91nJeX1soWNF8=;
	h=To:Subject:From:Message-Id:Date; b=fEmWZN61gXaFNTgltsLZ4UN2sB5vB+HLRycgvr0ZAjPvgBNT+TtbtDIzqGILcu7fBwFruyRBnoW+ePfYudtNEVsY8kRPgCu3pWvPSpeuUnjCqrwolcJLqlI5ctNjfC7n3B26XSgVQHhTmQh02z8IE4cGQw9qY4Nd2vpZgq0SkSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvGLeG/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvGLeG/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFEAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746473993;
	bh=DMJBPFM0xPslapEUT0E1A41/wvv5Zc91nJeX1soWNF8=;
	h=To:Subject:From:Date:From;
	b=tvGLeG/GA402K+5d3kBMxGt1KBRViP5dvEaTSX2JqmE2L1/hjIZn2FtbzMcNRUjgM
	 UiKJeBoW0E236ubrmZjZfEZlsqH1iApOpTKYMOkVJ4ENNxEM5cGYJtrrmKpi9oe3hC
	 8SyR1j8VvgF6QRwanci9rNzt+UI6NsITFagl4V5a1SadWMrWuS0/HNYVI+vy3tSh70
	 UGArWh5+tVByrRZ37Y18rsj7fflcKqKY013xlh/BJjR5Ccjcf15xK2I18lj+2YFRXv
	 8XSHMzkWxSKheNYF/c0rd2WWsSqKbx7YoC/JoswNIS1G76iDFUJdzREeLt6zDJY6OU
	 7TfAra2si/BzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB4C3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647399357.8390.6685099500779737189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c378713edb6ff9a04547034cacddebb74dfa20385cc1a9e9267fa6f3c92ba3
Date: Mon, 05 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746473993
