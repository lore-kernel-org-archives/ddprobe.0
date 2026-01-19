Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1355D284671
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768800834; cv=none; b=nJSMrbk5a6Ibddw5/ArUxv5re9cVjTMfNUQPt2Uejd5yhaoh+tLeQon04QBWFnA4yYGkRFRce/tDpTk665AYBCU55VViz8DDOaZFAd5HtRk7m5NOhHyMZKqe//lLyZRy6K6UAuFcBK4XepFve3K+/Q7h6vAeBe3UC4U0SPJA70g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768800834; c=relaxed/simple;
	bh=k0VJE22zouazaIb/e1qfiZab2FcXkyAgNEQwbAkZ3uc=;
	h=To:Subject:From:Message-Id:Date; b=NTpaJl/Qr73FN4d9A3icnH3LFzcrY6fo/N83Gwo8bWCuK1p1p4cjPdhi82yzK/i29yFe4KkphMP9rJOqx1vjyo3C4WyarCl0RpXCjs4wOxDlsiSnffNL4BOsEK9PrDbowymr/dO4BeW0vm7Cu9ci+A5Xvq7syj5q6iwKWOTiuo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNMtFOYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNMtFOYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D6DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768800833;
	bh=k0VJE22zouazaIb/e1qfiZab2FcXkyAgNEQwbAkZ3uc=;
	h=To:Subject:From:Date:From;
	b=XNMtFOYnV1B7wXZwbnoMhOkV9WpHS6g3VuSAY8+jm/GItmIfWc9AWz9T10Rnsrr2Y
	 acU/qEkw8RENSk1uf00crjYPHFE5/3/LkVX0IL+kPbDo3klWxUet7vDQdZEf1rjxjb
	 Qrqn+grR3va96ktcjEZI75V2QheB3wk12HcerdLZCslmqrIMnccwZX5vmMCsYGYvbG
	 X5GujVGhwKyQ7NDMNonw7ScRNf+OmRUAaw8KTCDtW9wyLpdRvpmzRmE18FkUd9kJq9
	 xGk4KMpoJCLHNw8m6edD5sfcMh3PWSy79Pvxzi3Gpnzz+gRDImC1RXz+BZR/PHK5JO
	 mb0uTtyMvcYGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79AC98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880083357.29516.10588599244103704119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bd5665b63fa16ceb2ee1baa8718d273d33d37bd84cfef351b0975043b8762d
Date: Mon, 19 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768800833
