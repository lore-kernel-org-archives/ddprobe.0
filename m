Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4E384E09
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716545003; cv=none; b=HG/DIJ1w0NNt47NXTGPttp4LC97dU7HKHtPRC6OOIcQKCmrrgrbjyqHxMOMrGEjUJ9kP02wuddXX7DXjCdzyRpW+6NR5bq0b9NnbaeyPspJKRlk5ArZrv9O6Tow4gvOr/qlqK7lhh9+Zat+Cti27c5GtMh51iFQIzlF5Lbgz/Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716545003; c=relaxed/simple;
	bh=w9g8F867Oj+q96N4X4k7sUoTvCUSpqfO/JMv9Ax6AXg=;
	h=To:Subject:From:Message-Id:Date; b=M25gv3q0OtXkFCoTH+J72StYWtLt2nOhRpRVuoRFx1JVy1I3imnnydOBSLoqGbpMQAOpz63OKXdD+VtrLK+K91LMiU5QLeCnRg+SYo2efAFy+MnC3aJVR2JC/mbLggM0udK7LvZSZML82tBBGel6EtDNUdZZLbHIKFV0R22hNbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWaIvvBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWaIvvBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2E5C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716545002;
	bh=w9g8F867Oj+q96N4X4k7sUoTvCUSpqfO/JMv9Ax6AXg=;
	h=To:Subject:From:Date:From;
	b=aWaIvvBy9IPOBl81Ajt6CefhtN6skxAlXwxYjT8uTXyTgrKJjSCALfPaGMofelj7f
	 X0N6UAWsYYgl4hhg/rXi3vh1x5gIleXU0cPlG3zgOAYTyiIylofH1SCIXolfqCRmuS
	 H8Nkw6LGyufffu7SKr/W3Zxo1/nn2hrAIe9ZbMqnw69GJUZ01IyKk8yPXyw1rwB0tl
	 K4ZOpAFJi57Z3BnISLnheSXdCW72FZ687rPkdOMP7Sl8rw16kXAkqpn8aU+2ErFp6J
	 nKAKH8WBaAC5OpByM569i+hgSfu+ZUkwaoDFArJpQmHYxtF1G8P0ik1TtiapPMBR3f
	 kivT4O0cVIuDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F2BC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654500281.15608.13822828463077639771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47780442c00bcbe60335e15119e8c393709599358ec7d0c5b8d1be9a6fcbd5c4
Date: Fri, 24 May 2024 10:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716545002
