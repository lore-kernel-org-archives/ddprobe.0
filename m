Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A59192B90
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774166094; cv=none; b=iSalf+MTbIXGWyXev/o1BsHXM2bQXMUhZbyAEoQe8iA11Wz9nvRc8eUu0/TSZoasCYU9gsWTUT87qUvLp8rixSc1CSDehRZrsZUPgO+P+gce2QMnN5VO5GlUdpOSxT4e+bTvM1h+BmsreKDouoRliJVZaswfZOmhM+dp+NV4Ta4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774166094; c=relaxed/simple;
	bh=FF4z48skT+c4IJQRzKJCW0NRHHmw7fBjtYmuRJqY56U=;
	h=To:Subject:From:Message-Id:Date; b=DHBsln5y+3G918DAt9oqY3TD23k7U3sW+lGAq8YuqhQiOBpAunZATYAwY8I6FxhpznwFCCNW6KapcJUmvYKUzibcGZhWZq+hnQ2diFAaKfQCu7ojAJ91UeK97/8JLuhGmEiHDqaehWOP7iFha1aVxGYgLGWg8mkX9tJeVVZyzXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdEDWiir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdEDWiir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BB2C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774166093;
	bh=FF4z48skT+c4IJQRzKJCW0NRHHmw7fBjtYmuRJqY56U=;
	h=To:Subject:From:Date:From;
	b=OdEDWiirDWnUcNg+ur7fMlYVVavVGHvZq5CffQPReCxriMFrDzpeDdz9PA/sN6QQ9
	 AUAv952iXAF2XkcwOxzAtZ0H/I/MRJ+/7ibbX/3EWEnBQwTlsmjaRPkG00e3HIvtIe
	 WftAYijrPgupx+XT4LhzxaJAe8/GuXwaghc2+BG9bGEIF5U1ncjv5xBRS0ghLEcEnL
	 udYr//vBr75Fwcsgv6SNFptGFOhmb4hsr6QFJ1/Wb072ICsB8z/ZdUTvUCZClDMzrj
	 qfoEaoj7t0IU/Z2T4tK76+0HCdGxq/eTAFW+wOnGqci8JmKA1gT1Fq4zw3guhPzb1k
	 vR3so/yzwBKdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937DDFC72AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416609357.12277.2212065781539187100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c92b4b4e64acee81de03f1b4fcc186b75d77620cd9aff31a2d6168e1168815b
Date: Sun, 22 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774166093
