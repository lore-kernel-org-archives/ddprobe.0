Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2A01F3BA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768052034; cv=none; b=clI48i2heJZqnRRCDFcAAK8c3NZbHVFsa2H4ixDP7fMGEdW3wlcpHll0JokUV62B1CKgsZK9slDb6pSIrUSTLor5jmtaQvMNi8ZrHVdbkptFpmDqAj4iAvvr3OAQSE1+Vawkif949rFDgsIPfvppUwnUgUpHfWH1BVMv5RgRKls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768052034; c=relaxed/simple;
	bh=Cjp3qNx+aVdYz3evltYwaGSijm6uB5Gxo09/tlq3qI0=;
	h=To:Subject:From:Message-Id:Date; b=YRbgHz9WspuspDZD6m2CTfTKSZKpTqxbGPXQZKakWAtz0u7vLR0SHeT8pyFxVSWWNHG76StOUEWlbk7reJ8ZphW+9v+TqyodSUi3Thi6E73Ahvo7caQhgUwEAZhvONaSjctN9nUn44imHFge3chPnLqjF2s9EZfoRQnMM+p/8rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFbY+yGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFbY+yGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6783C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768052033;
	bh=Cjp3qNx+aVdYz3evltYwaGSijm6uB5Gxo09/tlq3qI0=;
	h=To:Subject:From:Date:From;
	b=kFbY+yGJ5J4zqu3z+zQN1vWJLM3RcCEDAqNVpxIKvbPsNf/Fpy8nmIuIflf6Uo5gx
	 OolD4aogdQEbSQWO2ZQLS2eEeNmRS2vTFqwTx4dhM5JV7unpg9gba6RmS1RKlulQ5K
	 h2J8neTx7vzGjxpJOMR3GQf0clABD3beLtZVM6CODlQhgFnEPPANNbOISCvO5WKTHY
	 huiS7EbVMc5gs1pwhsfgckvOVeRrHE3FDBGi1uhvxORsT/F05oqQjjJMVETm9khilH
	 WaUzUu57z4mBFOlid6879k9kOJ3OzIlS+VVYcmqszqSGJLP94pabE4ZXafybnxqhMv
	 kUhISANEIGgvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92543D277E7
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805203357.10471.5995381728533861712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be14b460a8bcd7f2266fca134fc24f5251fb4453eb2d16b7ecfeb467de491bd
Date: Sat, 10 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768052033
