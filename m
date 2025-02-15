Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AEC170A1B
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739654934; cv=none; b=DJgHRqM5ynYu+jQzdhfRYWkXf0QRSzBdbEGeUSYJNzQEFjB2cLs6jX37PfEcEmToQMgazx3gj6icSEKExneqnszZFriaU07fFUA75Pq4DaUVkQN457aYaA5geLNSoi2ggQt5tAUZERMUsBkiN58hnxniP/rz06wSTuYIfL2GJ8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739654934; c=relaxed/simple;
	bh=DMqzBCX68vniU/xcp+bYmxFDTxQGci7OaPnyZULQuKY=;
	h=To:Subject:From:Message-Id:Date; b=E20uNKcZbqXIRQkl4NeEJ/mpg0fulf0F7V59x6k7en1OnzGkTzVBow9yTcoTbp7AfGDn7AuF+HmQ3NO3GAXE6ZyotHx5jZ8P5d+syd+hGvs1CsSje6+RXctOOKSAH8vR72Nqydpq8+J/atEwe/ELPqKnPf80dwPaVNG/JYHYRS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaP/p4sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaP/p4sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB00C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739654933;
	bh=DMqzBCX68vniU/xcp+bYmxFDTxQGci7OaPnyZULQuKY=;
	h=To:Subject:From:Date:From;
	b=jaP/p4snTDG4yJ6NlKPDRh+0u8zVvrWsrxv45SuIdEw6h7aNeBljpQs2Lu8G+PaqQ
	 9iEOGwlV3iuiGPMbvPC7/nN5ydlOo3TDyuHcmwU8oD//dNzWkoYmbB0HVbDm9YczaM
	 3RNySJtDdUWAiBGMCo/rIP3aRb8PUmSqCEk+TGhtawr38Ar6CAQRIn0fGehk1mC7Jr
	 ompX65Cls/241ShfApWrOrXohPsI16tOse0AXkH28TDsTxJm6utJrXMKjf6TxgRX0i
	 SjX8keDrIh8/Q8YRKD7czm4+WNpV2AINg4ve1POYc0fqaFACU6ATPXe6ADWpV7gi0S
	 Vn/3bJWdeBNrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CF5C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173965493359.6053.6151045669853097008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e395bb990c2c3b1f9597a5c96c717a0f1ad875785537d281b849c855ae7e8862
Date: Sat, 15 Feb 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739654933
