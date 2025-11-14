Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224B42F656D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763110794; cv=none; b=WEDmcosihogrbDgt8XtSu/sG+rMKWaDQtc5MwY/bhsGH5cm1YtCLKn/A0zqTUCBFKwwnoMoKA8JwqRm0vOnaO6pEU6h6ZeiMM3Kj8Si23AxlQmryjLD5v7gXAg7Rg7VlV2EXUSZr8UndCd26seeMlsp/8gSdpzhHUEtZUubUsLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763110794; c=relaxed/simple;
	bh=YKRCDBV575w2cOdcPpa7pcmLBH6xNUBXQciDYlRbv2I=;
	h=To:Subject:From:Message-Id:Date; b=L8o6q0igRCFmUIE12aaLinZMxB0Ewi0WHKmuO29dgTeoVwNxNXnHN1LjiGeJVVByosuE/nBAoUjiA3eGSLrwINE5ilUx6IISpTuQJNlx9FFB1vwp/HEcSsgEjyHuQXADTu+PYADXNwOnMuNlWwzptk1YNmbhhhf0FnzJ1KD9BwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBb9lqKj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBb9lqKj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1572C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763110793;
	bh=YKRCDBV575w2cOdcPpa7pcmLBH6xNUBXQciDYlRbv2I=;
	h=To:Subject:From:Date:From;
	b=NBb9lqKjtFydxfayVUdkITEms6JcZLArDb/Pr/xmKrREHLn+1R5xKpjQguIjmhwQQ
	 svsm73w3pjXe2BzaJ5C3mEfKd/7Fzj0gc21xiZnLpNGB2tZR5PRXq7wySPfsve5qtV
	 QymvUs0yrV6RqnV7RELh7/I8oPevDl/+vIw143FxJcC3dvRT8A1ydzMw91SShYs5ti
	 CsQg11jPHMn96R/gbfatoLc/iM48Gdzord4s3uOWUhFgHDY9wr/Sbd/18KfrdH52dU
	 /VkItfZtGo6inlX50dvemHTIzEj3tqVxGArpg//oorbrHqGsHJ0Uc7+2BzBfYaYslR
	 QfhcMdlxRDbBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90319CDE032
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311079358.3271.9679180524727128353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef4b16953fd817e0a9e4abea3c6e6afe033dbfaff026d0a655c6e0a1a7112b5
Date: Fri, 14 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763110793
