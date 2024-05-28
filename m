Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F459DF6B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716876863; cv=none; b=pzDmoxy3GzlDiaN9KCUc/pLOTf0nusu8x9fIFBt1DFO5LYQ/AeMEgFVbehQLt8I9tICu8T5Vk7XUNuu/3xCxo1vZUhIl4Jvcb/snsb5rfgKr9+6tS00O+Jl9HDRbr8lwtW+XxCrsaraSAGREf6wu4SiW7PZHQpc3R7r0WzxkSZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716876863; c=relaxed/simple;
	bh=bBidDRwknZp0OC7eHsIAIbrH7DRalxY8jGmJGxg6PYw=;
	h=To:Subject:From:Message-Id:Date; b=LGPY6xjNlZBLZwbeq76WRNMZ8tv8opwL+OXU5pKhZ1D6Qm0694SgXwLTDd64toqvdt31Op/lECnX7Q3wLu7G4ya7G4ESNc7v5f4MJ3CRAeLMvuKSU7KCciAR7OWH9hQkc58E16/cPxT47AzJ6SMFQvW5IcQMG8qk60B0rem2RD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEPlNMzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEPlNMzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAA9C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716876862;
	bh=bBidDRwknZp0OC7eHsIAIbrH7DRalxY8jGmJGxg6PYw=;
	h=To:Subject:From:Date:From;
	b=cEPlNMzxFcxiG69yedspkLMNb/uzb6Y6YBQDk8dzzCQ+33OdtMlTGXbxnpEL9VuHF
	 vw+h0gQpHp/FEfnJpQYjKMyyf2d/5u2ZIuN5JQRNNqI5HhExXghLZLCleCF6K2b8Dz
	 pUo8N4V9lPIkO4QKtwUGUsBtkQUHA+wokXsiKlazEa+sQSDTf6g4q0KAXFM9f/770o
	 SHtap9BUp3gl6LnTw0zCSW748m0raLBzKtlN37+wjWFmPl61Y8GJCRm2vaBGdNk7a1
	 58eiAkC/jVPITmJVIeSfXXL0YHUUE9GdsYfTBrdVAEmGFExTrgPplzDqpLjSpFU4+P
	 Ijq8P5tvWtyow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C733DC25B7E
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 06:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687686280.31869.10197872585404686976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4d26c8850976571b1ae9e3caa361d8a38aefa032afe0b3c1e7eb6b80890aa6
Date: Tue, 28 May 2024 06:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716876862
