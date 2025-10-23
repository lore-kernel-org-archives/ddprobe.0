Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46242376FC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761243593; cv=none; b=cRTrjp2YPEdwE/Si1PuC1pNjRgP+MtfT00NEo1MXRSgs1UN46JT7xJt92X6o/KC5tGTCv47CG+rFsM2xCbkF5NlnYfkSqmYUJU3cGWVk1jf8GE5YhHjbW7vxIsptA/HykK5qx+0QJ+RsB7RopnGzi6WAmSi+8nQ1y0X7LHstlC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761243593; c=relaxed/simple;
	bh=cTedZ4fWr0ESOuUt1Q1Jskn4zgGDz9gF/oTA6nJrbWc=;
	h=To:Subject:From:Message-Id:Date; b=iB1RIrySlaNjPOGpV/V++Nfhgk7OJ1rkhQwOfFLsgSk79EI3Pd5kpLlLRydq6Fe58bBa+0vkptpNfvGz6Cy/5SSmke6PXv2Y/TuViRuxEsPBhumwFtB8uIi2vBYycQMsklFMTqQIfsm2G0Dou6HPywbbiV7cfGOKNC2a2ajf8jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fz2SERhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fz2SERhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC6CC4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761243593;
	bh=cTedZ4fWr0ESOuUt1Q1Jskn4zgGDz9gF/oTA6nJrbWc=;
	h=To:Subject:From:Date:From;
	b=fz2SERhSsLvCVkUQwztxJQ5+IangCbpUSzsMnf6Rbce7FqD+ScfrwBhVyvL0uLuT/
	 vrA38jTb4XUcuBBhQSn8o5s9jWH5P1xWb/Hd5hTRRuQ+HSqh2GC3J13bhtUolzMPwL
	 SNNWnINWwHmaGQ0iN+pFudBEAdaXQuzK7hLZNXsgwsr90omj5OGkNARQienLHmuyqC
	 oydxpQCyWC0Ye6T9/ZSdUTBGnaXptW/Jpxm+f8FdPKj9IudB7EfMVrhjoyI8zsNdGi
	 grdIgayF8DxAqyqkDyOa43GQ6i7DJFV8f7GPn1T4icid+WZCIZpMbmJyVOhPx6lZJx
	 Fbs+I1tzeNnyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93267CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124359358.3003.18263155913802901497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961517e15972d83e9f2bf5bb3877e315cdd108c3fe024911319bb96271f2970f
Date: Thu, 23 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761243593
