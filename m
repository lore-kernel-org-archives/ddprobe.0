Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4202514F6C
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725288354; cv=none; b=V1wyZo47GBfZU+ldaRSBQrPTNwH45T1XB01ID5oGTikcDgPA22RuJ6FDovpe3177PbR6hSAipLxTsdMbuUJ+2v3EMssa7Vk6w9fUjEABVigO19BHHQjLQOvVaf5KaXTE7Hp34YUpn6xjZ2YtHdVJHZVUHw8F6PePSLStOBbLVo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725288354; c=relaxed/simple;
	bh=mLY3rRv2JQ+jOMfcXKDn5whOqYZYZAtXyn8xPJFXG8I=;
	h=To:Subject:From:Message-Id:Date; b=VfTBoxhqhT6le9kMCaIxYe5NnnRaGfqzCtpT+rHAcCFfMxzk0d1H3UUr7Himdi1z+zcHwYtP0Wi2fkZ9Dfbrb6VQpzNrLef9DhnVNUq2ws5N0Ozd6cDw70Ctb2yqe3Pk5GRZ4xKAmXvnEnAy9MKWDpdniRRWm1CcLZZ8neBJVIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jsyw3Wjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jsyw3Wjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5ECC4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725288353;
	bh=mLY3rRv2JQ+jOMfcXKDn5whOqYZYZAtXyn8xPJFXG8I=;
	h=To:Subject:From:Date:From;
	b=Jsyw3Wjmxlw1SZ94uUmH9YtPN4oc5KtesAmivkCdCvm/VxXopeG2H1KVibx0Hkp+y
	 xvX7e8HRy2XFhCoJ1eZ9HYaMVl08C6o5AZkelXINczH/fVemPonsPxDrqotAowOQYM
	 VYKt+7ZqbNbrJTpRoZvZLnC+w2S6JfQiGlHiYsczCd0aesXAeFb+1m94A3Rr5d1qYQ
	 0SllhuhU+8Jnb3OnlAQdGMbGlISxnQ2QIfq+tJGmt35ii8UE3MUUR7bdSH9Oxecfdv
	 E41oABVb6y081XdF3dFjaaB4GvPEFOoY4wQn+tLO4T2m8VZtDMnJzX7rzFIhqbp0UL
	 FBKY0eIvIRcHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967DDCD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172528835360.9731.15218236474445748416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378b10518922555ede881f8f67bce6c5d20a788c1a061b6ce8193224a4ebf1e4
Date: Mon, 02 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725288353
