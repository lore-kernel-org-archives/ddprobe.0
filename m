Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B5127B340
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791508834; cv=none; b=qpgyTO7ZYPjAHl6QO5xIjE5QWM3CMDgbSkKP/kk3NyGJAr6ITdp4irJeZo4+WAB8BaegDNMezTTCFPtNOhgQKoMlp61ikfYgJFmeG19tqSOLFMz3O49P3yg1jZCnkY5PuUQf2h/hOoCrD7YEN1HkA+WHsp9YnCslIsQcfhd/qEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791508834; c=relaxed/simple;
	bh=BpcYcIfHJBnCl8zSVacnM01BdjX5dTJz8E6bOS9EXGg=;
	h=To:Subject:From:Message-Id:Date; b=KpD9DLFoKs83Muf3+EvZZw756fj64mSrzVTayqqxl8JBKlMF2h9SDqi9V/4uZjYxLwzpFUkuoEvW1KFaC/Mvofzqv339PxxGmMK8jpMxGI85AdzuT+0uZ1Q0o8QHA77T3Oom/gDto0t4mzg0tdv5N/rpYdT+vf9WfV5hUQBenms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHWcQdKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHWcQdKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54FFC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791508833;
	bh=BpcYcIfHJBnCl8zSVacnM01BdjX5dTJz8E6bOS9EXGg=;
	h=To:Subject:From:Date:From;
	b=OHWcQdKTVw+7yzXyMUGqQRES4Sg7xaZEqywxKcLssWHaAXM/REkIeQR7/saaNRtLt
	 ppoptpqg76VfojF2yFPspqoma4PSnQjGLCaEW+N/govXr6jikzXs7Nec+8iIASIjIF
	 n43+T9Iwg0raUNOBJDxfmBQuRtSi7gUIsuEwIzxpAGt88gsJL6pXbKHKTRMELT/1gk
	 puVfm9SOw93gNfr+gE86rnRBxZfOYf+lwiQzAuqbbO12RVOT7gtS9XSvTm47piBAHr
	 JwZmUeCohGv0vc7npLsgbq+S9h46i5bNrSQEoQCwLi3aF5UAWo8rxOciiPDYfjXXDJ
	 A9AcIiaKBTPXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43BCA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150883368.20805.11010990660591810167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204aa2cb48c6dc78a7c784f2ed27855cf303dfe35261f7c31ba87f92268d4b50
Date: Fri, 09 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791508833
