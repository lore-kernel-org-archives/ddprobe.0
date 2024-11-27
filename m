Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F1A1DFDE
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732715154; cv=none; b=h9y0dU+W/3cNVeVhN9XQdiVDG6JKgt3BvSzLw9/VN++g5q1/z8aGt/GYjv/QKNBWxdJDvWrDges7awHZuVx+83M/3aB/SptC9cV/c8I4B813fpp9RZM4bR3xvwYg8frPLHrgAoZTj7+acgqTx9CCWANOA7AKlPHvf6JBKK6hf0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732715154; c=relaxed/simple;
	bh=ZhX6yI0Vz3Z/2E1HFpqI5KeP3sBEtzvWM71X7U5pz8k=;
	h=To:Subject:From:Message-Id:Date; b=pekhbP7nP9o82df7WN6/ckF6V+IAu4meYwcyTO4xtiBi77el1MokYahUhD5w2CxTT5O/qT6ssBiTXATBzu4vS2kWFmkbUp1tHXAbQfQILQStjg6N/ltKzB1q2tMhG6nWwaitQJhz5VBPEC1ONs3jzL10dNfsdvMnG+SEDYo5C50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BejkcvNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BejkcvNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B366BC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732715153;
	bh=ZhX6yI0Vz3Z/2E1HFpqI5KeP3sBEtzvWM71X7U5pz8k=;
	h=To:Subject:From:Date:From;
	b=BejkcvNUmpekxHw548f9Dhfdqtozxoo80KBI6Xkdv/j7k1WRf8K709N7Fji2IcWDG
	 2uPpvdBCFi2DI/8IMGBdR+bZfsl/7vBPaVsZsPqeUVlLwJZihiU6+8o0qG9DgupMUY
	 RKv1bB1iUE41IDghk7illlFAU9z8yPhCSD6bmnuTGCCqEbK/tOPhzYPXnQIYNurybh
	 j8SfJIweJQC2WGF5eDutzCd7fHp5/KEG+3ecU6bH9aK9J/tfsmjdUQWrpQ1VS4ftwo
	 95HtNqKl3qG0r7Bw5vdjEq/iYoQx2s6a3NAX9hKGsoQW+qi/H8WtSp6gtyYLL2kXAl
	 Nda0Fw5QtYI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3517D6ACD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271515365.2539.257358345255250241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b037e965eb26aac07800c10db23af57c3da965b3d81542a31bb516e75a78d8
Date: Wed, 27 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732715153
