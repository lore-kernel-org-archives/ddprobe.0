Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151BA275B1A
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771298094; cv=none; b=AV5gPKaIu12wRR1j/A4aAyGG38ictEROvLx/lJhpKPnHSuhJe/wc/NevI3BWh7EBAyp3DxLxo5uq4Fio/BqjDy7fM8Igqxc5C//mXGyrjI9BmT2kQA8Mk54jVBtk53dfrFWq1Tn6ntzl+IXXJmIysOm5NLgZ4Di2In0L6BAi60A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771298094; c=relaxed/simple;
	bh=JAM5gUZ0MXs4G0rsl9E1Z8X0H9o6HdbGYrTSC1QOYnI=;
	h=To:Subject:From:Message-Id:Date; b=lsIihi4WpyCLW8x5798Gdk7xQfA0iSwL+tvQ0rWK2cAyTYmwKETSdN0DGQUNbWV34kKitp47rdUfUVQMxMYFGvk/iraf+ylv+ilQhpbz8kA95hKhkgxq8TkeR/zbayoxj3vKDuZg5zmAb2HOyCb3lP5+Gaab+2DOb9EVriFf9k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lybTpgZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lybTpgZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC498C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771298093;
	bh=JAM5gUZ0MXs4G0rsl9E1Z8X0H9o6HdbGYrTSC1QOYnI=;
	h=To:Subject:From:Date:From;
	b=lybTpgZCGN5aKqykD3cc1+4uXjKe6t6ZH5PTByX+Bj0OsldZxTGFsMI43x3/YjIzp
	 a991iBybIezZsP3he5dUZurrULuKDYAztyv5dAq8VS/igbwEK0aDZdACPiD1vtc+1I
	 MVOOrvLbV+dXJEfP5oCvcObUqKq0eiRjT6S8RJJ4ayNbM4P5djKzHDxCPADoS137tX
	 JpUmWVzP0e2Pd7Muf+89KC5r++S2De2/KnfZn5LDskX3j3Pt72UXhg2vyhFHS6Nj+9
	 CRtofXXbdFu/12Q3ytBo4rdoAF7s7OxBE9egtaYTQXoVHnyc17iO1RF2lp+1ZxiMev
	 qrtj7bdj8Cl2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98621E83848
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129809358.4624.11134508940693068917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d8bedea901b0f4a8c86b4f935add7a28695dba2f14bbe11f6a2c0fa5e24615
Date: Tue, 17 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771298093
