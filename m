Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146FB364AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705824497; cv=none; b=mheBl2yGs8J87f/RKLMPnLfwergddcj7AsV0R3AmRMzXfsbYNU6ezOCE7z6Z43QEW5v54T8pwGEpP2jugOLZIrwrRGUw+/uQoQ0ht0bRd6RebNcp+ViFXhsQT0PEP+WhHdUe5bGZADkB2lcg6ft9ySo6vzVrOVi2BHm/1ckx/dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705824497; c=relaxed/simple;
	bh=1kBF9h0gwAe1jiFt8fXS0M7kYgGR2BcMh+N4Ax3nCjI=;
	h=To:Subject:From:Message-Id:Date; b=aIdyig+/pVPLoTX8kvZGulggZKW/InsdPXtukdYJ8yI+CHiyqNLTK6TmtFnjLJTa2JbrlPLICp3xig5YZi7DcqG0TrU9lp7X+uG6t8TFV5v7eJIfdYrR2rQxr3YXb3k6lnH4Den31jBYZdpndfd3E++PnB5oxBZaNIehpyEMyos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oi58uoOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oi58uoOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7887BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705824496;
	bh=1kBF9h0gwAe1jiFt8fXS0M7kYgGR2BcMh+N4Ax3nCjI=;
	h=To:Subject:From:Date:From;
	b=oi58uoOF58xrbDy1FiHvN5EZlvzzM7ewvGe8KjHYrI1SGVYZ4RfCFwIBTh7WPjcpi
	 3pWnuCupzwq8bW2fjiZFNG9cTD0R7MYDjN3vWbzvfScyADI14omZHWCwnm89QY8xoa
	 uZq/9ndBYWXA6cg+SK7eGvuHNQjW69DY+KYJS9u36vYSYmA3i36kR6A821t7nv5Yvo
	 X59mrNXXRNR/LmvWuKzCxbRrpAu29uLjN0dFDR9HVKbALkFVOygOInuTDPj7gtzYAX
	 Trx3iw+kPGiNpd3uJ6OtQ4BQA3MzpWXHWa7O9qWVocgX3WwC6hlgO/U8qxVOlllky9
	 HYYrTcWpKh9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609E4C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170582449636.32453.11641656708001214216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb371848e3420db2895edd61f969ef36c37869e9a9dcc095858dba6f28f9441
Date: Sun, 21 Jan 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705824496
