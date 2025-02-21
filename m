Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE52066FC
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740181734; cv=none; b=iENEboViVrRRsDO7UQkTR8l4hUGrU+frcF/sATIsAadvv5iuMegfOjNO1VRvLUPVN6Waae2ilKQTmpQauTNxB7QFWqy+j3EpAXgXbQD/3x4p1dTlxHwjF8+eF7Fr7GXQeZDhX/sd1Al0a+9XKAtMb/UuP4YIpAMbFliS09xyPN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740181734; c=relaxed/simple;
	bh=MwyA8VktRmW4NK068t06c0Ej+3o1DuWptbaONfr25Fw=;
	h=To:Subject:From:Message-Id:Date; b=CRXqYHA6UFtC/gWeoClm9BqpriKQARHFW7rIKMsajvUGI8cAr7AfEvvRft9OZfJcJYsWLuqCmXoO9dtHzhX3C+pX4Jn5nkk5pmE2OFIlgfeT2D5ek9RlcH09U3sodTCOLPFl95v64ChWiBd5B9i9nEGFQZUPMDYoScpCenEzf8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZYA5cdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZYA5cdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0421C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740181733;
	bh=MwyA8VktRmW4NK068t06c0Ej+3o1DuWptbaONfr25Fw=;
	h=To:Subject:From:Date:From;
	b=UZYA5cdQ6Cz9nBirEINQz7wjnWefsyJnnKPOynezBFpwJbKAtNmF9gc0frcw+Ovq9
	 bkQOhBYOs7uEgt3TFEXuSCW8pYjbU41SHnnDMnioCuH8xzucbAPlHnOWQigSVpl8pc
	 n0L9HGxEfqB897YuFrLeGPfwDbpMnKclJjlpwWyFcwAD5fTOAXQArp/nM+5a4S1sRu
	 fnzII7EFxKTh9K+hCOLB77eN4MlDXnmUKkRRRo7pHr+gO8CzlpjuhALb4Drbusxptw
	 vqnQMvnI//fGn4DwSydjA2i2dc2jBqRje3S4s2sfjIgrf8C32TaOlokM1Np30PbcxC
	 jHjrQMBPjFLJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9191CC021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174018173358.9066.10114110315658711581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df56dad93d9d7d4803da25cb0be72837867ab205d371897fef5ec042037c7507
Date: Fri, 21 Feb 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740181733
