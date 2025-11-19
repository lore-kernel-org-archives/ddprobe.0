Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7972EBBB0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763520714; cv=none; b=k4GnyN8oMy6IYZHZ4Zxax37o62HQf3HCN0RcT5EJvJFV/sQSXZ+LxOgYkYcZbGDtJXlN3MNV2sGvInlLY+dsX7oGIWfNCNLv4LyXhfELFLPkyQjPJTNW+JWU28M97pDXdWZ9iMsEOvMVvoOr7c5dFEmjaHCb1yuneOquyFXQa8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763520714; c=relaxed/simple;
	bh=APf68oh/OdJS5r0+P3azw0gcYCla6lkZ+LRfFyY3RXU=;
	h=To:Subject:From:Message-Id:Date; b=EiFaI7zR53dpVae0wn038hldBI6xb3eD7r+gs1e09KndOgAuOwUsrypqRmMNFsOG5ldRPoJcSXXuIAx2wLoF1n+UNNQ0jna4g9+fVkdpGgxe5y5LLf/4ZskGp/HH1ZIe8oXMtSFKMRyWv1jvaJIuiFf5KlY+77HiTlf8NmgQrBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOzT5dVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOzT5dVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C933DC4AF0D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763520713;
	bh=APf68oh/OdJS5r0+P3azw0gcYCla6lkZ+LRfFyY3RXU=;
	h=To:Subject:From:Date:From;
	b=NOzT5dVuR66mFxd7I+WRPrz6CN4ZaW9uEMQlgISGoW3hD8Vzgl8j3+13vgdX8S+fR
	 VdyGO+XyjdMKQ2MYOkmdsIBuzzK2R+LsGXrynGiG4F0dDGuJmLb/akrE5/P4Z0ehsx
	 Nz+cDYq2L+zDkWwANcWX9z8/RelBYU/gZxeWY9t3p9OlTj0cShE3GmNrwFKM8Me47B
	 p041rNdLNd3ZYABJbaFfwiUdjI89pTfF1y00zq4+ZK80cz979936iXAWiUx4AGykRf
	 HNfunxIZcS0cP8yEH4tVL2Ct9RCf+z+PmcimlKo9RvBVheTXdoXtSZHvqU1oeccxJu
	 nwnJ6u8JNSLkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9ECEE356
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 02:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352071358.6326.17837547951302937923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32d82999a3415b30d578c0e32f05c1aac4d56aefbdec6290cd01522eff2edcd
Date: Wed, 19 Nov 2025 02:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763520713
