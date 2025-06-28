Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021CF13B5AE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751114394; cv=none; b=P7m/LTp1oL0UDIDi0rIyGDh3n1zzQ1BSIK0zXktAq/F6NJmhhRuJyby/QF1lLhs6A2Zfn8B8VZZ+ShTEUrJRKFPVs3sZBVb6QBnlFQsANfm1758ysmsxMHsTJOj7dkIBTSVBYGu0hvNeQGosRhlzitsfp6YhaxBvTCcxhYNMAJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751114394; c=relaxed/simple;
	bh=EoiZyZv4CauaCEHWdXW93wTKzM1bN2ULF5GiMFsPggg=;
	h=To:Subject:From:Message-Id:Date; b=JNLEj0KcgiAOi6/2bd82gvTaL8oznB21aVpQJr4f+c7WoidDKUi6aGxpLdohg6RbRNEibZ9jArDNlzNQC6Wt7qGffOsvKb3AkfmrQslAxKpSO7kVUb/YJcqeViZiaXpgQV5LoEj5+jnaFefV99rvbWla5Y3cGsnGjljm8JQEht8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8sZgPix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8sZgPix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32DBC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751114393;
	bh=EoiZyZv4CauaCEHWdXW93wTKzM1bN2ULF5GiMFsPggg=;
	h=To:Subject:From:Date:From;
	b=j8sZgPixR+qBZ19Jp3D75Y3oGAGLW/ecDHCGUKmaZSkxq4ZI5xKI4afKSJDj7dtQy
	 WscygyyRBG39zvTwN8x6zkw0u8M8oiskFr7EUGDWP25ccjWKK/ShKWRSgaKQRQcPez
	 zpa2nO4A9RzahuXhpFqQ37+tZbWMniG4xuxgRn4Mm1xlUevEWcOHZqgZL5eipVhAZG
	 15ReExQVWaW9c18kSshOw+tiL4pKc2eX2KbVNJnNrAwtfM0YjCapMUGfzPEi/NdPoa
	 wkVbW+yrXq02TlZ5IreqFyOmv5FNF4J+okj1AMqaGYwfO0aIiQ7TwkweRrdnzHsp1q
	 6GYpLEpr2MAlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268BC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111439359.4122.10765437308262809262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f081ea41c9bcf7070be58a255c027308d93203c4768b6023df1de4620d72a3
Date: Sat, 28 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751114393
