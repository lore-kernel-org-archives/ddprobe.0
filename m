Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E14303A1C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762424994; cv=none; b=RdA0jll2Pk4/BorJuv0/vk//NNkvPxCuYI0KlNLDUsiCutvBX1RjgJ3H940FPaKBzLcwAnH3u8ZPnpo357YXKhCK066BEXuGYKr+Rmh9OxVC+Aiz7p6rdCJ4cWdJuXfpFHGitY1dzoXaD9RIwToe+tflRlRkjcp/AWBBLC4/eZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762424994; c=relaxed/simple;
	bh=s/bD5gfsU1jrbYzE0ZrhBVHYxTDUqbOFiCQR5YYWrxs=;
	h=To:Subject:From:Message-Id:Date; b=llGQMIa3osvIeywONfysXCR70rULkeBZo305GBrKVcysH/ivfupKdaZpr+5Fjz9RDNR/ekDf5g30Y8+PmsnbzPXdNKc4pAGmLE0UutzZcaWs8L8viYB8Z8A49sMMlATEa7PUfJb20WWx//6WFKMyCCD4y3DwyjpFokAqK0lsqRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikOLdUqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikOLdUqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A730EC113D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762424993;
	bh=s/bD5gfsU1jrbYzE0ZrhBVHYxTDUqbOFiCQR5YYWrxs=;
	h=To:Subject:From:Date:From;
	b=ikOLdUqjqk3SWGnq9IGMhFpXplpGJ8BQaVmZbyYEUgluY2LfMC+scQwb5XE1yqN0V
	 HkBeHinu7b7/J76kLRHexK0AVl2z+mqqjv0saOODFJyGTuRfoNtzHkZU76kbkVzt/K
	 8BU9LnbAw10eEpZmTjA6U484oaz3ZvbicGWgK/ARF9MTM/jpvR1khv1u2USq/Zrg76
	 RiSCQToyC+qKjuhVvijioSOya00Z9/Li8chEUIQdg9MsYdZvaYbMe8ldh+rpPwAVPQ
	 97LDrBAG3UIsyLR2B4oTm6DW3ywG5c5q/NiAo6VcLhBzQOaYhH0ExF0J9mwGQAxMag
	 EuJ/lKTDD73aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94502CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176242499359.27025.14351165049503069556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc9eb2450e7e456bb4584fb7e157c86ed8ccc253db61e856acb5defb38f0f31
Date: Thu, 06 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762424993
