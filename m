Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1319E287265
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766458434; cv=none; b=jR/6pzFwsEXkUeB08/ny/vI+vnl3dwvblVLAEn0M8pFe9bey5/gqc1NZmMgjnSP5zy00jZ+fOOzDIqm7qiBi2fPz57UsHz+f4hquQNanKz9wp2sbFfUfw07R2MiO2S3qBlIntd3C+YY/AD/gkzp/uq/9CCO33dHi3/OM0PxGXaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766458434; c=relaxed/simple;
	bh=aqodIVOk0fTX4VoXor4/8oPyCspf09SD6SKBd9GQ0rI=;
	h=To:Subject:From:Message-Id:Date; b=QaDY2/eaPsflAwerOl0QVxdQz0PYewBk0y5EiRclChOxFeFho0Y7EasJ7Lc8IzC0+C7ccAgmhZfSaX49S4NCd94WFhpEujFyL3LAfKwyAZW2MXDMVvSff17aOHn6fhExHTmAFxxOKFGNz8xIjStRSmRZzwxMtkoW4CvpYTZ+0PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iISZD2nJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iISZD2nJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1188C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766458433;
	bh=aqodIVOk0fTX4VoXor4/8oPyCspf09SD6SKBd9GQ0rI=;
	h=To:Subject:From:Date:From;
	b=iISZD2nJEmIoSP0zyQVAS5vjPo9L3WVyyuwEsCkgB7uubcfWfAvi3g8THh7GEtBcc
	 +6Rg44SHxUVPO95Ay+7PV6GKoiPJHJFt9npd8oiKK66VtdXpl4/gS/BROK9HHOYOni
	 F9qop4D0s6Opi2NmiyAW93DSWll3+zM2JaqGllvugegHbErvCq8YljEElcy06aK0hW
	 w4M+HTUpAjbh9HLL4OZbm9vQ/s4scjFQrhMHmtFI39B7b5r4T6deKIdZpU8bMNMkSi
	 LU1JDwAmvqKkCdyYn8SmjYO+MvRbyerazjlB4QeutO/IT5o7zByHvYM8fQGX/GKZE8
	 LdKdD3OgryR+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C99E6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645843357.32293.8175510366646295528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc724d0e493fe43ba0b85a3c226990406fff2687101bfa9041f1fc4ff1525fae
Date: Tue, 23 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766458433
