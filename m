Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432FA3264DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788454834; cv=none; b=YrA5LyPdj0CowZBAX+oSjr1hLoNSpdrmd6Ku74JHAjvHNfGIrOObF3gKa5CV1BPzKD8U59EOUrkNJiRdcTKZmnXI0ifFsgKfWMK/8ln4Ah4Hb4dher4AsA/S3I52ck5xBLGAf5JhoAfz+vZ7Nn8inu9moLyi7U5AGX9rPkVEAXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788454834; c=relaxed/simple;
	bh=ZfutlDeaf42aBMEfbgi19NTB3AU6Mthmzt3StNDGaZA=;
	h=To:Subject:From:Message-Id:Date; b=hvaVUia+kg9WxF57vqMQ24S1YIRaGZPCb2AU8Iuh5T7gnhKUjjM/UO8ODLnNWgaS5yQP+Ehj5C+grjG0zqxa6/+DmTfDMav4ThEk1nUu5zLQ6hUJJqisTDWop0A+YzlSehoakfn9Ug4kAtHiBMpdyE1eDLc2uqoXT8CyZ/iMXOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtaYcdG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtaYcdG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CCFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788454833;
	bh=ZfutlDeaf42aBMEfbgi19NTB3AU6Mthmzt3StNDGaZA=;
	h=To:Subject:From:Date:From;
	b=YtaYcdG16uGQ17dD0WDsLtIGhzy6tLQzUHoLKoOQ1pMN9FsHtc9r8pI4IMSqBgKWv
	 L9v8w8iNOd4ManH8NfMSpCa7L41GLr0PLGT5sUlT2Uy9ZIjj8P4Ug+4in+4eFipnOK
	 fp7Y48e/sp+ahbqi/Nsv1eZMPL9QxepeFGVTQyXaaHtnG49IoUkLCf6q6hH8sHrKuG
	 F7GyxHbEttAUmAhtgJmIuCyJHxwbqjU71862GJz+vejWtIuAGkkDCLYUKk86jMzoia
	 iBXWU+aeHdyenEROXZ5shKK0udc38HfN8CKeGP3pdY7MVDB8sdzdCoaxYjmvVvpDeJ
	 VyjpZ0ZjvK16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF20AC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845483370.14280.426143045469453847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228a98cea3f57e9f4718d9f23cc95cb95cb25c6481a6f7a0297c4d7787cc81c4
Date: Thu, 03 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788454833
