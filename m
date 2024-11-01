Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECF61487E3
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730479554; cv=none; b=PtclUf2H3rMWdmp5ZoHv7FyZ0K20C7VesDNopbgzTQ7J5jGUHm+sBBoFmJx5uzfoEHKi4pkiNiihtqMZKo9Yvbzt1NEFcocsJgCKtR253hsOKi/skmGswLA6BN59wO4N9llgYB4mI+dECxlDLGLCXoKHQrLO3EInEGiA2FcTieg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730479554; c=relaxed/simple;
	bh=7YDQHPVM6tVcSOGI2Hj0tzXaA2Yyzl35B4A4MlIvU6I=;
	h=To:Subject:From:Message-Id:Date; b=sSRzFMlcbdfc1rIIxiF34uwD3iP3pjd8UH7b9JiWzssGA1qrSKQcF+G4ippQxa+wiQalb+y8yPQRkUumuC4/QPSRU32RiIHHsPKQ0dg3w9GALTDklgFZSzl1GV1pxxgQx8Hut1fsshxgp9elLep1cOIXUSVkZQvsy9ToEG7G7r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llwnZ+9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llwnZ+9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A922EC4CED2
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730479553;
	bh=7YDQHPVM6tVcSOGI2Hj0tzXaA2Yyzl35B4A4MlIvU6I=;
	h=To:Subject:From:Date:From;
	b=llwnZ+9oY/yNmi0O16I97OgywkKOVKHcmxx9cfFWm3CjheS1MP9th9en5HbXRgLwn
	 3nOt/q/9YCHWPfwXjGcQr2UZCXBaKc8unFaT5FReMiO6jIga65N1BUU1UZKvn2lofq
	 dz7OYWpK8wwsEmbt4qJOBkuAz2/Tm4Eti7EN+n5fFfLELQAMVbyh5QquQyDBNqfEyN
	 uVDKGFI3++461O9B83D/TTm4jpSgh8LMbmMN7Npn73ViGeTeHH/M2Tn388iDHmNvmm
	 N/KzJ46a3WfPkHGajN7vLEvhCyf9viRFfWLi1u5Lcd+L4Ej7AAr+ZQlBI66ZGRicx4
	 z/cnK2KSUfjBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96218E6F06C
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173047955360.24855.5098836839657343610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befce9f0c16c4a832641c72d033ccac1495f669694bc40545e1069fcb0741d6d
Date: Fri, 01 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730479553
