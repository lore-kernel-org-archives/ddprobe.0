Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCD836165E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776107254; cv=none; b=NN8idk2LZ1XrsSRPTp5G8KAf+uAvgOe5tRxURTPir1b1YkCXUN1u7BTmQHuiuGwQ8ro9poER/HxhAB76j5dWsvZM8n3ZA3KDFH5JkPiWNcXfRNPlu9M7ztlwFIdhpURX1VUCLqdyjq5qJgfHPuxOoT94s4/BTNSZb7LDXBnXuVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776107254; c=relaxed/simple;
	bh=DA0GL9a6j0qUzEXnNcpM39SELOZuJNopcjjjZsSmDuM=;
	h=To:Subject:From:Message-Id:Date; b=nYI+kKZRmOhc8ebw+9xXlFo6qPnsq2LhyldNxJeNCgy0Vhgh4CEth8DD4xJ87gc7k8Sn89bk7mEtYysFILuW09YKvKU7KYqd3CgJjxyA2bXfLNjZoFZrveh14mvuLj0GK8G1TJy4u7Vm+58X33WavznUmVjoYi2eB1BJcLXn/58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r79jruck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r79jruck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99D3C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776107253;
	bh=DA0GL9a6j0qUzEXnNcpM39SELOZuJNopcjjjZsSmDuM=;
	h=To:Subject:From:Date:From;
	b=r79jruckUVaGuOnygIehVZYztUcLUe9JuhH1X7b+IPqOhJx/6DLaHkmCO/0gK6wTs
	 TBC7WdK8hFQ3cxj6M6kkeOwsmnHuGPwM2S90s6HdGZ4Y+9rt2rUqMidrm6DY8BjNrv
	 sXbiKtfD7nq811k9QnFH7umEuKk0Vy99x9PSjY87Ar7cwTvoSeuGwUXyrEScIoK8cz
	 dBce6IxZ5g+xLC8ON7kZ2VQODfPbQPgpTRs+XqUwNYPDAFQ0jWoMweju9a3KVEQp/U
	 Dx9J1o4/6R4lN8dfC/pyP9WUUBJNT/4EpZpLO4cLEek3H0uCP7Rbr5BdQeFoeZZSAn
	 sqi9oaLJ9vkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6BCF531C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610725369.4130.463440954980208661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bbb321f1758aeae95e0a8cc9436b9bf1c487a2645c43a5f7c6b9b6f8b941bc
Date: Mon, 13 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776107253
