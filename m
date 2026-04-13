Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFA831D371
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776109054; cv=none; b=N3zu1CgzrCuSwSzbWgaYFNIqrjz9Q8MzTR43YwlyWAqRcfcwOUAdTVrCVYz6gbACIrPoDvZ8TJLy00OhPscSHM6PidDCC8QwhgzhXZKoUIle3QoKth0+4MWou5bH+OA4c/mNZZ/zrN22cheUd4N3uo6NWhSQKLg2n41dRWIfIK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776109054; c=relaxed/simple;
	bh=uHhl2yQq71uZQUQOff3bNGGGRMA+gTVPH98iW/9Z7pQ=;
	h=To:Subject:From:Message-Id:Date; b=CEEXUdCt0RS7C9ATasHFqVQktK0TFRn28+omCng855swV/ivweWNzMreKPn6wjGAzj5JhKVmGx1BACzqLWshmtV0jgWKUa9v5QG1/IbMHTSIV/sPOdTyOHBPVhDR2DY5jAa1vGEuu/moRkjQtt0sC/AnYeplqwrhPRH/ibCMMQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZ2B47jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZ2B47jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA198C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776109053;
	bh=uHhl2yQq71uZQUQOff3bNGGGRMA+gTVPH98iW/9Z7pQ=;
	h=To:Subject:From:Date:From;
	b=WZ2B47jb2mxOyFIOChywg857Hg/PE+XMYYz+n7hsZqbXoiMtd+Zw9zI/n+aN5vKFQ
	 jeg6ZAUmirnaH6tmBQnY+rPhLTZOe4d72/aTg1LZ8EtUgKp5J5T0q7gvhlzMIGXRBS
	 SgRYxV1itssgYmrctby85GDEotHIM2OV1opCIjJc6cm5IIhFnpO5eQv0u3t8Hiphjb
	 OWLaL0caZBznWhUEGT526NOPBoWmnXKgt8iesE+aCw+DYjciRbo2F90pOK43gbivOk
	 7PN1xsI6cRqVX6P9pk/lJE4qt/DpHjn+qi1+UwjSDpo7awhybfxIIRrkxOTs+HL1oI
	 7t8wJzDTF0atQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE88F531CB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610905369.15677.10358313213042741813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b7bb597577e079d5c7b657c5a114ad16b08bda404f29c065e590ccd54d8a79
Date: Mon, 13 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776109053
