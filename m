Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B82A3570A0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770369234; cv=none; b=BW6H85WWToCP4KMfil/STfONznAv16Bw3zAmZ0MIPNrp5R7OkKoME1a6CiuSTbF7DtegpdyAOJKczGTjP/uMaptxK91/xTdEOXhmBBExORflIJc1tkLGNSN2Ck4PSxpcccyYBCFbNVi3MKA15hY9OUE0tyMDxtmToYwgYMYxq+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770369234; c=relaxed/simple;
	bh=43v953YLhyhsYT2W0sm95Hz0MdPxkQhQrsuddXHtkhU=;
	h=To:Subject:From:Message-Id:Date; b=oaQuEQ2Q6pUueM4sP/Jbsix/Ss92lIrKeExIAjLYdoHPwi//owz8Kb2IbCH7z7PNqD1gIOmlEYsC+5EARbvXz7NCcPIkNLrUU5cWX2GgDKLV9lDzL6qnxDNetQADYxWfXBZoMfzIJg1YMOQnjfZjPYqLaLaO5CCuYON3orDG1KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tN17LhG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tN17LhG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7740C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770369233;
	bh=43v953YLhyhsYT2W0sm95Hz0MdPxkQhQrsuddXHtkhU=;
	h=To:Subject:From:Date:From;
	b=tN17LhG9sxCh2+NfZb76/Fq4qivw07k5wz0gxGcXuBmHvMW2cqHZ34201tDJ1FKJq
	 GXW6kp3e/x6rrlOc2HBdNuUYcqnR1dET4n60sqHCLzPd/96ceV/OaMr8ZrRJtNxfqK
	 /KoCLQDsHx379d4n/bdtY2uDphFoENfPt1gwkF6VCoJ+jbiq3n7/yyWiYgP0/XLqO7
	 kkgPCt1DqfGn84bCbSXjnSkx9THv7AwbYvTxwccPdDK3x8MjlW4+MnCVj7168X4tDS
	 jmaW/L9EARk1FQZn5JCuXiqbfHSdxSbAMQDhWpbFc6ZxUeZq5kiCpAOskAYQdp6w/k
	 dL/f01RlCIaCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96957EB28FA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036923360.4632.12682743544480275301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68703e62d2d18517b82d988f7f12ef20311c465c6f403fe1b3c52efce253fbb
Date: Fri, 06 Feb 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770369233
