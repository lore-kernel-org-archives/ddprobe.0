Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F11E14D2A2
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718804363; cv=none; b=AyefU2bqDd3TcNRDXoCSsGTMyDVW2XsHczVuNSDJ2wJm5BfS8B8GrjYQIB6lGCO2IJg8FY1ZNlnzoyw/9IWC6LQujkifZ2NvkJ0s60sVFjsnrx5a6BUvluXoUtBR30a5v3k0OYIbNrBuQeGNDUu+QKyi/rzGmVe4QNLNSqO5O1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718804363; c=relaxed/simple;
	bh=xWCEqCAb/4Armvi7S4ccuKPYuaIZ7l1++b7lRhOUqBQ=;
	h=To:Subject:From:Message-Id:Date; b=UgJQsA8Pzc/cLE3g7WdbDUQl0oHjaGUaGHMWK+NPeVfJ5pSi56JSDFzi93QdFRsFWOyRQBLFsEXxXZs2N8KPUBNsOrVa3szf71KpUZBdyvisvxeMxpkYyBky5cSZLiYBHlxXtX+GSvd0HFVM6E3tR2vkNwauDcPgtv5NXDz+kNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LY5wvwbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LY5wvwbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B07C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718804362;
	bh=xWCEqCAb/4Armvi7S4ccuKPYuaIZ7l1++b7lRhOUqBQ=;
	h=To:Subject:From:Date:From;
	b=LY5wvwbsOAIXVe/DYZoVcE8M5+DF4xdNHcH7midz80rcUFOP/Da6rzTzB6LZpNtcT
	 xAOuEjzqgR/8PMCdQtLXxZoNVfs17WakBFqx0i2nVJxcgXOd4SiuDkuUwph8xPlTkc
	 ief639yACEyoeTHA6UkiynzZZOvFVA+jd9XKtFRBCn6QSmrMlhnLUrtqgGr63ORgUz
	 FLe6RqhlQpBe+HjhDq5+3wajoutZ4JMP9ZNX1kyupuqVR6IxGEWXGS9tU2sxFHQpVN
	 uW3UJ6SQj2RBPa6+TlH+KDN5Ukw1FjLNFgH5w7lDjmKb+SL62+PpAclBQx2ep3l1NW
	 B754d75Aub0oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9329C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880436278.32180.4368055395301613842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d7c882e9e4cc410721dc14fe684ba6a02069a56942b564a51ea271d0c97ad1
Date: Wed, 19 Jun 2024 13:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718804362
