Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3010B36C5BE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770635634; cv=none; b=iIWUTMidwAKegKAMm4bnk/717qPHf82z4RLZrwpYLnrtaqReyzQVSrmh20eOChKbk+o5gbh7pD5/Hb9whLNELowoHXFG0clOJ2AvrU+mmxdHG25/OVGWXfA9WdTOO5QPBLPNcp3fZP3F2F/3LV2GWWyJXh3OiDTHm0IlYn3+V14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770635634; c=relaxed/simple;
	bh=oF9E8boz7Yc0BVTOtPCOLRURYordL0RshK8HV39yulI=;
	h=To:Subject:From:Message-Id:Date; b=nEj5dhoDk6Dt1YyWLMLBVHe7hfh2HoFYDKinxb8nRE6L54xlVvsBYFhvdIzDugSeZJpnY6n9Sw0mByOcacW2PTzHzjOVp2orojG63UoXcQRBHjZeB1mW3H8+snSCRocxclPO1xLwfoYBrPSv4ukHeqhp+uy9c6VNn3SkO1swtlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aj2Ule2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aj2Ule2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C034FC16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770635633;
	bh=oF9E8boz7Yc0BVTOtPCOLRURYordL0RshK8HV39yulI=;
	h=To:Subject:From:Date:From;
	b=aj2Ule2AEc133X3ux+SwgDnR1X3zyPC4r65IefMbkvTTni6x5vgse+VIGRVWSg/cr
	 q8jBEJ+XjInR8MmE0wX0gLcEQEQCOkyl2gT3KB91IDWv/+rYmrQgz8tPBdX480CIn7
	 WjJO/BBJN5Z1ihTu7dUuNltjIG+TRqkTgLJZGEIr88MxfZWu3WBInhGkBr/2b9U4+x
	 w0P6Yg+jQkGcy66Ng8flB+E9SXF18C5P1q5G8XfK15qjqO2ZaMUGaes/32ySmrCwth
	 rV74BDYj5e85i6C+9NcCweolefQRiXO3KUE7Yuc9t4Rad8DtHmFRfE/nWF5odBiuDW
	 nkwg4idIDKysA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA51E7E0CA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063563368.8304.6297644484390343587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a2448f3388454c366786f6a07e2559a2397e733118a9dcfe11fd897fdcf73e6
Date: Mon, 09 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770635633
