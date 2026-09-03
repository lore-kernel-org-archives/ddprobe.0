Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A8C279DAD
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788412834; cv=none; b=Eb/3M6N636GRxb4FEPxx7ihMoVgixZyxpCjyU9I58TJF8iUBOaNo5OYhifTj5zVi/fweZRwKVhut8zziCAhyhXR2cburWTbR5UQo3k0Kw7WvsgbdJqbbG6iUaj7iH6TI0QvHjBNu4RvpL6jSL3lHRGIIU2TEmK7PlrHcYtrUfx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788412834; c=relaxed/simple;
	bh=W0RjFdllO1vJXeOcHUgZJpfSc84U3DdpvK7qhlBakHE=;
	h=To:Subject:From:Message-Id:Date; b=O8qOMDhd881BIKopZFD34tHxxLaqoUDX54iCBF4tbRoXufljlIXkK6/664ueTW6qKBnMJesIMI+qpmYtIp7A/R0MhbfSgrIOYhDxCNoPPdsTDJPi5ZNa9kwqo8FlIzJehovmhwlz4Iop85ZCppZQIBkLTUW27XzfaBh7S6jrWWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7zKla7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7zKla7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBAEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788412833;
	bh=W0RjFdllO1vJXeOcHUgZJpfSc84U3DdpvK7qhlBakHE=;
	h=To:Subject:From:Date:From;
	b=f7zKla7z1CNzaF9da+aQmwBOzvdMK7eNNt7WwAxYtGW24yJGCTlYyzRk4XxNxwpK1
	 gJnpTM1B1zlxwH+99psmZqTPel0w30afaQMwF6hfwCrdoBDyUYz6Xxjt8TK+Op/KSU
	 lElaf1/qPMf8b6QP0Cb6S8Jily8dQmXf2LpvdIANU3Z6wuHQjFEmHNl93kDTw5EL/N
	 YJlBY3UnAMR7gkFGWzk5GmLHOSDhQawvp6ywTrDsQClg/p99551qyLd4vPTo1AZ6M9
	 UJ/UI02muQz02qE45oBOJvqCcCoMbtsa8dHTRfnEkH6i0KnQkJ/99D9HICQkjqaZh9
	 XvWQ1iyVnS99A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FBAC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841283368.31851.15514469636863692335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f819642ed7b9d5016e89b43392c14760c9f186381989e011bbcb2ab54175a224
Date: Thu, 03 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788412833
