Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270CB22B5A3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764411774; cv=none; b=a57z23ynY+fW6z2uy605ZG25wo2Pss/1gcwAOSsQCObvxP8Hb7W7BrRAN09DD8iLfqCxVtuXWi2kIX1Dfh7MmV0xSbONRze68sODlRZqmyznwL/2s5Kh7C8X6nnGl3nM5MB7vxtgWV2OlKP5yaiMyCQw/hkNWj0EYh/gSHDGnYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764411774; c=relaxed/simple;
	bh=GyTcBxAnFWZKBWF7I4sBWebB5owciqu1vZH9MLOZp+Y=;
	h=To:Subject:From:Message-Id:Date; b=tbbG8vtCHN+ej0zOOQbWC2vqCqUH8HkSZxn3+uclisVMHqcjBmHlgeKGqPYY0qSnl4QAbIUTO6ome6PTuyRrLo4bKdcHPzNbGOKfduQlng4sN+bTecIt2smF0OmsNFN3xOPpT/A5RTVf+MY44OTvLVDokOc1l61A4hpRItT3678=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RL3YbaVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RL3YbaVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE454C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764411773;
	bh=GyTcBxAnFWZKBWF7I4sBWebB5owciqu1vZH9MLOZp+Y=;
	h=To:Subject:From:Date:From;
	b=RL3YbaVRSx5wn1+NO0ytR7AhkTZj8lTtCdMKcpBRMq4xaYH2XxZN/7EE8NAV0pzAc
	 P8RUpfkgngi1x+lnkikvXfH2ksDocg4wFsBzThd5Bj+A3HuuiPey8Vhmbrnq3tSqBT
	 fxc957VeAXDJ4vy5Oy3q3xVtJjFOP2KgEE0yN7ro83OXaeGvmmojC+AWMyngzXepxZ
	 yxtxlrpoSqxUOz28Z22DFZq8bsbb0r6lxXPSJY/uAnJp5WidCVuk9SbYAJnJgeYTZq
	 V1j6OOAK85mzwTZ5oi6MYsvmnpuzzMbeKWa26UzTVRi9SsNI2qwINuvez74XJ6sPm/
	 EjltHEa2+1/LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95908CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441177359.8014.18021843820830554665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501dccdd0002848dbcd5953ea3fc2ed90e82ac6e64ea48abc71f7d1b7c368c95
Date: Sat, 29 Nov 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764411773
