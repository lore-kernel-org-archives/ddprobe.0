Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDAD221F0C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785117634; cv=none; b=UNODaLPZl8PhFMJdGx3l9XcyXWAb6e9anrDELiPH14sIN46lwubDkcr/OPPJOOgHwFZ4AO2BzTuQfBdmB06N7lVLcxAdD/fFjuR9Q4fWddxiXPE0PKS3RO8XhOtNVgTlPKzcS1uq5ijg4uuNUALi0ikO+cGoFltZ0aKLWodcJUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785117634; c=relaxed/simple;
	bh=q2UayCvAmO+EeIkROOvij0S3ux90MO1Fnh+icz/rzDk=;
	h=To:Subject:From:Message-Id:Date; b=MAmvwzwzbCTcPZIzNdibLR88SRRs5DNz4WIkGdrMmbVZDt4h7uRjUFs1jgFaaKQMaaK3ZexfJ1C+o7PtuJcmaCobDOOMMIfPGV0V/rwz9lD9adO9u6f/v2Xa9Ybmp9dzhv71XOg0ugckeheJNWELZ+w1ayid/hRzMuj3SUb6C0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sip+FAi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sip+FAi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26FDC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785117633;
	bh=q2UayCvAmO+EeIkROOvij0S3ux90MO1Fnh+icz/rzDk=;
	h=To:Subject:From:Date:From;
	b=sip+FAi8bhsorV5G13J4JAPKl7fV6pi/ypZo6238K3gDFnpAumH2lnusE3RmODdOv
	 Z3SgeEsWUpHmHZ9HQnzVIRvdDXi9Sx8mD7Rzj0osOU7It0R55rLoN1ZZI552RcqReh
	 1cz43CICP5NKaGDa0Zmit+iDfHFeRD0euyAaFhMfkGJiW5tya77Gwkp9dVIslklYCH
	 YDEIu+4mxx/5Zd3dfi3ypLXxKCDsde9d8dq3BqN2peNRMhQDOk7+F1geJUcM/HNfXr
	 07zODlshw+vWT2ex9D2V2tccXZjr693wA54omjTZkCDc6uw1xbmF0wK8WJQfX1RIU9
	 hHlaBPx8CVVBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB82C531F9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511763368.7125.15559448817774513088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6cb2e44ab3ff486c1e4875cd27320b88dc5d85e39363eea49ed23af8faae00
Date: Mon, 27 Jul 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785117633
