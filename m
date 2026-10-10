Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB28376BF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791624634; cv=none; b=grtPlGBI9+hXESM8yMlC/60o0ThIYuF+3VE+Kg1DUU+Z/SSRxxCALXBlRuLcUPDQs131BppDgk7wbt9ZaLguZ8LIzCFanPIcf0a25sF5zPniWxBlsdMgIZ4HHeLArVljWehtdHWrsAArgUAJwxlnQBKR4JV72aTog2swDX+u9vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791624634; c=relaxed/simple;
	bh=uK3TjgLdrNAhijvEdQqMNexlv1q3HgkM2YfKwgDdznw=;
	h=To:Subject:From:Message-Id:Date; b=ALow0r5fxvlQ+jjjVWCfQySOOHDxYPc1p8+lzmnZx4XUEaV7TRKl7QxDrD8CvL4ZJKbYHiHDL+uW21+O3OOUKgJtFb29YCj/0iFCUWTZk4hdtoWdiOoWDQmp8YvNdCfGFHE/MsieFvH70V9PC/9eYiybCkitlVbmRWE87A3ILQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZpfRkAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZpfRkAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4658C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791624633;
	bh=uK3TjgLdrNAhijvEdQqMNexlv1q3HgkM2YfKwgDdznw=;
	h=To:Subject:From:Date:From;
	b=eZpfRkAsXYKOYaIFK7KhvUW6UtNkON7mFGahSFKBLB1VAmabnJT4+DeG9xTZG1eqr
	 syg2obA0CACEc+ADS+HHoCqieyHyzKQIzKS9ds9t/UrodC4Fb44iy7ghDy5h3PRhnY
	 CCoDbkBn8zM7+VH6XgfDa3wtMG8NQ+8BJwnUsjIxCgJ/ngJOd9fFzsvrkrCBJ5jQw5
	 /+2VfqLirh/qJR0SuPyIErAhfl31JPWbWQb1r6OkzJ2KA197EdCo1l7QcqNI5kfv+O
	 UdsGMVkvC938Ee5G8azOu8zr7iDcDw7kEDOwWrI4pmhZ/ufHd2Wy+PulT6WP+4ThXG
	 kStjgJVtc7WBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9514CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162463368.16174.1203561077227804874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe6c8e411a6bcdbd17e74b3a14e785a1f6d1ab8dab479dccf638693a7117596
Date: Sat, 10 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791624633
