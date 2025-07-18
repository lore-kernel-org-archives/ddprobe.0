Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C402616DEB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752867593; cv=none; b=qkX7WiRTXXn9h63BhbnHk1TWixNa9+jsyOhR151paaW19SBDLG7KLKbGtAmhLLTDN5DPA99JvdNfTWNRKPBkeSkGKPClAKZZTF8tlCr72y4LSTMsWu1eWvq09PIMbgd3YZKhdZxgIhNEiTOY6RJWXtDqt8IaqhM6RTh5XquTIGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752867593; c=relaxed/simple;
	bh=a/l/vBDoFAMPrukqaw350ac1Oor7fNauwriGQH1OHoc=;
	h=To:Subject:From:Message-Id:Date; b=ED0eD7KSx1/N2w8Vyii5P2MgV6Q3cB4QThRMuk46y5jL/uV8aXgvvyIn8sqX6C/5WZnNnMNZlDKDZ7jAhK6Zm7RalqmyoniTVHc1Kt6CfxCF9NZ1jmXnX1EslX4bwevB6ZEzUbnteDXfJO0UlKbHnLVkb1VGPzAJ3DBayxLfcZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uN9We57g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uN9We57g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B5CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752867593;
	bh=a/l/vBDoFAMPrukqaw350ac1Oor7fNauwriGQH1OHoc=;
	h=To:Subject:From:Date:From;
	b=uN9We57gkOONVsPmcBm9eCE6bMLPSIasM6bOLQo98vnJYxN/nsiGQ/P6ZNhHHqZbv
	 6U36K1uUvPVavt44hC+QAM0kyxn273emtYBdAvkRKnTm4cpIkL4CCCMXkyZ2nNONft
	 gRVOWcKuiuyf8hOaA0KViQXXMxdK1ckohhlyMvRoiuSa5b409eudXUMTdW2bD4LgC+
	 maVjvc3AJpDCYot3+/9KvA2VE3ZlKRbHLTgcPVWPH5EOPO1rSVkm89t95TTV8HcuLJ
	 Ih/RVLgfmymC+kH5PmUbq9Sg7b651FyPq3zpQ+3H7lt+ExjTJUYKQR8uqhkOwA5pgn
	 dBq5uiD7Gp3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92279C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286759358.11783.17946442768450622786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d19ffd3775049c8fd771e9bb0b41727bfa8a11db9ead210f63cc01431946aa0
Date: Fri, 18 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752867593
