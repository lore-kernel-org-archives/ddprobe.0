Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D28A18D658
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770986694; cv=none; b=SA6fw6DZOEW4AfCmLcRkzYA0lqJ3ABhYlEpVl2MO8JmD/eodnbbKNx481iA74wHmfULu6aKZoRT+05w2AHotvIda6JN8x5CIDBKyanVryQzLFwVJcqDst3FKOottggabuD4z2VHRbXg/QObE8oBvYey0s+wGB2tuj+OMMgxHZR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770986694; c=relaxed/simple;
	bh=HoHFPHM/xCv+iUNQxJ9mtfmpd8M9fvbmZNbXJhu/lSY=;
	h=To:Subject:From:Message-Id:Date; b=WTPuVgKJ8q0nCRD8Hh6vCEmgNHpt8U/enC0UGNR4tuWI7OcGzH61fpQwYiZgh/eFAgWYVHxRtp6+zUyLFQuNPAmogyeJv9lzhYLoWyMEdOEllUfzBgpXrzYFfr6nw5zMHJaxhq4xQvHw2xXcF2Uzifzs10FeM+5qb62rhL8PS0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r51FK/kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r51FK/kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA6EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770986693;
	bh=HoHFPHM/xCv+iUNQxJ9mtfmpd8M9fvbmZNbXJhu/lSY=;
	h=To:Subject:From:Date:From;
	b=r51FK/kx1xJnZR4M+gihVTzPZoNlyc/3RhU7NA+eVWbv4by46CK25FxsyjEOVMjd3
	 ECnPD8LAQwO1KEn9TbAnfflKderA2ezE47UTG5Sguda24LzLC+e48JEjSnO+GsEHba
	 SdNcMLMrvftBF52H/jrvKjmXX2OePkJ85qw1DSmm8w7xIbPKTfBOU77KVTNNJGuOM2
	 IaIzRJb2q9yPFHaMakXJO2FZPKD8U83b2lBEAPR9uEcaKJf2wYUkOuGp3ifmm14FDd
	 2R/sybltrEF5kKseWYfSgE13DYW6aH34kN8rhoU05gZa8khgsnUL0dFmaFnwwz5ZrM
	 bReXbO7hLAu1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D1EDF158
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098669359.11320.114018286457437099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fd2188f1907d6c477b57fac0ec358444190c9d93938d60921a8d51fb402f38
Date: Fri, 13 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770986693
