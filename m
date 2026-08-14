Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A0F31E824
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786746034; cv=none; b=O2oAF4SMe37OtcjA5BR6l5r0dAPOlQDs+HERLHPLT/vLLqS1Y9/nIoZhVePCALoudWbQaC7+jPbPMkko0pHTnEXKzAkojrkjvsMTAoD6jT6d0KAjaK9J9UGFv4ELdA5a6ig0kyDPyuqD7bA7UJ3MvjpJqo0OyLjV74+nbyHGNbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786746034; c=relaxed/simple;
	bh=BvUMFzTapUGutximxBtinHEbockw7EH6CAxNhr3kKU8=;
	h=To:Subject:From:Message-Id:Date; b=OhF5W86uUeTbVZ1aEH9516wAIoFx2Xml3Hd2D02zeKVYvTAuKEEOajIColKb/+JTWuzieK6zlaGYLiKseOFvVb2bDMIPkYjI80gQC0GLRk2LPbMSI1D1OwzYCHnTJzLxzGd78NYYBnQBLlpwp0253GpZpJRFeLKUTmh9shziGAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoHVQhyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoHVQhyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC16C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786746033;
	bh=BvUMFzTapUGutximxBtinHEbockw7EH6CAxNhr3kKU8=;
	h=To:Subject:From:Date:From;
	b=MoHVQhyN4autKXc7FF2qcrSfXUBRSi4zLlJZXMsptguemF1KExdso3+MrEE/BhKWz
	 EhgweWdp/gzAjH1XjMsUJPo/0zRrf8v8I4YxTSz++MQOWoNyHh5h+TE4o/ef+wQ7AU
	 cQqRQrZWj0cyWxq+Z/NZ4kgiO36bprjgi6kB9GfcrpQ6UgAb951yOjfQRwfEd5nPix
	 bVPYlLpFtzEh2u1mfypWok0TnHg9AEwx5NL9OPhsPJDb8pMuYRGKTgPPDDrIt/tF4t
	 tIMcyQg8y6i9naDMtOIkEBZvpJG5Hzi69qqCKcSAqjNDCmVKwQBxiOTiFto2u/C47M
	 /eFsNUS0MuNmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B81C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674603368.19681.12235121342217220078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b99b9dde1f5ef8866b1fdf0be3c0b473b204ff5fdab2d30493250b565b5dc1
Date: Fri, 14 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786746033
