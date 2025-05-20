Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3616020E6E2
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747727394; cv=none; b=LA5TNuEGdkI6ACR3TSVZSvtzs0ksu3JmbBjkFo4MCdeEP3krAi+rb53RZSGwGwAn3c3NIn4mw1YRjTLxE3nZ95Eb3MNY0kAxMfNZd1Yn4N0dYin6Qmu6PnlGKdaWRhgpvovR658ln08mBy2LDKLE4cffY/KWEIKdlgzzwzrnD00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747727394; c=relaxed/simple;
	bh=CSwVxoOvmphqc09dRauNNYMxgigc9VStO7jcSMQL9Ys=;
	h=To:Subject:From:Message-Id:Date; b=UB7VqidrD4i5BaP+qRxwpwblT/578maGtzj09dZUYKZ3vL+e/rIlSQVhp+NShx8BaD3QGLPhAn2xYlnsSPdL9K86C5x6b6Q0KCrkuyzLgafaoFxq/T5mlW0xa+5Ugzjfj8RsSAq9E3HH/a6cOnXi2RrWMYRjvvWp90S6xEOAk+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paXQVdgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paXQVdgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B1FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747727393;
	bh=CSwVxoOvmphqc09dRauNNYMxgigc9VStO7jcSMQL9Ys=;
	h=To:Subject:From:Date:From;
	b=paXQVdgEx3fZI1oIwPEhr8lXP+YL63hE1ZN3mbQv4kl84CCV9avCgIW681+lTVzHr
	 QLg6m0KsYcLDrQC0GW8Rzvp4GuTs/4zdqzTjqjkeaSeUj/sol7DzlQDuGm2IxJUQHf
	 vswlWAyxy3QCZjpcTXzERLc3QEinaytOO4+nllwcYdiuTrlJK5Ik+j/eS/+bHJlCWR
	 /GQQQWzO0Vx49g0ziS3JAK6FNyXFJuLOoob22ELHOCd8gbDFT5eKK9wKXHZaueEu+y
	 ff3FP37/88OXB4QbvjYveqPiAScdq0dwWR874wXAEFwOG474ufXpvGu7Pkt+1D1B+6
	 6IZLzDc3r4CTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA3C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772739358.16850.13215077394366279578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54931f588877d0d54746b286d3c2a1672511ca477d8448dbbfd506003e8151e1
Date: Tue, 20 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747727393
