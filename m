Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3218636B916
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791186034; cv=none; b=qr8hc3J8+WNfCqrBJgEP1+ns5cT8qG/QMmf/iN1U8dxIuv2OlaO55tYbDKdfeN8J/MQbg0aSYQZDBeJq2C51O2GUI7T/brBW0W8zbOtFddM7XX0MXLgs1XDicJxV/0LTFzHXJ56uIYnzOqQmYW/Tq3sun/TK/O/9fdnM4cITKbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791186034; c=relaxed/simple;
	bh=mVC12o3vAh9AhCygehRHmngOUElrNwhTpfcJUYv94yk=;
	h=To:Subject:From:Message-Id:Date; b=a4oeeZVeSlbpj8OKBgl1DLDILFufNf0uxSXvDndHTP3vIQeezg2ag3DKBmE+iXQHcwjJBQystrt5HROEULpgXSQXfjLNpbwHGTWwoETthxcwr4oxYw0EwK6KMyUYkVnMZKM1LxnDmlKykuxbuou2K8E1Qmbe/JiRWdXt2m6xgWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlArgDBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlArgDBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C4EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791186033;
	bh=mVC12o3vAh9AhCygehRHmngOUElrNwhTpfcJUYv94yk=;
	h=To:Subject:From:Date:From;
	b=DlArgDBjXT9syIDjRZMYGfRVnx3cSyFMQv7AbXhjOZHL5Kpo6LmhE0cDIyLUsxPXU
	 /DdXLP5RxO6Kw5bBN2/RDXz45V0E1eESZVntUEOYGt4Y5xmXP0i528HwTZsHnVHagL
	 G1nd1VLqaGFU/q6ZI8V+Tv2mkgWimlP1ux2bAxhEi95jiYBpyEVfgA5ecb1428v6FO
	 ZgLtnwkzCjHEdNyZxI0NM42S5nm4LCuvHpNauBmZftmvptGEdJDmgsioWur9Cy1n8n
	 3LxvrcVUCEF33puTRtRfJLc6wfDgHxUEEgqemZx6LkCX4pRALMT1VPzMDRS7mHoVUu
	 CQE4TbI7ePFyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F07CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118603368.8816.14090152418851724709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601892b1bba50bf0ddcaef0caf6601c9ef3b03ec400ce4292cdfe13842fa7601
Date: Mon, 05 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791186033
