Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FF113F434
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746153594; cv=none; b=hMj1Vhu1TSwesvB3EvJrf1U1xyJDCYK4PkgxSfDZI4WvDbDRqX2oB/3ahGdu7l6tNXhFzYHFeqWlvo0T5ikQS4zElrKWExTUoxuoosjsyvpTBSrnH09JocSDm6f90qABW42hAWu1bDGyfiBLicbYPwco0NJWPTaecqlyCK8ozt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746153594; c=relaxed/simple;
	bh=rqK3ob1b9hiIdZjuAH5tghNxseT7NtjatJLiMWGDebw=;
	h=To:Subject:From:Message-Id:Date; b=p6xQ5u3UEFloscD6eOcTCEFSyo1zpTrJGDkM2HRpM61UdyQgecEIxIV1hx+blRVEfDwNbWBayg1mbeBM8ZYiDOurrYtticSY7Ctic7cIBEEhjt3rhA3Xm2WV7hMKI56pC6RZNj8ULn+6SpzM4KyQ8W3RCNs57Tw5A7teGyVA/Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuRncBiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuRncBiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746153593;
	bh=rqK3ob1b9hiIdZjuAH5tghNxseT7NtjatJLiMWGDebw=;
	h=To:Subject:From:Date:From;
	b=EuRncBiL9GWLHdenTI41VLw3AWA5xWVKFBF2/AnOuaHDSM7lYcEGaYBfuf0OzLtcK
	 4gewAZ/E9y55VtVMR2C8tp89R83VMw8wMGuQzcSSZzRleGbIlqTCnDou7iSwppsOvj
	 woz8ivilcwjjCZDXH9ow4ULHKxh0qoZcRlhJvMC+peWwDgxd8d5+rHv8tO0oZTSU4W
	 /f5WhJg47LZGnAJEaj2ZVfepQEJq8IG0/vsXH+Fh1jB4UiqAUrE/PwlFd/s71xB8JB
	 SjfO4BUU8p7nPHeRhEOKV7QrxB8vlH/FtXt23gHERjItHERh5nwVIhF+Ez2PoNSknU
	 U0ERLCP9X6WIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A3C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615359357.10807.813116734713369161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a22fa8041d2eedd954ad5a4a7ef495ab6dbdea8404781d54d26fbbf0e1de6e
Date: Fri, 02 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746153593
