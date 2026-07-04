Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476FD241695
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783208914; cv=none; b=qx34eBoEt7CFPCLmP4mGKYcjU3bDXYI6HDnmXfXzV0JWqTtvqN7GFDC5Q9wCsdjvcf45UqxkpYrh7sT/TFQbTpdEWfyusKPLcXNDPCFuGk7GcUoKtDU/O6OJgQE6LFjivQONg1+Wo31lESbWNeDgW0HeKT1mi2H9Qb+D2sWEnW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783208914; c=relaxed/simple;
	bh=hxfF70XdMflkeqzRCMbu1FgVTzW2xMEvXFYNtAZomu4=;
	h=To:Subject:From:Message-Id:Date; b=tf23ZWwam7fw30ZnMO6h2YHVYBaycCfshnOlm+m7Cu67v0yrvv48WJIhNBR9NdoJVx4o3++jRKZXdZ9aBV0SJUo1n16oi+6YkiiWRd2x7NllaMYysK4oIZplybpN1U58+axixWZtZR3+QP4OEGzrKSWh1XfwVFDQtmmqeyle5fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrBeD1dD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrBeD1dD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D0BC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783208913;
	bh=hxfF70XdMflkeqzRCMbu1FgVTzW2xMEvXFYNtAZomu4=;
	h=To:Subject:From:Date:From;
	b=nrBeD1dD4wVeyR8dtrlHW2DA+4hPFisGqfUSau2wZlqK21443I/AvLMMxagoniaSM
	 dIXMM12JlSeD41AZM2Xh1Cmh5JNp2AoYfOcqEx/w97/XGFBkSZfn8I/D1/hfcXlNfy
	 5CN4Ydqv4rbdeUjcitHgGN35cw+SFYhJ/dzmlk63tLPM5BqYncWOZHyOtFOfAeiysr
	 rH5nEHxaIR8HTDJYmeELvf8SzLKWr43IonlZ8HM6roODVdXB+FVlImHTRjL//OSVCf
	 s7JOvWwZx5g9bkdvCospINXwekpYZXON4dd5s7maRFlaNjlU0Rgw10e4vfRIVF8Vcs
	 bNq85DTVNKevA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0DEC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320891368.9550.12253936405394762832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce045b05115adf8438cc38ba0c9b98a76c0b3c2771b4acbd5d61af70ef13795
Date: Sat, 04 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783208913
