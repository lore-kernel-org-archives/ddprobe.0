Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2016C224244
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766076234; cv=none; b=PkC2nXOvbt1CtkN/KrX+tjbXmpIaAxmbwuOOmPuDPt/yxy8rx5cVwsWchLdk9ovUAZlJb8gTjdJYgbT2TrDbULedwpdi1Gd2iIv9ddYD1q27Nu2/7MXqdbLsLmXQkhopOZCnJrnpMPs+g2cE4lscwAZcWhHey53sXL9o5T8Baps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766076234; c=relaxed/simple;
	bh=B90EwC5RKmkn5GXP7MXbP6zpdoWvMLiU+AVWOv+ERGE=;
	h=To:Subject:From:Message-Id:Date; b=XIIV5iTTfTIuf93WM66OH/+G0Fh4znIFKp4rhndeh3Q+vhrvNjKvuCJAuyToPfuZHXiKJP5RWEuYW7WHT8R4e7HuLtn+1Dn/UaSTV2a9PBPBXhtWvFA6XPkEKUmNhq4/Sv2igREZ9Kv4s9xLSTsNRJfFpvhj1rgSaOwpX//z7uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1RfqtCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1RfqtCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17A3C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766076233;
	bh=B90EwC5RKmkn5GXP7MXbP6zpdoWvMLiU+AVWOv+ERGE=;
	h=To:Subject:From:Date:From;
	b=P1RfqtCqerDScSLBEIAECTZU2r7RQtLn7k+Xhuc6JXHQKXO7VI0aCV80VTeZviQ7n
	 zndlF5vrEC/lw7zwEfhIy13V9M0PP55lhEsb7gtQJ5pR3LALmYrJ1moAYzw5TX+sA4
	 gHg3mYFRlXC3prLPt9RGuigLb4Rm83hZ4VKlllKaqcN8qC3bkiVt3ntc98PA0bxjzj
	 k8QdGGykLj24YU8QzdTcPl8YbYEs0sRV30R2JUlIV46tdlsC7Lu/PGqwDa1mMTjkIv
	 1m4D7CjtyxQJ0n+0CmBKmc2ww9OWxj59eecGrNEVPPweajWoCJruB8sp83u3YkI8pz
	 1QjWI9rTQUpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90672D6E2B0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607623358.10569.11402835287607157301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839387db1574031a6600de3d4a1b93750a52f38953c96ec08e3ae4f95d46ecf0
Date: Thu, 18 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766076233
