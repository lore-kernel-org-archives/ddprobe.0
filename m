Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B00A210FB
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714708943; cv=none; b=U7Ggy88ljwSxYGYxSYx5O7uldKddj+F1xnC8XlG3CNTJFBxIrJw/J6wGf40pwMmL8i09hDmIDwZXLaEf9X3lPmKU3jlAiXF/fQtpkg8CEuymJ8aT+dLCv3oRIEdsWJQZPST3o2SaQiYKfdDgm+6Ubq3PYUymDxa/SUE51Z8G5Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714708943; c=relaxed/simple;
	bh=A0AegGTxtedCkcWPOOiiUryY0jzHB4qtFlaqCQjdaXk=;
	h=To:Subject:From:Message-Id:Date; b=Cz08ViyzXbQmFtg2CJI6Gtx7Pt+/KlaZ7LNbPhRWsxFiT/o0HCVB9/eDetR+o6hrpuHvokm5OhauFKHqinrvfxqj1evx4sO1o7Wd0HrnBztDjF52sYHyJlcL/VlkKiuTWhwCqoqgrFA6xgY0SXkadRLxIOgnVWu/ISFUtWj7Nn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqMUL0ok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqMUL0ok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5731C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714708942;
	bh=A0AegGTxtedCkcWPOOiiUryY0jzHB4qtFlaqCQjdaXk=;
	h=To:Subject:From:Date:From;
	b=rqMUL0okeY72zx3LPTdWauC5dfS9qjxa+Va9dmzz+ArFinCMi7UvHali4H47xF8Ab
	 2RbX7wIpBg2rdANZFyOt5FxM+ac+ucjQVtucA1sexJH7GYaYNRi++2xDdH+Ak0y2vm
	 c6JJgODo+1+e//D+foHbIIf1kNuBLgZbTBBhf89aFRDobGXzZrjTUe48oJ/pffIrOj
	 +1jilQ7eTfUN9g9U4g1oME5JkAe1nBl+OYC5xSExZJ5U/t6Iinvi90mjsRtUxR7gvP
	 THSxN2kY0eCdCnbV16WB+wpokxIm9Rcvd6IFgBt7IbUxzux/Oiaw1lg2t7NurXbRZM
	 W/Vijv/kHOPiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE943C10F16
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171470894275.9512.7194591373478609582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d3e23b73e3c3a1d01a27e0da73eb5ab77de4158beb0683cec4ca4b9b7f2fc1
Date: Fri, 03 May 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714708942
