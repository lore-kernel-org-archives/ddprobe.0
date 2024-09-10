Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318471A2574
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725986154; cv=none; b=ggzIEh/i/SpYJFIAb8Nzh66kJXhZ+mK3mD9qBVLCdK5y5hvHqP4pfldFKIWqLDTbmt4zNX7SvZ4jPzJtEUyo2/Npr9DnjPz7VizsapaZnjmUcHaVAABMjtNFgRROb1at3VKRrbeVH2gIf8Xzt4spSWUfnnjbBTl70PKkolJo1zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725986154; c=relaxed/simple;
	bh=wM0l1Oz7W+/LPGbyZ52cPaSV5y77m9WLgPDk+U21EYA=;
	h=To:Subject:From:Message-Id:Date; b=cb70ZwKlxQciqgCD5wVMCrrG9EqSNl3Ro35ufPBwjq4wX70sdDPYB8qaT6S2yDTDU6GEiRlbfyOWVjm/fvnJUqlqKOLco4ULlvONY59VbSt8/l/BnLWohL2g392o8kLltUKCkS9tBapE5WhLK8FI7xmexwhIRT2zWRUbARMkago=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNwa+NOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNwa+NOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DE6C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725986153;
	bh=wM0l1Oz7W+/LPGbyZ52cPaSV5y77m9WLgPDk+U21EYA=;
	h=To:Subject:From:Date:From;
	b=JNwa+NOsQkva4vxY98TYXYGXKATqngsFLbC5yMeTUZgtu4mCv3Tpoaf/Gwn62EYrP
	 0KCaGbUQ/4sdOR+TcSd4Gngqcvj1y3GwHRwshuIcLRBYxnYrkAGH8yiUjrapR8Z1U9
	 MOn3Wv18dPW/B1mvUNDt2MCEFFVgYn47m9qGWQChXX6JT+N5+RgPdf7BfUtGd89UmW
	 pkUgArkK3ZxZMlIsIQ+1QFtHOQ3GP8ZUXUoit1Jae1UfOHZBt4MPFo4fara0STMjCI
	 VdLPeF9sRwzwM1tE6nrckvUER2hPD4ImbvgkHGiAG104ElU3uBQidMG3o4JgJ289DH
	 TS/cxAlplg9vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B7EDE99A
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172598615361.30494.4443547914294472030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4133dd147439e15e89419a6772d4c93ba73259847c6b46aeec3d75208f80e5bc
Date: Tue, 10 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725986153
