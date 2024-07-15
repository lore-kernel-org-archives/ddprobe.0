Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74061836DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721017343; cv=none; b=Wn16HfCszsCVHWwVTYNgliCXn3NVITR4XbYu1P8+32PaGrW/4AFiEyseF/fiFRWZepapopsmkiJtUZkm/zntNndKS0DJHG0C4DT67hzjbrUtkC/Pn40sT8Fyte6VJShziuE/85WfAHtDCk6AsWbmmwf5BMLGT+yJyqZPuE3mvjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721017343; c=relaxed/simple;
	bh=7FSX/4tLPbspmaACU3ioPg1dJXWz2Ri1blFMfI6Ynxo=;
	h=To:Subject:From:Message-Id:Date; b=l7hxh9v35k9MPJSEVSTJH1OwBuJofcimXcQI85NdWqJiJlkWHale4cRHdjBDzsk6JYqQr0N6zxDKmKt92B4uCBadeXk4E6fptFk3Fzd6sJakwsuXANvmQrwjFpYMhzK9GOYglesgnCD3XXuJURwZixRpxnMfvo7fNWf4gh/+GGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0B6M1Va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0B6M1Va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A8DC4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721017343;
	bh=7FSX/4tLPbspmaACU3ioPg1dJXWz2Ri1blFMfI6Ynxo=;
	h=To:Subject:From:Date:From;
	b=D0B6M1VarSYC0mHhqPaMYzMQWALpMq8XIzYs4zaH+jRXp1UPUPVIIpF4x8y2GAsxJ
	 U+hgQSaWwE4cMXQHBra3LdCzz4hA5PVrb3TJdA1uPel+ovnBqnCywIstoVwd/MYlo9
	 tbun8jUtNj2LTXx2c9izilYkOVY2N6aGkqAp3G3IRyeY2WMWozR+/TMbBsZ60XT+ki
	 Vhs9LsoSJu5RSAuVa5mh5JyA9B3aloCsfVNBk2I6wS3h+t8ZJk4Abe7fMlc3UNqNcE
	 CcgJ4YLJqivT9qnX4saGMJTg+rj8i7Sp84g1EToIBf3a6vYJyqIeww2pNDhVvF7uON
	 +nVyM6+uh9rcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BA01C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 04:22:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172101734311.18200.2866415991682151726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f7a332e9da2dcbf207dc99858e003b0b0ff595d61c73ed6ab0b40cbf9756ea
Date: Mon, 15 Jul 2024 04:22:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721017343
