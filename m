Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265C830C0E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758122994; cv=none; b=XDv+MVH4NWvvwCqT9koqzv27uoTM5C10DanoAf7XPAP8BLmm6pshz3xylqZab5w2pFJfIoTREj+J33wtxdywsUncWISA7Fk7b7ARfKxr3fUHwU2BTVB53zmcypRJODzouNsmHezhEmoBDocwzHzcV8q36nEAhYPpkJ//QZuuAD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758122994; c=relaxed/simple;
	bh=9IFkEYqhkwho5jI2nkj8i3MosRc+/n09LI+P1PjiUIo=;
	h=To:Subject:From:Message-Id:Date; b=aoCNHH8KXTSxNckQtovb1WEu80cNW67RMLw8TXqGNHhVIpGedmuhUDaAircw7CBmQ+o5LHk3crEJfxkfOoPjSk9czcngzn7R54wyB9s1IEyQLYqebODxCwIzOs6Z/F2PqbAeJyHXGk/HNSzbz+kJOzVNdCqbuQS6j/himKQGCrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFfOUFzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFfOUFzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7D3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758122993;
	bh=9IFkEYqhkwho5jI2nkj8i3MosRc+/n09LI+P1PjiUIo=;
	h=To:Subject:From:Date:From;
	b=HFfOUFzQhBY7HK/l3WBXVWbhAZ0a31ANA+WLSp+bciW8sx75b4Jkpjs+k1BkEqNaV
	 jT1dWCEgyT5GZWvd/O1VyZT70t6A1zS/8CYJ/weLu96sreEiYzm8k9ETDmsjUyLEBQ
	 rQw5COerSFKr7oX1txw2A73EL2wXbykCfS65D8NXICdbjs1AdKwQa9igUcLUg0yEvB
	 K30Nqovd+qaVbJ2TJUiIn4FiWaLhzxZ6QrDhF9Q6c/QKYQLuasqt/+HIrd/ERk4lIv
	 djlwaP4CTD27A6OlCc8VSoNUqrOdzOGHcbnsnNcWDfkpFkLRTUCJUU1RA2EbKr10Zj
	 x8rcQ4YruReBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C444CAC59D
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812299362.12350.5717560506108425822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8190c388c66a0b5e1422214f9aeb78575b1a32beffbb36a66fbd7004025e5e
Date: Wed, 17 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758122993
